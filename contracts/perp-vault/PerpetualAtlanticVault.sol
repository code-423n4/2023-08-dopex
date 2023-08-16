//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Libraries
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Contracts
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";
import { IPerpetualAtlanticVaultLP } from "./IPerpetualAtlanticVaultLP.sol";
import { ContractWhitelist } from "../helper/ContractWhitelist.sol";
import { Pausable } from "../helper/Pausable.sol";

// Interfaces
import { IPerpetualAtlanticVault } from "./IPerpetualAtlanticVault.sol";
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";
import { IOptionPricing } from "../interfaces/IOptionPricing.sol";
import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";
import { IVolatilityOracle } from "../interfaces/IVolatilityOracle.sol";

/// @title Contract to offer perpetual atlantic rDPX PUT options to the rdpxV2Core contract
/// @dev Option tokens are in erc20 18 decimals & Strikes are in 1e8 precision
contract PerpetualAtlanticVault is
  IPerpetualAtlanticVault,
  ReentrancyGuard,
  Pausable,
  ERC721,
  ERC721Enumerable,
  ERC721Burnable,
  AccessControl,
  ContractWhitelist
{
  using SafeERC20 for IERC20WithBurn;
  using Counters for Counters.Counter;

  /// @dev Token ID counter for write positions
  Counters.Counter private _tokenIdCounter;

  /// @dev Manager role which handles bootstrapping
  bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

  /// @dev Rdpx v2 core role which can purchase and settle options
  bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

  /// @dev Underlying assets symbol
  string public underlyingSymbol;

  /// @dev Contract addresses
  Addresses public addresses;

  /// @dev Collateral Token
  IERC20WithBurn public collateralToken;

  /// @dev The precision of the collateral token
  uint256 public collateralPrecision;

  /// @dev tokenId => OptionPosition
  mapping(uint256 => OptionPosition) public optionPositions;

  /// @dev number of options funding has been accounted for the epoch
  mapping(uint256 => uint256) public fundingPaymentsAccountedFor;

  /// @dev the funding accounted for the epoch and strike
  mapping(uint256 => mapping(uint256 => uint256))
    public fundingPaymentsAccountedForPerStrike;

  /// @dev the total funding for the epoch
  mapping(uint256 => uint256) public totalFundingForEpoch;

  /// @dev amount of options per strike
  mapping(uint256 => uint256) public optionsPerStrike;

  /// @dev latest funding update per strike
  mapping(uint256 => uint256) public latestFundingPerStrike;

  // @dev Funding rate for the epoch
  mapping(uint256 => uint256) public fundingRates;

  /// @dev the pointer to the lattest funding payment timestamp
  /// @notice Explain to an end user what this does
  /// @dev Explain to a developer any extra details
  /// @return Documents the return variables of a contract’s function state variable
  /// @inheritdoc	IPerpetualAtlanticVault
  uint256 public latestFundingPaymentPointer = 0;

  /// @dev the total number of active options
  uint256 public totalActiveOptions;

  /// @dev genesis timestamp
  uint256 public genesis;

  /// @dev the timestamp of the last update where funding was paid for
  uint256 public lastUpdateTime;

  /// @dev the duration between funding payments
  uint256 public fundingDuration = 7 days;

  /// @dev the precision to round up to
  uint256 public roundingPrecision = 1e6;

  // ================================ CONSTRUCTOR ================================ //

  /// @notice Contract constructor
  /// @param _name ERC721 name
  /// @param _symbol ERC721 symbol
  /// @param _collateralToken Collateral token of the perpetual atlantic vault
  /// @param _gensis Gensis time for funding calculation
  constructor(
    string memory _name,
    string memory _symbol,
    address _collateralToken,
    uint256 _gensis
  ) ERC721(_name, _symbol) {
    _validate(_collateralToken != address(0), 1);

    collateralToken = IERC20WithBurn(_collateralToken);
    underlyingSymbol = collateralToken.symbol();
    collateralPrecision = 10 ** collateralToken.decimals();
    genesis = _gensis;

    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _setupRole(MANAGER_ROLE, msg.sender);
  }

  // ================================ ADMIN FUNCTIONS ================================ //

  /**
   * @notice Pauses the vault for emergency cases
   * @dev    Can only be called by the owner
   **/
  function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _pause();
  }

  /**
   * @notice Unpauses the vault
   * @dev    Can only be called by the owner
   **/
  function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
  }

  /**
   * @notice Add a contract to the whitelist
   * @dev    Can only be called by the owner
   * @param  _contract Address of the contract that needs to be added to the whitelist
   **/
  function addToContractWhitelist(
    address _contract
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _addToContractWhitelist(_contract);
  }

  /**
   * @notice Remove a contract to the whitelist
   * @dev    Can only be called by the owner
   * @param  _contract Address of the contract that needs to be removed from the whitelist
   **/
  function removeFromContractWhitelist(
    address _contract
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _removeFromContractWhitelist(_contract);
  }

  /**
   * @notice Sets (adds) a list of addresses to the address list
   * @dev    Can only be called by the owner
   * @param  _optionPricing Address of the option pricing contract
   * @param  _assetPriceOracle Address of the asset price oracle contract
   * @param  _volatilityOracle Address of the volatility oracle contract
   * @param  _feeDistributor Address of the fee distributor contract
   * @param  _rdpx Address of the rdpx contract
   * @param  _perpetualAtlanticVaultLP Address of the perpetual atlantic vault lp contract
   * @param  _rdpxV2Core Address of the rdpx v2 rdpxV2Core contract
   **/
  function setAddresses(
    address _optionPricing,
    address _assetPriceOracle,
    address _volatilityOracle,
    address _feeDistributor,
    address _rdpx,
    address _perpetualAtlanticVaultLP,
    address _rdpxV2Core
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _validate(_optionPricing != address(0), 1);
    _validate(_assetPriceOracle != address(0), 1);
    _validate(_volatilityOracle != address(0), 1);
    _validate(_feeDistributor != address(0), 1);
    _validate(_rdpx != address(0), 1);
    _validate(_perpetualAtlanticVaultLP != address(0), 1);
    _validate(_rdpxV2Core != address(0), 1);

    addresses = Addresses({
      optionPricing: _optionPricing,
      assetPriceOracle: _assetPriceOracle,
      volatilityOracle: _volatilityOracle,
      feeDistributor: _feeDistributor,
      rdpx: _rdpx,
      perpetualAtlanticVaultLP: _perpetualAtlanticVaultLP,
      rdpxV2Core: _rdpxV2Core
    });
    collateralToken.safeApprove(
      addresses.perpetualAtlanticVaultLP,
      type(uint256).max
    );
    emit AddressesSet(addresses);
  }

  /**
   * @notice Transfers all funds to msg.sender
   * @dev    Can only be called by the owner
   * @param  tokens The list of erc20 tokens to withdraw
   **/
  function emergencyWithdraw(
    address[] calldata tokens
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _whenPaused();
    IERC20WithBurn token;

    for (uint256 i = 0; i < tokens.length; i++) {
      token = IERC20WithBurn(tokens[i]);
      token.safeTransfer(msg.sender, token.balanceOf(address(this)));
    }

    emit EmergencyWithdraw(msg.sender, tokens);
  }

  /**
   * @notice Updates the funding duration
   * @dev    Can only be called by the owner
   **/
  function updateFundingDuration(
    uint256 _fundingDuration
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    fundingDuration = _fundingDuration;
  }

  function setLpAllowance(bool increase) external onlyRole(DEFAULT_ADMIN_ROLE) {
    increase
      ? collateralToken.approve(
        addresses.perpetualAtlanticVaultLP,
        type(uint256).max
      )
      : collateralToken.approve(addresses.perpetualAtlanticVaultLP, 0);
  }

  // ================================ TREASURY FUNCTIONS ================================ //

  /// @inheritdoc	IPerpetualAtlanticVault
  function purchase(
    uint256 amount,
    address to
  )
    external
    nonReentrant
    onlyRole(RDPXV2CORE_ROLE)
    returns (uint256 premium, uint256 tokenId)
  {
    _whenNotPaused();
    _validate(amount > 0, 2);

    updateFunding();

    uint256 currentPrice = getUnderlyingPrice(); // price of underlying wrt collateralToken
    uint256 strike = roundUp(currentPrice - (currentPrice / 4)); // 25% below the current price
    IPerpetualAtlanticVaultLP perpetualAtlanticVaultLp = IPerpetualAtlanticVaultLP(
        addresses.perpetualAtlanticVaultLP
      );

    // Check if vault has enough collateral to write the options
    uint256 requiredCollateral = (amount * strike) / 1e8;

    _validate(
      requiredCollateral <= perpetualAtlanticVaultLp.totalAvailableCollateral(),
      3
    );

    uint256 timeToExpiry = nextFundingPaymentTimestamp() - block.timestamp;

    // Get total premium for all options being purchased
    premium = calculatePremium(strike, amount, timeToExpiry, 0);

    // Transfer premium from msg.sender to PerpetualAtlantics vault
    collateralToken.safeTransferFrom(msg.sender, address(this), premium);

    perpetualAtlanticVaultLp.lockCollateral(requiredCollateral);
    _updateFundingRate(premium);

    // Mint the option tokens
    tokenId = _mintOptionToken();
    optionPositions[tokenId] = OptionPosition({
      strike: strike,
      amount: amount,
      positionId: tokenId
    });

    totalActiveOptions += amount;
    fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;
    optionsPerStrike[strike] += amount;

    // record the number of options funding has been accounted for the epoch and strike
    fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
      strike
    ] += amount;

    emit Purchase(strike, amount, premium, to, msg.sender);
  }

  /// @inheritdoc	IPerpetualAtlanticVault
  function settle(
    uint256[] memory optionIds
  )
    external
    nonReentrant
    onlyRole(RDPXV2CORE_ROLE)
    returns (uint256 ethAmount, uint256 rdpxAmount)
  {
    _whenNotPaused();
    _isEligibleSender();

    updateFunding();

    for (uint256 i = 0; i < optionIds.length; i++) {
      uint256 strike = optionPositions[optionIds[i]].strike;
      uint256 amount = optionPositions[optionIds[i]].amount;

      // check if strike is ITM
      _validate(strike >= getUnderlyingPrice(), 7);

      ethAmount += (amount * strike) / 1e8;
      rdpxAmount += amount;
      optionsPerStrike[strike] -= amount;
      totalActiveOptions -= amount;

      // Burn option tokens from user
      _burn(optionIds[i]);

      optionPositions[optionIds[i]].strike = 0;
    }

    // Transfer collateral token from perpetual vault to rdpx rdpxV2Core
    collateralToken.safeTransferFrom(
      addresses.perpetualAtlanticVaultLP,
      addresses.rdpxV2Core,
      ethAmount
    );
    // Transfer rdpx from rdpx rdpxV2Core to perpetual vault
    IERC20WithBurn(addresses.rdpx).safeTransferFrom(
      addresses.rdpxV2Core,
      addresses.perpetualAtlanticVaultLP,
      rdpxAmount
    );

    IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP).subtractLoss(
      ethAmount
    );
    IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP)
      .unlockLiquidity(ethAmount);
    IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP).addRdpx(
      rdpxAmount
    );

    emit Settle(ethAmount, rdpxAmount, optionIds);
  }

  /// @inheritdoc	IPerpetualAtlanticVault
  function payFunding() external onlyRole(RDPXV2CORE_ROLE) returns (uint256) {
    _whenNotPaused();
    _isEligibleSender();

    _validate(
      totalActiveOptions ==
        fundingPaymentsAccountedFor[latestFundingPaymentPointer],
      6
    );

    collateralToken.safeTransferFrom(
      addresses.rdpxV2Core,
      address(this),
      totalFundingForEpoch[latestFundingPaymentPointer]
    );
    _updateFundingRate(totalFundingForEpoch[latestFundingPaymentPointer]);

    emit PayFunding(
      msg.sender,
      totalFundingForEpoch[latestFundingPaymentPointer],
      latestFundingPaymentPointer
    );

    return (totalFundingForEpoch[latestFundingPaymentPointer]);
  }

  // ================================ PUBLIC/EXTERNAL FUNCTIONS ================================ //

  /**
   * @notice Function to calculate the funding of options for the next epoch
   * @param  strikes array of strikes to calculate the funding for
   * @return fundingAmount the funding of options
   **/
  function calculateFunding(
    uint256[] memory strikes
  ) external nonReentrant returns (uint256 fundingAmount) {
    _whenNotPaused();
    _isEligibleSender();

    updateFundingPaymentPointer();

    for (uint256 i = 0; i < strikes.length; i++) {
      _validate(optionsPerStrike[strikes[i]] > 0, 4);
      _validate(
        latestFundingPerStrike[strikes[i]] != latestFundingPaymentPointer,
        5
      );
      uint256 strike = strikes[i];

      uint256 amount = optionsPerStrike[strike] -
        fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
          strike
        ];

      uint256 timeToExpiry = nextFundingPaymentTimestamp() -
        (genesis + ((latestFundingPaymentPointer - 1) * fundingDuration));

      uint256 premium = calculatePremium(
        strike,
        amount,
        timeToExpiry,
        getUnderlyingPrice()
      );

      latestFundingPerStrike[strike] = latestFundingPaymentPointer;
      fundingAmount += premium;

      // Record number of options that funding payments were accounted for, for this epoch
      fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;

      // record the number of options funding has been accounted for the epoch and strike
      fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
        strike
      ] += amount;

      // Record total funding for this epoch
      // This does not need to be done in purchase() since it's already accounted for using `addProceeds()`
      totalFundingForEpoch[latestFundingPaymentPointer] += premium;

      emit CalculateFunding(
        msg.sender,
        amount,
        strike,
        premium,
        latestFundingPaymentPointer
      );
    }
  }

  /// @dev Helper function that updates the latest funding payment pointer based on current timestamp
  function updateFundingPaymentPointer() public {
    while (block.timestamp >= nextFundingPaymentTimestamp()) {
      if (lastUpdateTime < nextFundingPaymentTimestamp()) {
        uint256 currentFundingRate = fundingRates[latestFundingPaymentPointer];

        uint256 startTime = lastUpdateTime == 0
          ? (nextFundingPaymentTimestamp() - fundingDuration)
          : lastUpdateTime;

        lastUpdateTime = nextFundingPaymentTimestamp();

        collateralToken.safeTransfer(
          addresses.perpetualAtlanticVaultLP,
          (currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
            1e18
        );

        IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP)
          .addProceeds(
            (currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
              1e18
          );

        emit FundingPaid(
          msg.sender,
          ((currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
            1e18),
          latestFundingPaymentPointer
        );
      }

      latestFundingPaymentPointer += 1;
      emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);
    }
  }

  /**
   * @notice function to transfer funding into the LP in a drip-vested manner
   * @dev    addProceeds() is invoked to update totalCollateral in LP
   **/
  function updateFunding() public {
    updateFundingPaymentPointer();
    uint256 currentFundingRate = fundingRates[latestFundingPaymentPointer];
    uint256 startTime = lastUpdateTime == 0
      ? (nextFundingPaymentTimestamp() - fundingDuration)
      : lastUpdateTime;
    lastUpdateTime = block.timestamp;

    collateralToken.safeTransfer(
      addresses.perpetualAtlanticVaultLP,
      (currentFundingRate * (block.timestamp - startTime)) / 1e18
    );

    IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP).addProceeds(
      (currentFundingRate * (block.timestamp - startTime)) / 1e18
    );

    emit FundingPaid(
      msg.sender,
      ((currentFundingRate * (block.timestamp - startTime)) / 1e18),
      latestFundingPaymentPointer
    );
  }

  // ================================ VIEWS ================================ //

  /// @inheritdoc	IPerpetualAtlanticVault
  function getUnderlyingPrice() public view returns (uint256) {
    return IRdpxEthOracle(addresses.assetPriceOracle).getRdpxPriceInEth();
  }

  /// @inheritdoc	IPerpetualAtlanticVault
  function getVolatility(uint256 _strike) public view returns (uint256) {
    return IVolatilityOracle(addresses.volatilityOracle).getVolatility(_strike);
  }

  /// @inheritdoc	IPerpetualAtlanticVault
  function calculatePremium(
    uint256 _strike,
    uint256 _amount,
    uint256 timeToExpiry,
    uint256 _price
  ) public view returns (uint256 premium) {
    premium = ((IOptionPricing(addresses.optionPricing).getOptionPrice(
      _strike,
      _price > 0 ? _price : getUnderlyingPrice(),
      getVolatility(_strike),
      timeToExpiry
    ) * _amount) / 1e8);
  }

  /// @inheritdoc	IPerpetualAtlanticVault
  function calculatePnl(
    uint256 price,
    uint256 strike,
    uint256 amount
  ) public pure returns (uint256) {
    return strike > price ? ((strike - price) * amount) / 1e8 : 0;
  }

  /// @inheritdoc	IPerpetualAtlanticVault
  function nextFundingPaymentTimestamp()
    public
    view
    returns (uint256 timestamp)
  {
    return genesis + (latestFundingPaymentPointer * fundingDuration);
  }

  /**
   * @dev Function to round up a value to the roundingPrecision.
   * @param _strike the strike
   * @return strike rounded up to the nearest roundingPrecision
   **/
  function roundUp(uint256 _strike) public view returns (uint256 strike) {
    uint256 remainder = _strike % roundingPrecision;
    if (remainder == 0) {
      return _strike;
    } else {
      return _strike - remainder + roundingPrecision;
    }
  }

  // ================================ PRIVATE/HELPER FUNCTIONS ================================ //

  /// @dev Internal function to mint a option token
  function _mintOptionToken() private returns (uint256 tokenId) {
    tokenId = _tokenIdCounter.current();
    _tokenIdCounter.increment();
    _mint(addresses.rdpxV2Core, tokenId);
  }

  function _updateFundingRate(uint256 amount) private {
    if (fundingRates[latestFundingPaymentPointer] == 0) {
      uint256 startTime;
      if (lastUpdateTime > nextFundingPaymentTimestamp() - fundingDuration) {
        startTime = lastUpdateTime;
      } else {
        startTime = nextFundingPaymentTimestamp() - fundingDuration;
      }
      uint256 endTime = nextFundingPaymentTimestamp();
      fundingRates[latestFundingPaymentPointer] =
        (amount * 1e18) /
        (endTime - startTime);
    } else {
      uint256 startTime = lastUpdateTime;
      uint256 endTime = nextFundingPaymentTimestamp();
      if (endTime == startTime) return;
      fundingRates[latestFundingPaymentPointer] =
        fundingRates[latestFundingPaymentPointer] +
        ((amount * 1e18) / (endTime - startTime));
    }
  }

  /**
   * @dev    internal function to validate checks
   * @param  _clause the boolean clause to validate
   * @param  _errorCode error code for error mapping below
   **/
  function _validate(bool _clause, uint256 _errorCode) private pure {
    if (!_clause) revert PerpetualAtlanticVaultError(_errorCode);
  }

  // ================================ ERRORS ================================ //

  /**
   * @dev  Custom Error used to validate checks within the contract's functions.
   *       The uint256 error code corresponds to an error message.
   **/
  error PerpetualAtlanticVaultError(uint256);

  // ================================ Solidity Required Overrides ================================ //

  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 tokenId,
    uint256 batchSize
  ) internal override(ERC721, ERC721Enumerable) {
    _whenNotPaused();
    super._beforeTokenTransfer(from, to, tokenId, batchSize);
  }

  function supportsInterface(
    bytes4 interfaceId
  )
    public
    view
    override(ERC721, ERC721Enumerable, AccessControl)
    returns (bool)
  {
    return super.supportsInterface(interfaceId);
  }
}

// ERROR CODES
// E1: "Zero address",
// E2: "Amount must be greater than 0",
// E3: "Insufficient collateral for purchase",
// E4: "No options for strike",
// E5: "Option strike already funded",
// E6: "All funding payments must be accounted for",
// E7: "Option is not ITM"
