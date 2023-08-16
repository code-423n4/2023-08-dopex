// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import { Pausable } from "../helper/Pausable.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { IDpxEthToken } from "./IDpxEthToken.sol";

/// @title Dopex Synthetic ETH token contract
/// @author Dopex
contract DpxEthToken is
  ERC20,
  ERC20Burnable,
  Pausable,
  AccessControl,
  IDpxEthToken
{
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
  bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

  constructor() ERC20("Dopex Synthetic ETH", "dpxETH") {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(PAUSER_ROLE, msg.sender);
    _grantRole(MINTER_ROLE, msg.sender);
  }

  function pause() public onlyRole(PAUSER_ROLE) {
    _pause();
  }

  function unpause() public onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
    _mint(to, amount);
  }

  function burn(
    uint256 _amount
  ) public override(ERC20Burnable, IDpxEthToken) onlyRole(BURNER_ROLE) {
    _burn(_msgSender(), _amount);
  }

  function burnFrom(
    address account,
    uint256 amount
  ) public override onlyRole(BURNER_ROLE) {
    _spendAllowance(account, _msgSender(), amount);
    _burn(account, amount);
  }

  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 amount
  ) internal override {
    _whenNotPaused();
    super._beforeTokenTransfer(from, to, amount);
  }
}
