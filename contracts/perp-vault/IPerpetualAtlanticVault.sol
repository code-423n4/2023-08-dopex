// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IPerpetualAtlanticVault {
  // ================================ VIEWS ================================ //

  /**
   * @notice Returns the funding duration
   * @return uint256 the funding duration
   **/
  function fundingDuration() external view returns (uint256);

  /**
   * @notice Returns the funding rate for a specified epoch
   * @param  _epoch The epoch to get the funding rate for
   * @return uint256 the funding rate
   **/
  function fundingRates(uint256 _epoch) external view returns (uint256);

  /**
   * @notice Returns the price of the underlying in ETH in 1e8 precision
   * @return uint256 the current underlying price
   **/
  function getUnderlyingPrice() external view returns (uint256);

  /**
   * @notice Returns the volatility from the volatility oracle
   * @param  _strike Strike of the option
   * @return uint256 Volatility for given strike
   **/
  function getVolatility(uint256 _strike) external view returns (uint256);

  /**
   * @notice Calculate premium for an option
   * @param  _strike Strike price of the option
   * @param  _amount Amount of options (1e18 precision)
   * @param  timeToExpiry Time to expiry of the option in seconds
   * @param  _price in 1e8 precision
   * @return premium in collateralToken in collateral precision
   **/
  function calculatePremium(
    uint256 _strike,
    uint256 _amount,
    uint256 timeToExpiry,
    uint256 _price
  ) external view returns (uint256 premium);

  /**
   * @notice Calculate Pnl
   * @param  price price of the underlying asset
   * @param  strike strike price of the option
   * @param  amount amount of options
   * @return uint256 the PnL calculated
   **/
  function calculatePnl(
    uint256 price,
    uint256 strike,
    uint256 amount
  ) external pure returns (uint256);

  /**
   * @notice Get the timestamp for next funding payment
   * @dev    Calculates funding timestamp based on genesis timestamp from deployment,
   *         the preset fundingDuration, and the current pointer
   * @return timestamp the next funding timestamp
   **/
  function nextFundingPaymentTimestamp()
    external
    view
    returns (uint256 timestamp);

  /**
   * @dev Function to round up a value to the roundingPrecision.
   * @param _strike the strike
   * @return strike rounded up to the nearest roundingPrecision
   **/
  function roundUp(uint256 _strike) external view returns (uint256 strike);

  /// @dev the pointer to the lattest funding payment timestamp
  function latestFundingPaymentPointer() external view returns (uint256);

  // ================================ TREASURY FUNCTIONS ================================ //

  /**
   * @notice Purchases options for the current epoch
   * @param  amount Amount of options to purchase
   * @param  to address to send the purchased options to
   **/
  function purchase(
    uint256 amount,
    address to
  ) external returns (uint256 premium, uint256 tokenId);

  /** 
  * @notice   The function asset settles the options by transferring rdpx 
              from the rdpxV2Core and transfers eth to the rdpx rdpxV2Core 
              contract at the option strike price. Will also the burn the 
              option tokens from the user.
  * @param    optionIds The Ids of the option to settle
  * @return   ethAmount The amount of eth transferred to the rdpx rdpxV2Core
  * @return   rdpxAmount The amount of rdpx transferred from the rdpx rdpxV2Core
  **/
  function settle(
    uint256[] memory optionIds
  ) external returns (uint256, uint256);

  /**
   * @notice function for rdpxV2Core to pay funding to option writers
   * @return uint256 the total funding for the ongoing epoch
   **/
  function payFunding() external returns (uint256);

  /**
   * @notice function to transfer funding into the LP in a drip-vested manner
   * @dev    addProceeds() is invoked to update totalCollateral in LP
   **/
  function updateFunding() external;

  /*==== EVENTS ====*/

  /// @notice Emitted when addresses are set
  /// @param addresses The Addresses struct
  event AddressesSet(Addresses addresses);

  /// @notice Emitted when funds are withdrawn in an emergency
  /// @param sender msg.sender
  /// @param tokens Array of tokens that were withdrawn
  event EmergencyWithdraw(address sender, address[] tokens);

  /// @notice Emitted when a purchase is made on the vault by the rdpxV2Core
  /// @param strike The strike of the option
  /// @param amount The amount of options purchased
  /// @param premium The premium paid by the rdpxV2Core
  /// @param to Address the options were sent to
  /// @param sender Address of the rdpxV2Core
  event Purchase(
    uint256 strike,
    uint256 amount,
    uint256 premium,
    address indexed to,
    address indexed sender
  );

  /// @notice Emitted on when settle is called by the rdpxV2Core
  /// @param ethAmount Amount of ETH received by the rdpxV2Core
  /// @param rdpxAmount Amount of rDPX received by the rdpxV2Core
  /// @param tokenIds Array of token ids that were settled
  event Settle(uint256 ethAmount, uint256 rdpxAmount, uint256[] tokenIds);

  /// @notice Emitted when funding is paid
  /// @param sender msg.sender
  /// @param amount amount paid
  /// @param latestFundingPaymentPointer latest funding payment pointer
  event PayFunding(
    address sender,
    uint256 amount,
    uint256 latestFundingPaymentPointer
  );

  /// @notice Emitted when calculate funding is called
  /// @param sender msg.sender
  /// @param amount amount of options
  /// @param strike strike of the option
  /// @param fundingAmount funding amount
  /// @param latestFundingPaymentPointer latest funding payment pointer
  event CalculateFunding(
    address sender,
    uint256 amount,
    uint256 strike,
    uint256 fundingAmount,
    uint256 latestFundingPaymentPointer
  );

  /// @notice Emitted when funding paymentPointer is updated
  /// @param latestFundingPaymentPointer latest funding payment pointer
  event FundingPaymentPointerUpdated(uint256 latestFundingPaymentPointer);

  /// @notice Emitted when funding is paid
  /// @param sender msg.sender
  /// @param amount amount paid
  /// @param latestFundingPaymentPointer latest funding payment pointer
  event FundingPaid(
    address sender,
    uint256 amount,
    uint256 latestFundingPaymentPointer
  );

  /*==== STRUCTS ====*/

  /// @dev Struct of all addresses used by the vault
  struct Addresses {
    address optionPricing;
    address assetPriceOracle;
    address volatilityOracle;
    address feeDistributor;
    address rdpx;
    address perpetualAtlanticVaultLP;
    address rdpxV2Core;
  }

  /// @dev Struct of a option position
  struct OptionPosition {
    uint256 strike;
    uint256 amount;
    uint256 positionId;
  }
}
