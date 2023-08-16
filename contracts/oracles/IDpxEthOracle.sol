//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IDpxEthOracle {
  /// @notice Gets the price of dpxETH in ETH
  /// @return price
  function getDpxEthPriceInEth() external view returns (uint256);

  /// @notice Gets the price of ETH in dpxETH
  /// @return price
  function getEthPriceInDpxEth() external view returns (uint256);
}
