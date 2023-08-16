//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Contracts
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Interfaces
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";
import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";
import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";
import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";
import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

// Libraries
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title UniswapV2LiquidityAmo contract
/// @author Dopex
/// @notice The uniswap v2 liquidity amo contract
contract UniV2LiquidityAMO is AccessControl {
  using SafeERC20 for IERC20WithBurn;
  using SafeMath for uint256;

  // ================================ STATE VARIABLES ================================ //
  struct Addresses {
    // token A address
    address tokenA; // rdpx
    // token B address
    address tokenB; // weth
    // pair address
    address pair;
    // rdpxV2Core address
    address rdpxV2Core;
    // rdpx price oracle
    address rdpxOracle;
    // AMM Factory
    address ammFactory;
    // AMM Router
    address ammRouter;
  }

  /// @notice  addresses of the contracts
  Addresses public addresses;

  /// @notice Precision used for prices, percentages and other calculations
  uint256 public constant DEFAULT_PRECISION = 1e8;

  /// @notice The slippage tolernce in swaps in 1e8 precision
  uint256 public slippageTolerance = 5e5; // 0.5%

  /// @notice LP token Balance
  uint256 public lpTokenBalance;

  // ================================ CONSTRUCTOR ================================ //
  constructor() {
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  // ================================ ADMIN FUNCTIONS ================================ //

  /**
   * @notice Set the addresses of the contracts
   * @dev    Can only be called by admin
   * @param  _tokenA the token A address
   * @param  _tokenB the token B address
   * @param _pair the pair address
   * @param _rdpxV2Core the rdpxV2Core address
   * @param _rdpxOracle the rdpx price oracle
   * @param _ammFactory the AMM Factory
   * @param _ammRouter the AMM Router
   **/
  function setAddresses(
    address _tokenA,
    address _tokenB,
    address _pair,
    address _rdpxV2Core,
    address _rdpxOracle,
    address _ammFactory,
    address _ammRouter
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(
      _tokenA != address(0) &&
        _tokenB != address(0) &&
        _pair != address(0) &&
        _rdpxV2Core != address(0) &&
        _rdpxOracle != address(0) &&
        _ammFactory != address(0) &&
        _ammRouter != address(0),
      "reLPContract: address cannot be 0"
    );
    addresses = Addresses({
      tokenA: _tokenA,
      tokenB: _tokenB,
      pair: _pair,
      rdpxV2Core: _rdpxV2Core,
      rdpxOracle: _rdpxOracle,
      ammFactory: _ammFactory,
      ammRouter: _ammRouter
    });
  }

  /**
   * @notice sets the slippage tolerance
   * @dev    Can only be called by admin
   * @param  _slippageTolerance the slippage tolerance
   */
  function setSlippageTolerance(
    uint256 _slippageTolerance
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(
      _slippageTolerance > 0,
      "reLPContract: slippage tolerance must be greater than 0"
    );
    slippageTolerance = _slippageTolerance;
  }

  /**
   * @notice Approve a contract to spend a certain amount of tokens
   * @dev    Can only be called by admin
   * @param  _token the address of the token to approve
   * @param  _spender the address of the contract to approve
   * @param  _amount the amount to approve
   */
  function approveContractToSpend(
    address _token,
    address _spender,
    uint256 _amount
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(_token != address(0), "reLPContract: token cannot be 0");
    require(_spender != address(0), "reLPContract: spender cannot be 0");
    require(_amount > 0, "reLPContract: amount must be greater than 0");
    IERC20WithBurn(_token).approve(_spender, _amount);
  }

  /**
   * @notice Transfers all funds to msg.sender
   * @dev    Can only be called by the owner
   * @param  tokens The list of erc20 tokens to withdraw
   **/
  function emergencyWithdraw(
    address[] calldata tokens
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    IERC20WithBurn token;

    for (uint256 i = 0; i < tokens.length; i++) {
      token = IERC20WithBurn(tokens[i]);
      token.safeTransfer(msg.sender, token.balanceOf(address(this)));
    }

    emit LogEmergencyWithdraw(msg.sender, tokens);
  }

  // ================================ INTERNAL FUNCTIONS ================================ //

  /**
   * @dev sends token A and B to the rdpxV2Core
   */
  function _sendTokensToRdpxV2Core() internal {
    uint256 tokenABalance = IERC20WithBurn(addresses.tokenA).balanceOf(
      address(this)
    );
    uint256 tokenBBalance = IERC20WithBurn(addresses.tokenB).balanceOf(
      address(this)
    );
    // transfer token A and B from this contract to the rdpxV2Core
    IERC20WithBurn(addresses.tokenA).safeTransfer(
      addresses.rdpxV2Core,
      tokenABalance
    );
    IERC20WithBurn(addresses.tokenB).safeTransfer(
      addresses.rdpxV2Core,
      tokenBBalance
    );

    emit LogAssetsTransfered(msg.sender, tokenABalance, tokenBBalance);
  }

  // ================================ AMO FUNCTIONS ================================ //

  /**
   * @dev adds liquidity to the uni v2 pool
   * @param tokenAAmount the amount of token A to add
   * @param tokenBAmount the amount of token B to add
   * @param tokenAAmountMin the minimum amount of token A to add
   * @param tokenBAmountMin the minimum amount of token B to add
   */
  function addLiquidity(
    uint256 tokenAAmount,
    uint256 tokenBAmount,
    uint256 tokenAAmountMin,
    uint256 tokenBAmountMin
  )
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
    returns (uint256 tokenAUsed, uint256 tokenBUsed, uint256 lpReceived)
  {
    // approve the AMM Router
    IERC20WithBurn(addresses.tokenA).safeApprove(
      addresses.ammRouter,
      tokenAAmount
    );
    IERC20WithBurn(addresses.tokenB).safeApprove(
      addresses.ammRouter,
      tokenBAmount
    );

    // transfer token A and B from the rdpxV2Core to this contract
    IERC20WithBurn(addresses.tokenA).safeTransferFrom(
      addresses.rdpxV2Core,
      address(this),
      tokenAAmount
    );
    IERC20WithBurn(addresses.tokenB).safeTransferFrom(
      addresses.rdpxV2Core,
      address(this),
      tokenBAmount
    );

    // add Liquidity
    (tokenAUsed, tokenBUsed, lpReceived) = IUniswapV2Router(addresses.ammRouter)
      .addLiquidity(
        addresses.tokenA,
        addresses.tokenB,
        tokenAAmount,
        tokenBAmount,
        tokenAAmountMin,
        tokenBAmountMin,
        address(this),
        block.timestamp + 1
      );

    // update LP token Balance
    lpTokenBalance += lpReceived;

    // send unused token A and token B back to rdpxV2Core
    _sendTokensToRdpxV2Core();

    emit LogAddLiquidity(
      msg.sender,
      tokenAAmount,
      tokenBAmount,
      tokenAAmountMin,
      tokenBAmountMin,
      tokenAUsed,
      tokenBUsed,
      lpReceived
    );
  }

  /**
   * @dev removes liquidity from the uni v2 pool
   * @param lpAmount the amount of LP tokens to remove
   * @param tokenAAmountMin the minimum amount of token A to receive
   * @param tokenBAmountMin the minimum amount of token B to receive
   */
  function removeLiquidity(
    uint256 lpAmount,
    uint256 tokenAAmountMin,
    uint256 tokenBAmountMin
  )
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
    returns (uint256 tokenAReceived, uint256 tokenBReceived)
  {
    // approve the AMM Router
    IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);

    // remove liquidity
    (tokenAReceived, tokenBReceived) = IUniswapV2Router(addresses.ammRouter)
      .removeLiquidity(
        addresses.tokenA,
        addresses.tokenB,
        lpAmount,
        tokenAAmountMin,
        tokenBAmountMin,
        address(this),
        block.timestamp + 1
      );

    // update LP token Balance
    lpTokenBalance -= lpAmount;

    // send unused token A and token B back to rdpxV2Core
    _sendTokensToRdpxV2Core();

    emit LogRemoveLiquidity(
      msg.sender,
      lpAmount,
      tokenAAmountMin,
      tokenBAmountMin,
      tokenAReceived,
      tokenBReceived
    );
  }

  /**
   * @dev swaps token 1 for token 2
   * @param token1Amount the amount of token A to swap
   * @param token2AmountOutMin the minimum amount of token B to receive
   * @param swapTokenAForTokenB whether to swap token A for token B
   */
  function swap(
    uint256 token1Amount,
    uint256 token2AmountOutMin,
    bool swapTokenAForTokenB
  ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 token2Amount) {
    address token1;
    address token2;

    // check to see if we are swapping token A for token B
    if (swapTokenAForTokenB) {
      token1 = addresses.tokenA;
      token2 = addresses.tokenB;
    } else {
      token1 = addresses.tokenB;
      token2 = addresses.tokenA;
    }
    // transfer token A from the rdpxV2Core to this contract
    IERC20WithBurn(token1).safeTransferFrom(
      addresses.rdpxV2Core,
      address(this),
      token1Amount
    );

    // approve the AMM Router
    IERC20WithBurn(token1).safeApprove(addresses.ammRouter, token1Amount);

    address[] memory path;
    path = new address[](2);
    path[0] = token1;
    path[1] = token2;

    // swap token A for token B
    token2Amount = IUniswapV2Router(addresses.ammRouter)
      .swapExactTokensForTokens(
        token1Amount,
        token2AmountOutMin,
        path,
        address(this),
        block.timestamp + 1
      )[path.length - 1];

    // send tokens back to rdpxV2Core
    _sendTokensToRdpxV2Core();

    emit LogSwap(
      msg.sender,
      token1Amount,
      token2AmountOutMin,
      swapTokenAForTokenB,
      token2Amount
    );
  }

  // ================================ EXTERNAL FUNCTIONS ================================ //

  /**
   * @notice Syncs asset reserves with contract balances
   **/
  function sync() external {
    lpTokenBalance = IERC20WithBurn(addresses.pair).balanceOf(address(this));
  }

  // ================================ VIEW FUNCTIONS ================================ //
  /**
   * @notice Returns the LP token balance in weth
   * @dev returns LP token balance
   * @return lpTokenBalanceInWeth the LP token balance in weth
   */
  function getLpTokenBalanceInWeth() external view returns (uint256) {
    return (lpTokenBalance * getLpPrice()) / 1e8;
  }

  /**
   * @notice Returns the price of a rDPX/ETH Lp token against the alpha token
   * @dev    Price is in 1e8 Precision
   * @return uint256 LP price
   **/
  function getLpPrice() public view returns (uint256) {
    return IRdpxEthOracle(addresses.rdpxOracle).getLpPriceInEth();
  }

  // ================================ Events FUNCTIONS ================================ //

  event LogAddLiquidity(
    address indexed sender,
    uint256 tokenAAmount,
    uint256 tokenBAmount,
    uint256 tokenAAmountMin,
    uint256 tokenBAmountMin,
    uint256 tokenAUsed,
    uint256 tokenBUsed,
    uint256 lpReceived
  );

  event LogRemoveLiquidity(
    address indexed sender,
    uint256 lpAmount,
    uint256 tokenAAmountMin,
    uint256 tokenBAmountMin,
    uint256 tokenAReceived,
    uint256 tokenBReceived
  );

  event LogSwap(
    address indexed sender,
    uint256 token1Amount,
    uint256 token2AmountOutMin,
    bool swapTokenAForTokenB,
    uint256 token2Amount
  );

  event LogAssetsTransfered(
    address indexed sender,
    uint256 tokenAAmount,
    uint256 tokenBAmount
  );

  event LogEmergencyWithdraw(address sender, address[] tokens);
}
