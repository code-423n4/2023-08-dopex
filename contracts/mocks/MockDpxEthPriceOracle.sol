// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { IDpxEthOracle } from "../oracles/IDpxEthOracle.sol";

contract MockDpxEthPriceOracle is IDpxEthOracle {
  uint256 public dpxEthPriceInEth = 1e8;

  function updateDpxEthPrice(uint256 _dpxEthPrice) external {
    dpxEthPriceInEth = _dpxEthPrice;
  }

  function getDpxEthPriceInEth() external view returns (uint256) {
    return dpxEthPriceInEth;
  }

  function getEthPriceInDpxEth() external view returns (uint256) {
    return ((1e8 * 1e8) / dpxEthPriceInEth);
  }
}
