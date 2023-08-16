// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { MockToken } from "contracts/mocks/MockToken.sol";
import { Setup } from "./Setup.t.sol";

/*
  pause()
  unpause()
  updateFundingPayment()
  updateFundingPaymentEmergency()
  addToContractWhitelist()
  removeFromContractWhitelist()
  setAddresses()
  setRdpxPriceAtExpiry()
  emergencyWithdraw(strike,requiredCollateral,premium)
*/

contract Admin is ERC721Holder, Setup {
  function testPause() external {
    vm.expectRevert();
    vault.unpause();
    vault.pause();
  }

  function testUnpause() external {
    vault.pause();
    vm.expectRevert();
    vault.pause();
    vault.unpause();
  }

  function testContractWhitelist() external {
    MockToken _contract = new MockToken("Mock", "Mock");
    vault.addToContractWhitelist(address(_contract));
    vm.expectRevert("Contract already whitelisted");
    vault.addToContractWhitelist(address(_contract));

    vault.removeFromContractWhitelist(address(_contract));

    vm.expectRevert("Contract not whitelisted");
    vault.removeFromContractWhitelist(address(_contract));
  }

  // **note** For coverage
  function testSetAddresses() external {
    vault.setAddresses(
      address(1),
      address(1),
      address(1),
      address(1),
      address(1),
      address(1),
      address(1)
    );
  }

  // **note** For coverage

  function testEmergencyWithdraw() external {
    address[] memory tokens = new address[](2);
    tokens[0] = address(rdpx);
    tokens[1] = address(weth);

    weth.mint(address(vault), 1000e18);
    rdpx.mint(address(vault), 1000e18);

    assertEq(weth.balanceOf(address(vault)), 1000e18);
    assertEq(rdpx.balanceOf(address(vault)), 1000e18);
    vm.expectRevert(bytes4(keccak256("ContractNotPaused()"))); // Not paused
    vault.emergencyWithdraw(tokens);

    vm.deal(address(vault), 1 ether);
    assertEq(address(vault).balance, 1 ether);

    vault.pause();
    vault.emergencyWithdraw(tokens);

    assertEq(weth.balanceOf(address(vault)), 0);
    assertEq(rdpx.balanceOf(address(vault)), 0);

    vault.unpause();
  }

  function testEmergencyWithdrawNonNative() external {
    address[] memory tokens = new address[](2);
    tokens[0] = address(rdpx);
    tokens[1] = address(weth);
    weth.mint(address(vault), 1000e18);
    rdpx.mint(address(vault), 1000e18);
    vault.pause();
    vault.emergencyWithdraw(tokens);
    assertEq(rdpx.balanceOf(address(vault)), 0);
    assertEq(weth.balanceOf(address(vault)), 0);
  }

  function testUpdateFundingDuration() external {
    vm.prank(address(0));
    vm.expectRevert(); // Not admin
    vault.updateFundingDuration(604800);

    vm.prank(address(this));
    vault.updateFundingDuration(604800);
  }

  // allow emergencyWithdraw native token into this contract
  receive() external payable {}
}
