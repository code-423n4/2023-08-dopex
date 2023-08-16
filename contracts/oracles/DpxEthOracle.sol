// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Contracts
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

// Interfaces
import { IDpxEthOracle } from "./IDpxEthOracle.sol";

contract DpxEthOracle is AccessControl, IDpxEthOracle {
  /*==== PUBLIC VARS ====*/

  /// @dev Keeper Role
  bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

  /// @dev Decimals of the price which is returned
  uint256 public constant DECIMALS = 1e8;

  /// @dev Last price of dpxETH in ETH
  uint256 public lastPrice;

  /// @dev Block timestamp of when last the price of dpxETH (in ETH) was updated
  uint256 public lastUpdated;

  /// @dev Heartbeat of the updates. If heartbeat is not fulfilled then price getter fucntion should revert
  uint256 public heartbeat = 35 minutes;

  struct PriceObj {
    /// @dev dpxETH Price in ETH
    uint256 price;
    /// @dev Block timestamp of when price was update
    uint256 updatedAt;
  }

  /// @dev Price Updates
  mapping(uint256 => PriceObj) public priceUpdates;

  /// @dev Length of Price Updates
  uint256 public priceUpdatesLength;

  /*==== EVENTS ====*/

  /// @notice Emitted on a price update
  /// @param price dpxETH Price in ETH
  /// @param updatedAt Block timestamp of when price was update
  event PriceUpdate(uint256 price, uint256 updatedAt);

  /// @notice Emitted on setting of heartbeat
  /// @param heartbeat Heartbeat
  event SetHeartbeat(uint256 heartbeat);

  /*==== ERRORS ====*/

  /// @notice Emitted if the heartbeat of the price is not met
  error HeartbeatNotFulfilled();

  /*==== CONSTRUCTOR ====*/

  constructor() {
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /*==== ADMIN FUNCTIONS ====*/

  /// @dev Set the heartbeat of the oracles
  /// @param _heartbeat Heartbeat of the oracle
  function setHeartbeat(
    uint256 _heartbeat
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    heartbeat = _heartbeat;

    emit SetHeartbeat(_heartbeat);
  }

  /*==== KEEPER FUNCTIONS ====*/

  /// @notice Updates the last price of the token
  /// @param _price price
  /// @return priceUpdatesLength length of the priceUpdates
  function updatePrice(
    uint256 _price
  ) external onlyRole(KEEPER_ROLE) returns (uint256) {
    uint256 blockTimestamp = block.timestamp;

    priceUpdates[priceUpdatesLength] = PriceObj({
      price: _price,
      updatedAt: blockTimestamp
    });

    priceUpdatesLength += 1;

    lastPrice = _price;

    lastUpdated = blockTimestamp;

    emit PriceUpdate(_price, blockTimestamp);

    return priceUpdatesLength;
  }

  /*==== VIEWS ====*/

  /// @inheritdoc IDpxEthOracle
  function getDpxEthPriceInEth() external view returns (uint256) {
    require(lastPrice != 0, "Last price == 0");

    if (block.timestamp > lastUpdated + heartbeat) {
      revert HeartbeatNotFulfilled();
    }

    return lastPrice;
  }

  /// @inheritdoc IDpxEthOracle
  function getEthPriceInDpxEth() external view returns (uint256) {
    require(lastPrice != 0, "Last price == 0");

    if (block.timestamp > lastUpdated + heartbeat) {
      revert HeartbeatNotFulfilled();
    }

    // To not lose any precision we square 'decimals' and divide it by lastPrice which is in 'decimals' precision
    return (DECIMALS * DECIMALS) / lastPrice;
  }

  /// @notice Gets the price updates from a start index to an end index
  /// @param _startIndex starting index
  /// @param _endIndex ending index
  /// @return result priceUpdates
  function getPriceUpdates(
    uint256 _startIndex,
    uint256 _endIndex
  ) external view returns (PriceObj[] memory result) {
    uint256 resultLength = (_endIndex - _startIndex) + 1;
    result = new PriceObj[](resultLength);

    for (uint256 i; i < resultLength; ) {
      result[i] = priceUpdates[_startIndex + i];

      unchecked {
        ++i;
      }
    }
  }
}
