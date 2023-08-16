//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IOptionPricing {
  function getOptionPrice(
    uint256 strike,
    uint256 lastPrice,
    uint256 baseIv,
    uint256 expiry
  ) external view returns (uint256);
}
