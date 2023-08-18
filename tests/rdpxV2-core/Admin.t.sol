// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { Setup } from "./Setup.t.sol";

contract Admin is ERC721Holder, Setup {
  function testAdminFunctions() public {
    // Test the sync function
    rdpxV2Core.sync();

    // Test the setAddresses function
    rdpxV2Core.setAddresses(
      address(router),
      curvePool,
      address(rdpxDecayingBonds),
      address(vault),
      address(vaultLp),
      address(rdpxReserveContract),
      address(rdpxV2ReceiptToken),
      address(100),
      address(reLpContract),
      address(rdpxV2Bond)
    );

    // set pricing oracle addresses
    rdpxV2Core.setPricingOracleAddresses(
      address(rdpxPriceOracle),
      address(dpxEthPriceOracle)
    );

    // Test the revert
    vm.prank(address(3));
    vm.expectRevert(
      "AccessControl: account 0x0000000000000000000000000000000000000003 is missing role 0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    rdpxV2Core.setAddresses(
      address(router),
      curvePool,
      address(rdpxDecayingBonds),
      address(vault),
      address(vaultLp),
      address(rdpxReserveContract),
      address(rdpxV2ReceiptToken),
      address(100),
      address(reLpContract),
      address(rdpxV2Bond)
    );

    // Test the addToContractWhitelist function
    rdpxV2Core.addToContractWhitelist(address(dpxETH));
    assertEq(rdpxV2Core.whitelistedContracts(address(dpxETH)), true);

    // Test the revert
    vm.prank(address(3));
    vm.expectRevert(
      "AccessControl: account 0x0000000000000000000000000000000000000003 is missing role 0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    rdpxV2Core.addToContractWhitelist(address(dpxETH));

    // Test the removeFromContractWhitelist function
    rdpxV2Core.removeFromContractWhitelist(address(dpxETH));
    assertEq(rdpxV2Core.whitelistedContracts(address(dpxETH)), false);

    // Test the revert
    vm.prank(address(3));
    vm.expectRevert(
      "AccessControl: account 0x0000000000000000000000000000000000000003 is missing role 0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    rdpxV2Core.removeFromContractWhitelist(address(dpxETH));

    // Test the setBondDiscount function
    uint256 bondDiscountFactor = 5e5;
    rdpxV2Core.setBondDiscount(bondDiscountFactor);
    assertEq(rdpxV2Core.bondDiscountFactor(), bondDiscountFactor);

    // Test the revert
    vm.prank(address(3));
    vm.expectRevert(
      "AccessControl: account 0x0000000000000000000000000000000000000003 is missing role 0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    rdpxV2Core.setBondDiscount(bondDiscountFactor);

    // Test the setSlippageTolerance function
    uint256 slippageTolerance = 10;
    rdpxV2Core.setSlippageTolerance(slippageTolerance);
    assertEq(rdpxV2Core.slippageTolerance(), slippageTolerance);

    // Test the revert
    vm.prank(address(3));
    vm.expectRevert(
      "AccessControl: account 0x0000000000000000000000000000000000000003 is missing role 0x0000000000000000000000000000000000000000000000000000000000000000"
    );
    rdpxV2Core.setSlippageTolerance(slippageTolerance);
  }
}
