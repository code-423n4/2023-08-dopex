// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IRdpxReserve {
  function withdraw(uint256 _amount) external;

  function rdpxReserve() external view returns (uint256);
}
