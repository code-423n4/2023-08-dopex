// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IRdpxV2Core {
  // ================================ STRUCTS ================================ //

  /// @dev Peripheral addresses for the RdpxV2Core contract
  struct Addresses {
    address dopexAMMRouter;
    address dpxEthCurvePool;
    address rdpxDecayingBonds;
    address perpetualAtlanticVault;
    address perpetualAtlanticVaultLP;
    address rdpxReserve;
    address rdpxV2ReceiptToken;
    address feeDistributor;
    address reLPContract;
    address receiptTokenBonds;
  }

  /// @dev Peripheral addresses for the RdpxV2Core pricing oracles
  struct PricingOracleAddresses {
    address rdpxPriceOracle;
    address dpxEthPriceOracle;
  }

  /// @dev Struct containing the variables for delegate's position
  struct Delegate {
    address owner;
    uint256 amount;
    uint256 fee;
    uint256 activeCollateral;
  }

  /// @dev Struct containing the variables for a bond
  struct Bond {
    uint256 amount;
    uint256 maturity;
    uint256 timestamp;
  }

  /// @dev Struct containing the the rdpxV2Core reserve asset data
  struct ReserveAsset {
    address tokenAddress;
    uint256 tokenBalance;
    string tokenSymbol;
  }

  /// @dev Struct containing the return values for _bondWithDelegate
  struct BondWithDelegateReturnValue {
    uint256 delegateReceiptTokenAmount;
    uint256 bondAmountForUser;
    uint256 rdpxRequired;
    uint256 wethRequired;
  }

  // ================================ FUNCTIONS ================================ //
  function sync() external;

  // ================================ EVENTS ================================ //

  /// @notice Emitted when rdpxV2Core reserves are synced
  event LogSync();

  /// @notice Emitted when funds are withdrawn in an emergency
  /// @param sender msg.sender
  event LogEmergencyWithdraw(address sender, address[] tokens);

  /// @notice Emitted when addresses are set
  /// @param addresses The Addresses struct
  event LogSetAddresses(Addresses addresses);

  /// @notice Emitted when pricing oracle addresses are set
  /// @param pricingOracleAddresses The pricingOracleAddresses struct
  event LogSetPricingOracleAddresses(
    PricingOracleAddresses pricingOracleAddresses
  );

  /// @notice Emitted when the bond discount factor is set
  /// @param bondDiscountFactor The Bond Discount Factor
  event LogSetBondDiscountFactor(uint256 bondDiscountFactor);

  /// @notice Emitted when the reLP factor is set
  /// @param reLpFactor The reLP factor
  event LogSetReLpFactor(uint256 reLpFactor);

  /// @notice Emitted when the put option requirement is changed
  /// @param putOptionRequirement The put option requirement
  event LogSetputOptionsRequired(bool putOptionRequirement);

  /// @notice Emitted when the slippage tolerance is set
  /// @param slippageTolerance The Slippage tolerance
  event LogSetSlippageTolerance(uint256 slippageTolerance);

  /// @notice Emitted when the bond maturity is set
  /// @param bondMaturity The Bond Maturity
  event LogSetBondMaturity(uint256 bondMaturity);

  /// @notice Emitted when a bond is minted
  /// @param rdpxPaid the amount of rdpx paid
  /// @param alphaTokenPaid the amount of alphaTokenPaid
  /// @param receiptTokenAmount the amount of receipt tokens received
  event LogBond(
    uint256 rdpxPaid,
    uint256 alphaTokenPaid,
    uint256 receiptTokenAmount
  );

  /// @notice Emitted when a bond is minted via delegation
  /// @param to the address to which the bond is minted
  /// @param delegateIds array of the delegate ids
  /// @param amounts array of amounts used from the delegates
  /// @param rdpxBondId the bond id of the rdpx decaying bond
  /// @param userReceiptTokenAmount the amount of receipt tokens received by the user
  /// @param delegateReceiptTokenAmounts the amount of receipt tokens received by the delegates
  event LogBondWithDelegate(
    address to,
    uint256[] delegateIds,
    uint256[] amounts,
    uint256 rdpxBondId,
    uint256 userReceiptTokenAmount,
    uint256[] delegateReceiptTokenAmounts
  );

  /// @notice Emitted when the rdpxV2Core settles the perp-vault options
  /// @param optionIds the optionIds
  event LogSettle(uint256[] optionIds);

  /// @notice Emitted when the rdpxV2Core pays funding
  /// @param epoch the epoch for which to pay funding for
  /// @param funding the amount of funding to pay
  event LogProvideFunding(uint256 epoch, uint256 funding);

  /// @notice Emitted when someone delegates
  /// @param amount the amount to delegate
  event LogAddToDelegate(uint256 amount, uint256 fees, uint256 delegateId);

  /// @notice Emitted when a delegate withdraws
  /// @param delegateId the delegate id
  /// @param amount the amount withdrawn
  event LogDelegateWithdraw(uint256 delegateId, uint256 amount);

  /// @notice Emitted when upper depeg fn is called
  /// @param amount The amount of dpxEth minted
  /// @param wethReceived The amount of alpha token received
  event LogUpperDepeg(uint256 amount, uint256 wethReceived);

  /// @notice Emitted when lower depeg fn is called
  /// @param rdpxAmount The amount of rdpx used
  /// @param wethAmount The amount of weth used
  /// @param dpxEthReceived The amount of dpxEth received
  event LogLowerDepeg(
    uint256 rdpxAmount,
    uint256 wethAmount,
    uint256 dpxEthReceived
  );

  /// @notice Emitted when a new asset is added to the rdpxV2Core
  /// @param asset the address of the asset
  /// @param assetSymbol the symbol of the asset
  event LogAssetAddedTotokenReserves(address asset, string assetSymbol);

  /// @notice Emitted when a new asset is removed from the rdpxV2Core
  /// @param assetSymbol the symbol of the asset
  event LogAssetRemovedFromtokenReserves(string assetSymbol, uint256 index);

  /// @notice Emitted when rdpx burn percentage is set
  /// @param rdpxBurnPercentage the percentage of rdpx to burn
  event LogSetRdpxBurnPercentage(uint256 rdpxBurnPercentage);

  /// @notice Emitted when rdpx fee percentage is set
  /// @param rdpxFeePercentage the percentage of rdpx to burn
  event LogSetRdpxFeePercentage(uint256 rdpxFeePercentage);

  /// @notice Emitted when isReLpActive is set
  /// @param isReLPActive the boolean value of isReLpActive
  event LogSetIsReLPActive(bool isReLPActive);
}
