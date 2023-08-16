// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Interfaces
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";
import { IRdpxReserve } from "./IRdpxReserve.sol";
import { Pausable } from "../helper/Pausable.sol";

// Libraries
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Contracts
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

contract RdpxReserve is AccessControl, IRdpxReserve, Pausable {
  using SafeERC20 for IERC20WithBurn;

  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

  address public rdpx;

  constructor(address _rdpx) {
    rdpx = _rdpx;
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(PAUSER_ROLE, msg.sender);
  }

  /**
   * @notice Pauses the vault for emergency cases
   * @dev    Can only be called by the owner
   **/
  function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _pause();
  }

  /**
   * @notice Unpauses the vault
   * @dev    Can only be called by the owner
   **/
  function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
  }

  function updateRdpxAddress(
    address _rdpx
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    rdpx = _rdpx;
  }

  /**
   * @notice Transfers all funds to msg.sender
   * @dev    Can only be called by the owner
   * @param  tokens The list of erc20 tokens to withdraw
   * @param  transferNative Whether should transfer the native currency
   * @param  to The address to transfer the funds to
   * @param  amount The amount to transfer
   * @param  gas The gas to use for the transfer
   **/
  function emergencyWithdraw(
    address[] calldata tokens,
    bool transferNative,
    address payable to,
    uint256 amount,
    uint256 gas
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _whenPaused();
    if (transferNative) {
      (bool success, ) = to.call{ value: amount, gas: gas }("");
      require(success, "RdpxReserve: transfer failed");
    }
    IERC20WithBurn token;

    for (uint256 i = 0; i < tokens.length; i++) {
      token = IERC20WithBurn(tokens[i]);
      token.safeTransfer(msg.sender, token.balanceOf(address(this)));
    }
  }

  function withdraw(uint256 _amount) external onlyRole(RDPXV2CORE_ROLE) {
    _whenNotPaused();
    IERC20WithBurn(rdpx).safeTransfer(msg.sender, _amount);
  }

  function rdpxReserve() external view returns (uint256) {
    return IERC20WithBurn(rdpx).balanceOf(address(this));
  }
}
