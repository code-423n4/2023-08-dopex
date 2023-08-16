// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { IOptionPricing } from "../interfaces/IOptionPricing.sol";

contract MockOptionPricing is IOptionPricing {
  function getOptionPrice(
    uint256,
    uint256,
    uint256,
    uint256
  ) external pure override returns (uint256) {
    return 5e6; // 0.05 weth
  }
}
