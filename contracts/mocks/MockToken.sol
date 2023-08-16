// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { ERC20PresetMinterPauser } from "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";

contract MockToken is ERC20PresetMinterPauser {
  constructor(string memory name, string memory symbol)
    ERC20PresetMinterPauser(name, symbol)
  {}
}
