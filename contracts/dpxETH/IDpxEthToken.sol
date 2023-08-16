// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IDpxEthToken is IERC20Metadata {
  function mint(address to, uint256 amount) external;

  function burn(uint256 _amount) external;
}
