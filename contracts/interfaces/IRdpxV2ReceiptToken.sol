//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IRdpxV2ReceiptToken {
  function deposit(uint256 _amount) external returns (uint256);
}
