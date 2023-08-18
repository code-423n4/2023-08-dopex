// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { Setup } from "./Setup.t.sol";

// Core contracts
import { RdpxV2Core } from "contracts/core/RdpxV2Core.sol";
import { PerpetualAtlanticVault } from "contracts/perp-vault/PerpetualAtlanticVault.sol";

// Interfaces
import { IStableSwap } from "contracts/interfaces/IStableSwap.sol";

contract Unit is ERC721Holder, Setup {
  function testBond() public {
    uint256 userRdpxBalance = rdpx.balanceOf(address(this));
    uint256 userwethBalance = weth.balanceOf(address(this));
    (uint256 rdpxRequired, uint256 wethRequired) = rdpxV2Core.calculateBondCost(
      1 * 1e18,
      0
    );

    // test bond with amount 1
    uint256 receiptTokenAmount = rdpxV2Core.bond(1 * 1e18, 0, address(this));

    (, uint256 rdpxBalance, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, uint256 wethBalance, ) = rdpxV2Core.getReserveTokenInfo("WETH");
    assertEq(
      rdpxV2ReceiptToken.balanceOf(address(rdpxV2Core)),
      receiptTokenAmount
    );
    assertEq(rdpxBalance, 1275 * 1e15);
    assertEq(wethBalance, 245 * 1e15);

    assertEq(rdpx.balanceOf(address(this)), userRdpxBalance - rdpxRequired);
    assertEq(weth.balanceOf(address(this)), userwethBalance - wethRequired);

    // test with amount 0
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 4)
    );
    rdpxV2Core.bond(0, 0, address(this));

    // test with amount > balance
    vm.expectRevert("ERC20: transfer amount exceeds balance");
    rdpxV2Core.bond(10000000 * 1e18, 0, address(this));

    // test with no allowance
    weth.approve(address(rdpxV2Core), 0);
    vm.expectRevert("ERC20: insufficient allowance");
    rdpxV2Core.bond(1 * 1e18, 0, address(1));

    // bond with no liquidity in app
    weth.approve(address(rdpxV2Core), type(uint256).max);
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        3
      )
    );
    rdpxV2Core.bond(600 * 1e18, 0, address(1));

    // test with rdpx decaying bonds
    rdpxDecayingBonds.grantRole(rdpxDecayingBonds.MINTER_ROLE(), address(this));
    rdpxDecayingBonds.mint(address(this), block.timestamp + 10, 125 * 1e16);
    assertEq(rdpxDecayingBonds.ownerOf(1), address(this));
    rdpxDecayingBonds.approve(address(rdpxV2Core), 1);

    (uint256 rdpxRequiredToBond, ) = rdpxV2Core.calculateBondCost(1 * 1e18, 1);

    rdpxV2Core.bond(1 * 1e18, 1, address(this));

    (, rdpxBalance, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, wethBalance, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(rdpxDecayingBonds.balanceOf(address(this)), 1);
    (, , uint256 amount) = rdpxDecayingBonds.bonds(1);
    assertEq(amount, (125e16 - rdpxRequiredToBond));

    assertEq(rdpxBalance, 2525 * 1e15);
    assertEq(wethBalance, 495 * 1e15);

    // bond multiple times with same decaying bond
    rdpxDecayingBonds.mint(address(this), block.timestamp + 10, 10 * 1e18);
    (, , amount) = rdpxDecayingBonds.bonds(2);
    rdpxV2Core.bond(2 * 1e18, 2, address(this));
    (, , amount) = rdpxDecayingBonds.bonds(2);
    rdpxV2Core.bond(1 * 1e18, 2, address(this));
    (, , amount) = rdpxDecayingBonds.bonds(2);

    // trying to bond with expired bond
    rdpxV2Core.bond(1 * 1e18, 2, address(this));
    skip(15);
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 2)
    );
    rdpxV2Core.bond(1 * 1e18, 2, address(this));
  }

  function testAddToDelegate() public {
    /// add to delegate with different fees
    uint256 userBalance = weth.balanceOf(address(this));
    uint256 delegateId = rdpxV2Core.addToDelegate(50 * 1e18, 10 * 1e8);
    uint256 delgateId2 = rdpxV2Core.addToDelegate(10 * 1e18, 20 * 1e8);
    uint256 delgateId3 = rdpxV2Core.addToDelegate(10 * 1e18, 30 * 1e8);

    // assert that the user balance is reduced by the amount
    assertEq(weth.balanceOf(address(this)), userBalance - 70 * 1e18);
    // assert that delegate positions are correct
    address address1;
    uint256 amount;
    uint256 fee;
    uint256 activeCollateral;
    (address1, amount, fee, activeCollateral) = rdpxV2Core.delegates(
      delegateId
    );
    assertEq(amount, 50 * 1e18);
    assertEq(fee, 10 * 1e8);
    assertEq(activeCollateral, 0);

    (address1, amount, fee, activeCollateral) = rdpxV2Core.getDelegatePosition(
      delgateId2
    );
    assertEq(amount, 10 * 1e18);
    assertEq(fee, 20 * 1e8);
    assertEq(activeCollateral, 0);

    (address1, amount, fee, activeCollateral) = rdpxV2Core.getDelegatePosition(
      delgateId3
    );
    assertEq(amount, 10 * 1e18);
    assertEq(fee, 30 * 1e8);
    assertEq(activeCollateral, 0);

    assertEq(rdpxV2Core.getDelegatesLength(), 3);
    // test 0 amount
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 4)
    );
    rdpxV2Core.addToDelegate(0, 0);
    // test 0% fee
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 8)
    );
    rdpxV2Core.addToDelegate(1 * 1e18, 0);
    // test 100% fee
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 8)
    );
    rdpxV2Core.addToDelegate(1 * 1e18, 100 * 1e8);
  }

  function testBondWithDelegate() public {
    /// add to delegate with different fees
    uint256 delegateId = rdpxV2Core.addToDelegate(50 * 1e18, 10 * 1e8);
    uint256 delgateId2 = rdpxV2Core.addToDelegate(10 * 1e18, 20 * 1e8);

    // address(3) delegates weth
    weth.transfer(address(3), 10 * 1e18);
    vm.prank(address(3));
    weth.approve(address(rdpxV2Core), 10 * 1e18);
    vm.prank(address(3), address(3));
    uint256 delgateId3 = rdpxV2Core.addToDelegate(10 * 1e18, 30 * 1e8);

    // test bond with delegate
    uint256[] memory _amounts = new uint256[](1);
    uint256[] memory _delegateIds = new uint256[](1);
    _delegateIds[0] = 0;
    _amounts[0] = 1 * 1e18;

    // address 1 bonds
    /// check user balance
    uint256 userRdpxBalance = rdpx.balanceOf(address(1));
    uint256 userWethBalance = weth.balanceOf(address(1));

    (uint256 rdpxRequired, uint256 wethRequired) = rdpxV2Core.calculateBondCost(
      1 * 1e18,
      0
    );

    vm.prank(address(1));
    rdpx.approve(address(rdpxV2Core), 2 * 1e18);
    vm.prank(address(1), address(1));
    (uint256 userAmount, uint256[] memory delegateAmounts) = rdpxV2Core
      .bondWithDelegate(address(1), _amounts, _delegateIds, 0);

    // check the correct amounts have been transferred
    assertEq(rdpx.balanceOf(address(1)), userRdpxBalance - rdpxRequired);
    assertEq(weth.balanceOf(address(1)), userWethBalance);
    uint256 amount;
    uint256 activeCollateral;
    (, amount, , activeCollateral) = rdpxV2Core.delegates(delegateId);
    assertEq(amount, 50 * 1e18);
    assertEq(activeCollateral, wethRequired);
    assertEq(
      rdpxV2ReceiptToken.balanceOf(address(rdpxV2Core)),
      userAmount + delegateAmounts[0]
    );

    // assert token reserves
    (, uint256 rdpxBalance, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, uint256 wethBalance, ) = rdpxV2Core.getReserveTokenInfo("WETH");
    assertEq(rdpxBalance, 1275 * 1e15);
    assertGt(wethBalance, 245 * 1e15);

    // test bond with delegate with multiple delegates
    _amounts = new uint256[](3);
    _delegateIds = new uint256[](3);
    _delegateIds[0] = delegateId;
    _delegateIds[1] = delgateId2;
    _delegateIds[2] = delgateId3;
    _amounts[0] = 1 * 10e18;
    _amounts[1] = 1 * 1e18;
    _amounts[2] = 1 * 5e18;
    rdpxV2Core.bondWithDelegate(address(this), _amounts, _delegateIds, 0);

    // assert reserves and balances
    (, rdpxBalance, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, wethBalance, ) = rdpxV2Core.getReserveTokenInfo("WETH");
    assertEq(rdpxBalance, 21661625099000000000);
    assertEq(wethBalance, 4167674980200000002);
    assertEq(
      rdpxV2ReceiptToken.balanceOf(address(rdpxV2Core)),
      4249999999999999998
    );

    // test with amount 0
    _amounts = new uint256[](1);
    _delegateIds = new uint256[](1);
    _delegateIds[0] = 0;
    _amounts[0] = 0;
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 4)
    );
    rdpxV2Core.bondWithDelegate(address(this), _amounts, _delegateIds, 0);

    // test with amount greater than available delegate amount
    _amounts = new uint256[](1);
    _delegateIds = new uint256[](1);
    _delegateIds[0] = 0;
    _amounts[0] = 100 * 1e18;
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 5)
    );
    rdpxV2Core.bondWithDelegate(address(this), _amounts, _delegateIds, 0);
  }

  function testSettle() public {
    rdpxV2Core.bond(5 * 1e18, 0, address(this));
    rdpxV2Core.bond(1 * 1e18, 0, address(this));

    (, uint256 rdpxReserve1, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, uint256 wethReserve1, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    vault.addToContractWhitelist(address(rdpxV2Core));
    uint256[] memory _ids = new uint256[](1);

    // test OTM options
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        7
      )
    );
    rdpxV2Core.settle(_ids);

    // settle invalid option id
    _ids[0] = 1;
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        7
      )
    );
    rdpxV2Core.settle(_ids);

    (uint256 strike1, uint256 amount1, ) = vault.optionPositions(0);

    // test ITM options
    _ids[0] = 0;
    rdpxPriceOracle.updateRdpxPrice(1e7);
    rdpxV2Core.settle(_ids);

    (, uint256 rdpxReserve2, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, uint256 wethReserve2, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(rdpxReserve1 - amount1, rdpxReserve2);
    assertEq(wethReserve1 + ((amount1 * strike1) / 1e8), wethReserve2);

    rdpxV2Core.bond(10 * 1e18, 0, address(this));
    rdpxV2Core.bond(1 * 1e18, 0, address(this));

    (, rdpxReserve1, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, wethReserve1, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    // test for multiple options with settled option id
    _ids = new uint256[](3);
    _ids[0] = 0;
    _ids[1] = 2;
    _ids[2] = 3;
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        7
      )
    );
    rdpxV2Core.settle(_ids);

    // settle multiple options at different strikes
    _ids[0] = 1;
    _ids[1] = 2;
    _ids[2] = 3;

    (strike1, amount1, ) = vault.optionPositions(1);
    (uint256 strike2, uint256 amount2, ) = vault.optionPositions(2);
    (uint256 strike3, uint256 amount3, ) = vault.optionPositions(3);

    rdpxPriceOracle.updateRdpxPrice(1e6);
    rdpxV2Core.settle(_ids);

    (, rdpxReserve2, ) = rdpxV2Core.getReserveTokenInfo("RDPX");
    (, wethReserve2, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(rdpxReserve1 - amount1 - amount2 - amount3, rdpxReserve2);
    assertEq(
      wethReserve1 +
        ((amount1 * strike1) / 1e8) +
        ((amount2 * strike2) / 1e8) +
        ((amount3 * strike3) / 1e8),
      wethReserve2
    );
  }

  function testWithdraw() public {
    rdpxV2Core.addToDelegate(1 * 1e18, 10e8);

    // test withdraw with invalid delegate id
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 14)
    );
    rdpxV2Core.withdraw(1);

    // test withdraw without ownership
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 9)
    );
    vm.prank(address(1), address(1));
    rdpxV2Core.withdraw(0);

    // test withdraw successfully
    uint256 userBalance = weth.balanceOf(address(this));
    rdpxV2Core.withdraw(0);
    assertEq(weth.balanceOf(address(this)), userBalance + 1 * 1e18);
    (, uint256 amount, , uint256 activeCollateral) = rdpxV2Core.delegates(0);
    assertEq(amount, 0);
    assertEq(activeCollateral, 0);

    // test withdraw with 0 amount
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 15)
    );
    rdpxV2Core.withdraw(0);

    // test partial amount
    rdpxV2Core.addToDelegate(2 * 1e18, 10e8);
    uint256[] memory _amounts = new uint256[](1);
    uint256[] memory _delegateIds = new uint256[](1);
    _delegateIds[0] = 1;
    _amounts[0] = 2 * 1e18;
    userBalance = weth.balanceOf(address(this));
    (, amount) = rdpxV2Core.calculateBondCost(2e18, 0);
    rdpxV2Core.bondWithDelegate(address(this), _amounts, _delegateIds, 0);
    rdpxV2Core.withdraw(1);
    assertEq(weth.balanceOf(address(this)), userBalance + (2e18 - amount));
  }

  function testUpperDepeg() public {
    // test upper depeg while price is lower than depeg
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 10)
    );
    rdpxV2Core.upperDepeg(10e18, 10e18);

    // swap weth for dpxETH (price after swap 103012950)
    dpxETH.approve(address(curvePool), 200 * 1e18);
    address coin0 = IStableSwap(curvePool).coins(0);
    if (coin0 == address(weth)) {
      IStableSwap(curvePool).exchange(0, 1, 130 * 1e18, 0);
    } else {
      IStableSwap(curvePool).exchange(1, 0, 130 * 1e18, 0);
    }

    // test upper depeg while price is higher than depeg with invalid amount
    dpxEthPriceOracle.updateDpxEthPrice(103012950);
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 14)
    );
    rdpxV2Core.upperDepeg(150e18, 150e18);

    // test upper depeg while price is higher than depeg with valid amount
    (, uint256 wethReserve1, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    rdpxV2Core.upperDepeg(10e18, 10e18);

    (, uint256 wethReserve2, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(10265482896819515029, wethReserve2 - wethReserve1);
  }

  function testlowerDepeg() public {
    // send rdpx and weth to rdpxV2Core
    rdpx.transfer(address(rdpxV2Core), 800 * 1e18);
    weth.transfer(address(rdpxV2Core), 20 * 1e18);
    rdpxV2Core.sync();
    // test lower depeg while price is higher than depeg
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 13)
    );
    rdpxV2Core.lowerDepeg(10e18, 0, 0, 0);

    // swap dpxETH for weth (price after swap 98137847)
    dpxETH.approve(address(curvePool), 200 * 1e18);
    dpxETH.mint(address(this), 200 * 1e18);
    address coin0 = IStableSwap(curvePool).coins(0);
    if (coin0 == address(weth)) {
      IStableSwap(curvePool).exchange(1, 0, 110 * 1e18, 0);
    } else {
      IStableSwap(curvePool).exchange(0, 1, 110 * 1e18, 0);
    }

    // test lower depeg while price is lower than depeg with invalid amount
    dpxEthPriceOracle.updateDpxEthPrice(98137847);

    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 14)
    );
    rdpxV2Core.lowerDepeg(800e18, 0, 0, 0);

    // test lower depeg while price is lower than depeg with valid amount using only rdpx
    (, uint256 rdpxReserve1, ) = rdpxV2Core.getReserveTokenInfo("RDPX");

    rdpxV2Core.lowerDepeg(5e18, 0, 0, 0);

    (, uint256 rdpxReserve2, ) = rdpxV2Core.getReserveTokenInfo("RDPX");

    assertEq(rdpxReserve2, rdpxReserve1 - 5e18);

    // test lower depeg while price is lower than depeg with valid amount using only weth
    (, uint256 wethReserve1, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    rdpxV2Core.lowerDepeg(0, 5e18, 0, 0);

    (, uint256 wethReserve2, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(wethReserve2, wethReserve1 - 5e18);

    // test lower depeg while price is lower than depeg with valid amount using both rdpx and weth
    rdpxV2Core.lowerDepeg(10e18, 10e18, 0, 0);

    (, rdpxReserve1, ) = rdpxV2Core.getReserveTokenInfo("RDPX");

    (, wethReserve1, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(wethReserve1, wethReserve2 - 10e18);
    assertEq(rdpxReserve1, rdpxReserve2 - 10e18);
  }

  function testPayFunding() public {
    rdpxV2Core.bond(10 * 1e18, 0, address(1));
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
    rdpxV2Core.bond(5 * 1e18, 0, address(3));
    skip(86400 * 7);
    vault.addToContractWhitelist(address(rdpxV2Core));
    vault.updateFundingPaymentPointer();

    // test without calculating funding for all strikes
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        6
      )
    );
    rdpxV2Core.provideFunding();

    // test funding succesfully
    uint256[] memory strikes = new uint256[](2);
    strikes[0] = 15e6;
    strikes[1] = 24000000;
    vault.calculateFunding(strikes);

    uint256 funding = vault.totalFundingForEpoch(
      vault.latestFundingPaymentPointer()
    );

    // send funding to rdpxV2Core and call sync
    weth.transfer(address(rdpxV2Core), funding);
    rdpxV2Core.sync();
    (, uint256 wethReserves, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    uint256 fundingAmount = rdpxV2Core.provideFunding();

    (, uint256 wethReserves2, ) = rdpxV2Core.getReserveTokenInfo("WETH");

    assertEq(wethReserves2, wethReserves - fundingAmount);

    // test provide funding twice
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 16)
    );
    rdpxV2Core.provideFunding();
  }

  function testBondWithoutOptions() public {
    uint256 optionBalance = vault.balanceOf(address(rdpxV2Core));
    assertEq(optionBalance, 0);
    testBond();

    // change options requirement
    rdpxV2Core.setPutOptionsRequired(false);

    optionBalance = vault.balanceOf(address(rdpxV2Core));
    assertGt(optionBalance, 0);
    // bond without options
    rdpxV2Core.bond(1 * 1e18, 0, address(this));

    uint256 optionBalance2 = vault.balanceOf(address(rdpxV2Core));
    assertEq(optionBalance, optionBalance2);
  }

  function testBondWithDelegateMintDecayRiptide() public {
    /// add to delegate with different fees
    rdpxV2Core.addToDelegate(50 * 1e18, 10 * 1e8);
    rdpxV2Core.addToDelegate(10 * 1e18, 20 * 1e8);

    // test bond with delegate
    uint256[] memory _amounts = new uint256[](1);
    uint256[] memory _delegateIds = new uint256[](1);
    _delegateIds[0] = 0;
    _amounts[0] = 1 * 1e18;

    // test with rdpx bonds
    rdpxDecayingBonds.grantRole(rdpxDecayingBonds.MINTER_ROLE(), address(this));
    rdpxDecayingBonds.mint(address(this), block.timestamp + 10, 125 * 1e16);
    rdpxDecayingBonds.approve(address(rdpxV2Core), 1);

    vm.startPrank(address(9), address(9));
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 9)
    );
    rdpxV2Core.bondWithDelegate(address(9), _amounts, _delegateIds, 1);
    vm.stopPrank();
  }

  function testRedeem() public {
    rdpxV2Core.bond(1 * 1e18, 0, address(this));

    // test redeem before expiry
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 7)
    );
    rdpxV2Core.redeem(0, address(1));

    skip(86401 * 5);

    // test redeem with no allowance
    vm.expectRevert("ERC721: caller is not token owner or approved");
    rdpxV2Core.redeem(0, address(1));

    // test redeem for active bond but not owner
    vm.prank(address(1), address(1));
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 9)
    );
    rdpxV2Core.redeem(0, address(1));

    // test redeem after expiry
    rdpxV2Bond.approve(address(rdpxV2Core), 0);
    rdpxV2Core.redeem(0, address(1));
    assertEq(rdpxV2Bond.balanceOf(address(this)), 0);
    assertEq(rdpxV2ReceiptToken.balanceOf(address(1)), 25 * 1e16);

    // test redeeming the same bond multiple times
    vm.expectRevert("ERC721: invalid token ID");
    rdpxV2Core.redeem(0, address(1));

    // test invalid bond id
    vm.expectRevert(
      abi.encodeWithSelector(RdpxV2Core.RdpxV2CoreError.selector, 6)
    );
    rdpxV2Core.redeem(100, address(1));
  }
}
