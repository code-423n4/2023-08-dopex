// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { Setup } from "./Setup.t.sol";

contract Integration is ERC721Holder, Setup {
  function testIntegration() public {
    // user 1 bonds 10 dpxETH
    uint256 receiptTokens1 = rdpxV2Core.bond(10 * 1e18, 0, address(1));
    // user 2 bonds 10 dpxETH
    rdpxV2Core.bond(10 * 1e18, 0, address(2));

    // update rdpx to (.312 eth)
    address[] memory path;
    path = new address[](2);
    path[0] = address(weth);
    path[1] = address(rdpx);
    router.swapExactTokensForTokens(
      500e18,
      0,
      path,
      address(this),
      block.timestamp
    );
    rdpxPriceOracle.updateRdpxPrice(312 * 1e5);

    // reduce bond discount
    rdpxV2Core.setBondDiscount(5e4);

    // user 3 bonds 5 dpxETH at new price and bond discount
    weth.transfer(address(3), 5e18);
    rdpx.transfer(address(3), 50e18);
    vm.prank(address(3), address(3));
    weth.approve(address(rdpxV2Core), type(uint256).max);
    vm.prank(address(3), address(3));
    rdpx.approve(address(rdpxV2Core), type(uint256).max);
    vm.prank(address(3), address(3));
    rdpxV2Core.bond(5 * 1e18, 0, address(3));

    // skip 5 days
    skip(86400 * 5);

    // delegate 2 weth at 10% fee
    uint256 delegateId1 = rdpxV2Core.addToDelegate(2e18, 10e8);

    // user 1 delegate 5 weth at 20% fee
    weth.transfer(address(1), 5e18);
    vm.prank(address(1), address(1));
    weth.approve(address(rdpxV2Core), type(uint256).max);
    vm.prank(address(1), address(1));
    uint256 delegateId2 = rdpxV2Core.addToDelegate(5e18, 20e8);

    // bond with delegate
    uint256[] memory _amounts = new uint256[](2);
    uint256[] memory _delegateIds = new uint256[](2);
    _delegateIds[0] = delegateId1;
    _delegateIds[1] = delegateId2;
    _amounts[0] = 1 * 1e18;
    _amounts[1] = 1 * 3e18;
    rdpxV2Core.bondWithDelegate(address(this), _amounts, _delegateIds, 0);

    // skip 2 days and update funding payment pointer
    skip(86400 * 2);
    vault.updateFundingPaymentPointer();

    // calculate funding
    uint256[] memory strikes = new uint256[](2);
    strikes[0] = 15e6;
    strikes[1] = 24000000;
    vault.calculateFunding(strikes);

    // bond 1 dpxETH
    rdpxV2Core.bond(1 * 1e18, 0, address(this));

    // provide funding
    vault.addToContractWhitelist(address(rdpxV2Core));

    // send funding to rdpxV2Core and call sync
    uint256 funding = vault.totalFundingForEpoch(
      vault.latestFundingPaymentPointer()
    );
    weth.transfer(address(rdpxV2Core), funding);
    rdpxV2Core.sync();

    rdpxV2Core.provideFunding();

    // bond 1 dpxETH
    rdpxV2Core.bond(1 * 1e18, 0, address(this));

    // skip 7 days
    skip(86400 * 7);
    vault.updateFundingPaymentPointer();
    receiptTokens1 = rdpxV2Core.bond(1 * 1e18, 0, address(this));

    // calculate and pay funding
    vault.calculateFunding(strikes);

    // send funding to rdpxV2Core and call sync
    funding = vault.totalFundingForEpoch(vault.latestFundingPaymentPointer());
    weth.transfer(address(rdpxV2Core), funding);
    rdpxV2Core.sync();
    rdpxV2Core.provideFunding();

    // decrease price of rdpx (0.2weth)
    path[1] = address(weth);
    path[0] = address(rdpx);
    router.swapExactTokensForTokens(
      2000e18,
      0,
      path,
      address(this),
      block.timestamp
    );
    rdpxPriceOracle.updateRdpxPrice(2 * 1e7);

    // settle options
    uint256[] memory ids = new uint256[](6);
    ids[0] = 2;
    ids[1] = 3;
    ids[2] = 4;
    ids[3] = 5;
    ids[4] = 6;
    ids[5] = 7;
    rdpxV2Core.settle(ids);

    // skip 7 days
    skip(86400 * 7);
    vault.updateFundingPaymentPointer();

    // calculate funding
    strikes = new uint256[](1);
    strikes[0] = 15e6;
    vault.calculateFunding(strikes);

    // send funding to rdpxV2Core and call sync
    funding = vault.totalFundingForEpoch(vault.latestFundingPaymentPointer());
    weth.transfer(address(rdpxV2Core), funding);
    rdpxV2Core.sync();

    // provide funding
    rdpxV2Core.provideFunding();
  }
}
