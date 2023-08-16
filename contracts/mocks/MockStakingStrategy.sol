// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract MockStakingStrategy {
  uint256 balance;

  function stake(uint256 amount)
    external
    returns (uint256[] memory rewardTokenAmounts)
  {
    balance += amount;
    rewardTokenAmounts = new uint256[](2);
  }

  function unstake() external returns (uint256[] memory rewardTokenAmounts) {
    balance = 0;
    rewardTokenAmounts = new uint256[](2);
  }
}
