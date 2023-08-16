// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Contracts
import { ERC20 } from "solmate/src/tokens/ERC20.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

// Libraries
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SafeTransferLib } from "solmate/src/utils/SafeTransferLib.sol";

// Interfaces
import { IPerpetualAtlanticVault } from "./IPerpetualAtlanticVault.sol";
import { IPerpetualAtlanticVaultLP } from "./IPerpetualAtlanticVaultLP.sol";

/**
 * @title PerpetaulAtlanticVault LP Token
 */
contract PerpetualAtlanticVaultLP is ERC20, IPerpetualAtlanticVaultLP {
  using SafeERC20 for IERC20WithBurn;
  using SafeTransferLib for ERC20;
  using FixedPointMathLib for uint256;

  // ================================ EVENTS ================================ //

  event Deposit(
    address indexed caller,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );

  event Withdraw(
    address indexed caller,
    address indexed receiver,
    address indexed owner,
    uint256 assets,
    uint256 shares
  );

  // ================================ STATE VARIABLES ================================ //

  /// @dev The address of the perpetual Atlantic Vault contract creating the lp token
  IPerpetualAtlanticVault public perpetualAtlanticVault;

  /// @dev The collateral token
  ERC20 public collateral;

  /// @dev The symbol reperesenting the underlying asset of the perpetualatlanticvault lp
  string public underlyingSymbol;

  /// @dev The symbol representing the collateral token of the perpetualatlanticvault lp
  string public collateralSymbol;

  /// @dev Total collateral available
  uint256 private _totalCollateral;

  /// @dev Active collateral
  uint256 private _activeCollateral;

  /// @dev Total rdpx available
  uint256 private _rdpxCollateral;

  /// @dev address of rdpx token
  address public rdpx;

  /// @dev address of the rdpx rdpxV2Core contract
  address public rdpxRdpxV2Core;

  // ================================ CONSTRUCTOR ================================ //

  /**
   * @param _perpetualAtlanticVault The address of the perpetual atlantic vault contract creating the lp token
   * @param _rdpxRdpxV2Core The address of the rdpx rdpxV2Core contract
   * @param _collateral The address of the collateral asset in the perpetualatlanticvault contract
   * @param _collateralSymbol The symbol of the collateral asset token
   * @param _rdpx The address of the rdpx token
   */
  constructor(
    address _perpetualAtlanticVault,
    address _rdpxRdpxV2Core,
    address _collateral,
    address _rdpx,
    string memory _collateralSymbol
  )
    ERC20(
      "PerpetualAtlanticVault LP Token",
      _collateralSymbol,
      ERC20(_collateral).decimals()
    )
  {
    require(
      _perpetualAtlanticVault != address(0) || _rdpx != address(0),
      "ZERO_ADDRESS"
    );
    perpetualAtlanticVault = IPerpetualAtlanticVault(_perpetualAtlanticVault);
    rdpxRdpxV2Core = _rdpxRdpxV2Core;
    collateralSymbol = _collateralSymbol;
    rdpx = _rdpx;
    collateral = ERC20(_collateral);

    symbol = string.concat(_collateralSymbol, "-LP");

    collateral.approve(_perpetualAtlanticVault, type(uint256).max);
    ERC20(rdpx).approve(_perpetualAtlanticVault, type(uint256).max);
  }

  // ================================ PUBLIC FUNCTIONS ================================ //

  /**
   * @notice deposit into ERC4626 token
   * @param assets assets
   * @param receiver receiver
   * @return shares shares of LP tokens minted
   */
  function deposit(
    uint256 assets,
    address receiver
  ) public virtual returns (uint256 shares) {
    // Check for rounding error since we round down in previewDeposit.
    require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");

    perpetualAtlanticVault.updateFunding();

    // Need to transfer before minting or ERC777s could reenter.
    collateral.transferFrom(msg.sender, address(this), assets);

    _mint(receiver, shares);

    _totalCollateral += assets;

    emit Deposit(msg.sender, receiver, assets, shares);
  }

  /**
   * @notice redeem ERC4626 token
   * @param shares shares
   * @param receiver receiver
   * @param owner owner
   * @return assets native tokens to be received
   * @return rdpxAmount rdpx tokens to be received
   */
  function redeem(
    uint256 shares,
    address receiver,
    address owner
  ) public returns (uint256 assets, uint256 rdpxAmount) {
    perpetualAtlanticVault.updateFunding();

    if (msg.sender != owner) {
      uint256 allowed = allowance[owner][msg.sender]; // Saves gas for limited approvals.

      if (allowed != type(uint256).max) {
        allowance[owner][msg.sender] = allowed - shares;
      }
    }
    (assets, rdpxAmount) = redeemPreview(shares);

    // Check for rounding error since we round down in previewRedeem.
    require(assets != 0, "ZERO_ASSETS");

    _rdpxCollateral -= rdpxAmount;

    beforeWithdraw(assets, shares);

    _burn(owner, shares);

    collateral.transfer(receiver, assets);

    IERC20WithBurn(rdpx).safeTransfer(receiver, rdpxAmount);

    emit Withdraw(msg.sender, receiver, owner, assets, shares);
  }

  // ================================ PERP VAULT FUNCTIONS ================================ //

  /// @inheritdoc	IPerpetualAtlanticVaultLP
  function lockCollateral(uint256 amount) public onlyPerpVault {
    _activeCollateral += amount;
  }

  /// @inheritdoc	IPerpetualAtlanticVaultLP
  function unlockLiquidity(uint256 amount) public onlyPerpVault {
    _activeCollateral -= amount;
  }

  /// @inheritdoc	IPerpetualAtlanticVaultLP
  function addProceeds(uint256 proceeds) public onlyPerpVault {
    require(
      collateral.balanceOf(address(this)) >= _totalCollateral + proceeds,
      "Not enough collateral token was sent"
    );
    _totalCollateral += proceeds;
  }

  /// @inheritdoc	IPerpetualAtlanticVaultLP
  function subtractLoss(uint256 loss) public onlyPerpVault {
    require(
      collateral.balanceOf(address(this)) == _totalCollateral - loss,
      "Not enough collateral was sent out"
    );
    _totalCollateral -= loss;
  }

  /// @inheritdoc	IPerpetualAtlanticVaultLP
  function addRdpx(uint256 amount) public onlyPerpVault {
    require(
      IERC20WithBurn(rdpx).balanceOf(address(this)) >= _rdpxCollateral + amount,
      "Not enough rdpx token was sent"
    );
    _rdpxCollateral += amount;
  }

  // ================================ INTERNAL FUNCTUONS ================================ //

  function _convertToAssets(
    uint256 shares
  ) internal view virtual returns (uint256 assets, uint256 rdpxAmount) {
    uint256 supply = totalSupply;
    return
      (supply == 0)
        ? (shares, 0)
        : (
          shares.mulDivDown(totalCollateral(), supply),
          shares.mulDivDown(_rdpxCollateral, supply)
        );
  }

  function _beforeTokenTransfer(
    address from,
    address,
    uint256
  ) internal virtual {}

  // ================================ VIEWS ================================ //

  /// @notice Returns the total active collateral
  function activeCollateral() public view returns (uint256) {
    return _activeCollateral;
  }

  /// @notice Returns the total collateral
  function totalCollateral() public view returns (uint256) {
    return _totalCollateral;
  }

  /// @notice Returns the total rdpx collateral
  function rdpxCollateral() public view returns (uint256) {
    return _rdpxCollateral;
  }

  /// @notice Returns the total available collateral
  function totalAvailableCollateral() public view returns (uint256) {
    return _totalCollateral - _activeCollateral;
  }

  // ================================ PUBLIC VIEW FUNCTIONS ================================ //

  /// @notice Returns the amount of collateral and rdpx per share
  function redeemPreview(
    uint256 shares
  ) public view returns (uint256, uint256) {
    return _convertToAssets(shares);
  }

  /// @notice Returns the amount of shares recieved for a given amount of assets
  function previewDeposit(uint256 assets) public view returns (uint256) {
    return convertToShares(assets);
  }

  /// @notice Returns the amount of shares recieved for a given amount of assets
  function convertToShares(
    uint256 assets
  ) public view returns (uint256 shares) {
    uint256 supply = totalSupply;
    uint256 rdpxPriceInAlphaToken = perpetualAtlanticVault.getUnderlyingPrice();

    uint256 totalVaultCollateral = totalCollateral() +
      ((_rdpxCollateral * rdpxPriceInAlphaToken) / 1e8);
    return
      supply == 0 ? assets : assets.mulDivDown(supply, totalVaultCollateral);
  }

  function beforeWithdraw(uint256 assets, uint256 /*shares*/) internal {
    require(
      assets <= totalAvailableCollateral(),
      "Not enough available assets to satisfy withdrawal"
    );
    _totalCollateral -= assets;
  }

  // ================================ MODIFIERS ================================ //
  modifier onlyPerpVault() {
    require(
      msg.sender == address(perpetualAtlanticVault),
      "Only the perp vault can call this function"
    );
    _;
  }
}
