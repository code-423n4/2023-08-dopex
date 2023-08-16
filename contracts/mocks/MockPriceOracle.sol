// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract MockPriceOracle {
  uint256 public collateralPrice = 1e8;
  uint256 public underlyingPrice = 30e8;

  function updateCollateralPrice(uint256 _collateralPrice) external {
    collateralPrice = _collateralPrice;
  }

  function getCollateralPrice() external view returns (uint256) {
    return collateralPrice;
  }

  function updateUnderlyingPrice(uint256 _underlyingPrice) external {
    underlyingPrice = _underlyingPrice;
  }

  function getUnderlyingPrice() external view returns (uint256) {
    return underlyingPrice;
  }
}
