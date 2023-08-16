// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { TransferHelper } from "../libraries/TransferHelper.sol";
import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

// Uniswamp V3
import "../uniswap_V3/IUniswapV3Factory.sol";
import "../uniswap_V3/libraries/TickMath.sol";
import "../uniswap_V3/libraries/LiquidityAmounts.sol";
import "../uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";
import "../uniswap_V3/IUniswapV3Pool.sol";
import "../uniswap_V3/ISwapRouter.sol";

// Interfaces
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

abstract contract OracleLike {
  function read() external view virtual returns (uint);

  function uniswapPool() external view virtual returns (address);
}

contract UniV3LiquidityAMO is AccessControl, ERC721Holder {
  using SafeMath for uint256;
  using SafeERC20 for IERC20WithBurn;

  /* ========== STATE VARIABLES ========== */

  // Uniswap v3
  IUniswapV3Factory public univ3_factory;
  INonfungiblePositionManager public univ3_positions;
  ISwapRouter public univ3_router;

  // Details about the AMO's uniswap positions
  struct Position {
    uint256 token_id;
    address collateral_address;
    uint128 liquidity; // the liquidity of the position
    int24 tickLower; // the tick range of the position
    int24 tickUpper;
    uint24 fee_tier;
  }

  // Add liquidity param
  struct AddLiquidityParams {
    address _tokenA;
    address _tokenB;
    int24 _tickLower;
    int24 _tickUpper;
    uint24 _fee;
    uint256 _amount0Desired;
    uint256 _amount1Desired;
    uint256 _amount0Min;
    uint256 _amount1Min;
  }

  // Array of all Uni v3 NFT positions held by the AMO
  Position[] public positions_array;

  // Map token_id to Position
  mapping(uint256 => Position) public positions_mapping;

  // Rdpx address
  address public rdpx;

  // RdpxV2Core address
  address public rdpxV2Core;

  /* ========== CONSTRUCTOR ========== */

  constructor(address _rdpx, address _rdpxV2Core) {
    rdpx = _rdpx;
    rdpxV2Core = _rdpxV2Core;

    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

    univ3_factory = IUniswapV3Factory(
      0x1F98431c8aD98523631AE4a59f267346ea31F984
    );
    univ3_positions = INonfungiblePositionManager(
      0xC36442b4a4522E871399CD717aBDD847Ab11FE88
    );
    univ3_router = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
  }

  /* ========== VIEWS ========== */

  // Returns this contract's liquidity in a specific [Rdpx]-[collateral] uni v3 pool
  function liquidityInPool(
    address _collateral_address,
    int24 _tickLower,
    int24 _tickUpper,
    uint24 _fee
  ) public view returns (uint128) {
    IUniswapV3Pool get_pool = IUniswapV3Pool(
      univ3_factory.getPool(address(rdpx), _collateral_address, _fee)
    );

    // goes into the pool's positions mapping, and grabs this address's liquidity
    (uint128 liquidity, , , , ) = get_pool.positions(
      keccak256(abi.encodePacked(address(this), _tickLower, _tickUpper))
    );
    return liquidity;
  }

  // Only counts non-withdrawn positions
  function numPositions() public view returns (uint256) {
    return positions_array.length;
  }

  /* ========== RESTRICTED FUNCTIONS, BUT CUSTODIAN CAN CALL ========== */

  // Iterate through all positions and collect fees accumulated
  function collectFees() external onlyRole(DEFAULT_ADMIN_ROLE) {
    for (uint i = 0; i < positions_array.length; i++) {
      Position memory current_position = positions_array[i];
      INonfungiblePositionManager.CollectParams
        memory collect_params = INonfungiblePositionManager.CollectParams(
          current_position.token_id,
          rdpxV2Core,
          type(uint128).max,
          type(uint128).max
        );

      // Send to custodian address
      univ3_positions.collect(collect_params);
    }
  }

  /* ---------------------------------------------------- */
  /* ---------------------- Uni v3 ---------------------- */
  /* ---------------------------------------------------- */

  function approveTarget(
    address _target,
    address _token,
    uint256 _amount,
    bool use_safe_approve
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (use_safe_approve) {
      // safeApprove needed for USDT and others for the first approval
      // You need to approve 0 every time beforehand for USDT: it resets
      TransferHelper.safeApprove(_token, _target, _amount);
    } else {
      IERC20WithBurn(_token).approve(_target, _amount);
    }
  }

  // IUniswapV3Pool public current_uni_pool; // only used for mint callback; is set and accessed during execution of addLiquidity()
  function addLiquidity(
    AddLiquidityParams memory params
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    IERC20WithBurn(params._tokenA).transferFrom(
      rdpxV2Core,
      address(this),
      params._amount0Desired
    );
    IERC20WithBurn(params._tokenB).transferFrom(
      rdpxV2Core,
      address(this),
      params._amount1Desired
    );

    IERC20WithBurn(params._tokenA).approve(
      address(univ3_positions),
      params._amount0Desired
    );
    IERC20WithBurn(params._tokenB).approve(
      address(univ3_positions),
      params._amount1Desired
    );

    INonfungiblePositionManager.MintParams
      memory mintParams = INonfungiblePositionManager.MintParams(
        params._tokenA,
        params._tokenB,
        params._fee,
        params._tickLower,
        params._tickUpper,
        params._amount0Desired,
        params._amount1Desired,
        params._amount0Min,
        params._amount1Min,
        address(this),
        type(uint256).max
      );

    (uint256 tokenId, uint128 amountLiquidity, , ) = univ3_positions.mint(
      mintParams
    );

    Position memory pos = Position(
      tokenId,
      params._tokenA == address(rdpx) ? params._tokenB : params._tokenA,
      amountLiquidity,
      params._tickLower,
      params._tickUpper,
      params._fee
    );

    positions_array.push(pos);
    positions_mapping[tokenId] = pos;

    // send tokens to rdpxV2Core
    _sendTokensToRdpxV2Core(params._tokenA, params._tokenB);
  }

  function removeLiquidity(
    uint256 positionIndex,
    uint256 minAmount0,
    uint256 minAmount1
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    Position memory pos = positions_array[positionIndex];
    INonfungiblePositionManager.CollectParams
      memory collect_params = INonfungiblePositionManager.CollectParams(
        pos.token_id,
        rdpxV2Core,
        type(uint128).max,
        type(uint128).max
      );

    (
      ,
      ,
      address tokenA,
      address tokenB,
      ,
      ,
      ,
      uint128 liquidity,
      ,
      ,
      ,

    ) = univ3_positions.positions(pos.token_id);

    // remove liquidity
    INonfungiblePositionManager.DecreaseLiquidityParams
      memory decreaseLiquidityParams = INonfungiblePositionManager
        .DecreaseLiquidityParams(
          pos.token_id,
          liquidity,
          minAmount0,
          minAmount1,
          block.timestamp
        );

    univ3_positions.decreaseLiquidity(decreaseLiquidityParams);

    univ3_positions.collect(collect_params);

    univ3_positions.burn(pos.token_id);

    positions_array[positionIndex] = positions_array[
      positions_array.length - 1
    ];
    positions_array.pop();
    delete positions_mapping[pos.token_id];

    // send tokens to rdpxV2Core
    _sendTokensToRdpxV2Core(tokenA, tokenB);

    emit log(positions_array.length);
    emit log(positions_mapping[pos.token_id].token_id);
  }

  // Swap tokenA into tokenB using univ3_router.ExactInputSingle()
  // Uni V3 only
  function swap(
    address _tokenA,
    address _tokenB,
    uint24 _fee_tier,
    uint256 _amountAtoB,
    uint256 _amountOutMinimum,
    uint160 _sqrtPriceLimitX96
  ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {
    // transfer token from rdpx v2 core
    IERC20WithBurn(_tokenA).transferFrom(
      rdpxV2Core,
      address(this),
      _amountAtoB
    );

    ISwapRouter.ExactInputSingleParams memory swap_params = ISwapRouter
      .ExactInputSingleParams(
        _tokenA,
        _tokenB,
        _fee_tier,
        address(this),
        2105300114, // Expiration: a long time from now
        _amountAtoB,
        _amountOutMinimum,
        _sqrtPriceLimitX96
      );

    // Approval
    TransferHelper.safeApprove(_tokenA, address(univ3_router), _amountAtoB);

    uint256 amountOut = univ3_router.exactInputSingle(swap_params);

    _sendTokensToRdpxV2Core(_tokenA, _tokenB);
    return amountOut;
  }

  /* ========== OWNER / GOVERNANCE FUNCTIONS ONLY ========== */
  // Only owner or timelock can call, to limit risk

  function recoverERC20(
    address tokenAddress,
    uint256 tokenAmount
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    // Can only be triggered by owner or governance, not custodian
    // Tokens are sent to the custodian, as a sort of safeguard
    TransferHelper.safeTransfer(tokenAddress, rdpxV2Core, tokenAmount);

    emit RecoveredERC20(tokenAddress, tokenAmount);
  }

  function recoverERC721(
    address tokenAddress,
    uint256 token_id
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    // Only the owner address can ever receive the recovery withdrawal
    // INonfungiblePositionManager inherits IERC721 so the latter does not need to be imported
    INonfungiblePositionManager(tokenAddress).safeTransferFrom(
      address(this),
      rdpxV2Core,
      token_id
    );
    emit RecoveredERC721(tokenAddress, token_id);
  }

  // Generic proxy
  function execute(
    address _to,
    uint256 _value,
    bytes calldata _data
  ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (bool, bytes memory) {
    (bool success, bytes memory result) = _to.call{ value: _value }(_data);
    return (success, result);
  }

  /* ========== INTERNAL ========== */

  /**
   * @dev sends token A and B to the rdpxV2Core
   */
  function _sendTokensToRdpxV2Core(address tokenA, address tokenB) internal {
    uint256 tokenABalance = IERC20WithBurn(tokenA).balanceOf(address(this));
    uint256 tokenBBalance = IERC20WithBurn(tokenB).balanceOf(address(this));
    // transfer token A and B from this contract to the rdpxV2Core
    IERC20WithBurn(tokenA).safeTransfer(rdpxV2Core, tokenABalance);
    IERC20WithBurn(tokenB).safeTransfer(rdpxV2Core, tokenBBalance);

    // sync token balances
    IRdpxV2Core(rdpxV2Core).sync();

    emit LogAssetsTransfered(tokenABalance, tokenBBalance, tokenA, tokenB);
  }

  /* ========== EVENTS ========== */

  event RecoveredERC20(address token, uint256 amount);
  event RecoveredERC721(address token, uint256 id);
  event LogAssetsTransfered(
    uint256 tokenAAmount,
    uint256 tokenBAmount,
    address tokenAAddress,
    address tokenBAddress
  );
  /*
   **  burn tokenAmount from the recipient and send tokens to the receipient
   */
  event log(uint);
}
