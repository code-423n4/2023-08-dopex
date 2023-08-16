// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IERC20WithBurn is IERC20Metadata {
  function burn(uint256 amount) external;
}
