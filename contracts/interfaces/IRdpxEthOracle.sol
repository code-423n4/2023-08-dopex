//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IRdpxEthOracle {
  function getRdpxPriceInEth() external view returns (uint256);

  function getEthPriceInRdpx() external view returns (uint256);

  function getLpPriceInEth() external view returns (uint256);
}
