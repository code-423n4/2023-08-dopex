// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { Setup } from "./Setup.t.sol";
import { PerpetualAtlanticVault } from "contracts/perp-vault/PerpetualAtlanticVault.sol";

/*
  Unit tests for core contract functions
  - Deposit x
  - Withdraw
  - withdrawUnusedCollateral
  - settle x
  - purchase x
  internal:
  - _mintPositionToken
  - _updateRdpxV2ReceiptToken
  - updateFunding(position,strike
  - updateFunding(position,collateralUsed,amount,strike)
  - _squeeze()
  - _updateWritePosition(positionId,pnl,amount,strike)
  other
  - updateFunding(tokenId) public
  - all views
*/

contract Unit is ERC721Holder, Setup {
  // ================================ HELPERS ================================ //

  function purchaseOneOption() public {
    testDeposit();
    vault.purchase(1 ether, address(this));
  }

  function mintWeth(uint256 _amount, address _to) public {
    weth.mint(_to, _amount);
  }

  function mintRdpx(uint256 _amount, address _to) public {
    rdpx.mint(_to, _amount);
  }

  function deposit(uint256 _amount, address _from) public {
    vm.startPrank(_from, _from);
    rdpx.approve(address(vault), type(uint256).max);
    rdpx.approve(address(vaultLp), type(uint256).max);
    weth.approve(address(vault), type(uint256).max);
    weth.approve(address(vaultLp), type(uint256).max);
    vaultLp.deposit(_amount, address(1));
    vm.stopPrank();
  }

  // ================================ CORE ================================ //

  function testDeposit() public {
    vault.setLpAllowance(true);
    uint256 lpBalanceBefore = weth.balanceOf(address(vaultLp));
    assertEq(lpBalanceBefore, 0);

    deposit(100 ether, address(this));

    uint256 lpBalanceAfter = weth.balanceOf(address(vaultLp));
    assertEq(lpBalanceAfter, 100 ether);
  }

  function testDepositZero() public {
    vm.expectRevert("ZERO_SHARES");
    vaultLp.deposit(0 ether, address(this));
  }

  function testPurchase() external {
    testDeposit(); // totalCollateral = 100 ether

    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        3
      )
    );
    vault.purchase(700 ether, address(this)); // 0.15 strike * 700 amount > 100 totalCollateral
    vault.purchase(500 ether, address(this));

    uint256 timeTillExpiry = vault.nextFundingPaymentTimestamp() -
      block.timestamp;
    uint256 premium = vault.calculatePremium(
      0.015 gwei,
      500 ether,
      timeTillExpiry,
      0.02 gwei
    ); // 25 eth
    uint256 balance = vaultLp.totalAvailableCollateral();
    assertLe(balance, 100 ether + premium - 75 ether); // 100 initial deposit + 25 rdpx proceeds - 75 eth active collateral (0.15 strike * 500 options)
    skip(86400 * 2);

    vault.purchase(250 ether, address(this)); // 50 weth balance

    balance = vaultLp.totalAvailableCollateral();
    assertLe(balance, 12.5 ether); // ~12.5 weth balance
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        3
      )
    );
    vault.purchase(300 ether, address(this));
  }

  function testCalculatePremium() external {
    uint256 pnl = vault.calculatePnl(0.01 gwei, 0.015 gwei, 1 ether);
    assertEq(pnl, 0.05 ether);
  }

  function testRoundUp() external {
    uint256 rounded = vault.roundUp(0.015 gwei);
    assertEq(rounded, 0.015 gwei);
    rounded = vault.roundUp(0.0151 gwei);
    assertEq(rounded, 0.016 gwei);
  }

  function testGetVolatility() external {
    uint256 strike = 0.015 gwei;
    uint256 vol = vault.getVolatility(strike); // mock 100 iv
    assertEq(vol, 100);
  }

  // bug: updateUnderlyingPrice does not update price, getUnderlyingPrice() will use amm price
  function testSettle() public {
    weth.mint(address(1), 1 ether);
    deposit(1 ether, address(1));

    vault.purchase(1 ether, address(this));

    uint256[] memory ids = new uint256[](1);
    ids[0] = 0;
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        7
      )
    );
    vault.settle(ids);

    priceOracle.updateRdpxPrice(0.2 gwei); // initial price * 10
    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;
    skip(86500); // expire
    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        7
      )
    );
    vault.settle(ids);

    priceOracle.updateRdpxPrice(0.010 gwei); // ITM
    uint256 wethBalanceBefore = weth.balanceOf(address(this));
    uint256 rdpxBalanceBefore = rdpx.balanceOf(address(this));
    vault.settle(ids);
    uint256 wethBalanceAfter = weth.balanceOf(address(this));
    uint256 rdpxBalanceAfter = rdpx.balanceOf(address(this));

    assertEq(wethBalanceAfter - wethBalanceBefore, 0.15 ether); // asset settled; 1 rdpx worth of ether received by rdpxV2Core
    assertEq(rdpxBalanceBefore - rdpxBalanceAfter, 1 ether); // asset settled; 1 rdpx sent from rdpxV2Core to lp
  }

  function testRedeem() external {
    rdpx.mint(address(1), 10 ether);
    weth.mint(address(1), 1 ether);

    deposit(1 ether, address(1));

    (, uint256 id) = vault.purchase(1 ether, address(this)); // purchases for epoch 1; send 0.05 weth premium
    uint256[] memory optionIds = new uint256[](1);
    optionIds[0] = id;

    skip(86500); // expire
    priceOracle.updateRdpxPrice(0.010 gwei);
    vault.updateFundingPaymentPointer();

    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;
    uint256 fundingAccrued = vault.calculateFunding(strikes);
    vault.payFunding();

    assertEq(fundingAccrued, 0.05 ether);
    assertLe(
      1 ether + 0.05 ether - vaultLp.totalCollateral(),
      1000 gwei // block.timestamp ensued dust
    ); // initial deposit + epoch 1 funding

    priceOracle.updateRdpxPrice(0.01 gwei);
    (uint256 ethAmount, uint256 rdpxAmount) = vault.settle(optionIds);

    assertEq(ethAmount, 0.15 ether);
    assertEq(rdpxAmount, 1 ether);

    vm.startPrank(address(1), address(1));
    vaultLp.approve(address(vault), 0.1 ether); // for coverage
    vaultLp.approve(address(vault), type(uint256).max);
    uint256 balance = vaultLp.balanceOf(address(1));
    vm.expectRevert("ZERO_ASSETS");
    (ethAmount, rdpxAmount) = vaultLp.redeem(0, address(1), address(1));

    vm.expectRevert();
    vaultLp.redeem(1, address(1), address(this));
    skip(86400);
    vault.updateFunding();
    (ethAmount, rdpxAmount) = vaultLp.redeem(balance, address(1), address(1));
    assertGt(ethAmount, 0.9499999999 ether); // asset settled, lose 0.05 ether (0.15 strike - 0.1 current price); receive 1 rdpx
    assertLt(ethAmount, 0.95 ether); // 1 to 3 gwei lost in precision
    assertEq(rdpxAmount, 1 ether);
    vm.stopPrank();
  }

  function testRedeemOnBehalfOf() external {
    rdpx.mint(address(1), 10 ether);
    weth.mint(address(1), 1 ether);

    deposit(1 ether, address(1));

    (, uint256 id) = vault.purchase(1 ether, address(this)); // purchases for epoch 1
    uint256[] memory optionIds = new uint256[](1);
    optionIds[0] = id;
    skip(86500 / 2);
    vault.updateFunding();
    skip(86500 / 2); // expire
    priceOracle.updateRdpxPrice(0.010 gwei);

    vault.updateFundingPaymentPointer();

    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;

    vault.calculateFunding(strikes);
    vault.payFunding();

    vault.settle(optionIds);
    vm.startPrank(address(1), address(1));
    vaultLp.approve(address(vault), type(uint256).max);
    uint256 balance = vaultLp.balanceOf(address(1));
    skip(86500); // expire
    vault.updateFunding();
    (uint256 ethAmount, uint256 rdpxAmount) = vaultLp.redeem(
      balance,
      address(2),
      address(1)
    ); // on behalf of address 2
    assertGt(ethAmount, 0.9499999999 ether); // precision loss of 1-3 gwei
    assertLt(ethAmount, 0.95 ether);
    assertEq(rdpxAmount, 1 ether);
    vm.stopPrank();
  }

  // test for verifying funding is updated correctly and withdrawableCollateral is updated correctly
  function testFunding() public {
    // mint 1 weth to address 1, address 1 LPs 1 weth, rdpxV2Core purchases 1 option, update price to <strike, calculate funding
    weth.mint(address(1), 1 ether);
    deposit(1 ether, address(1));

    vault.purchase(1 ether, address(this));
    priceOracle.updateRdpxPrice(0.014 gwei);
    skip(86500); // skip to expiry
    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;
    vault.payFunding();
  }

  function testFundingAccruedForOneOption() external {
    purchaseOneOption();
    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;
    skip(86500);
    vault.updateFundingPaymentPointer();
    uint256 fundingAccrued = vault.calculateFunding(strikes);
    assertEq(0.05 ether, fundingAccrued); // 1 option = 0.05 weth premium
  }

  function testUpdateFundingPaymentPointer() external {
    uint256 pointer = vault.latestFundingPaymentPointer();
    assertEq(pointer, 0);
    skip(86500); // expire
    vault.updateFundingPaymentPointer();
    pointer = vault.latestFundingPaymentPointer();
    assertEq(pointer, 1);
    skip(86500);
    purchaseOneOption(); // updates payment pointer if block.timestamp > nextFundingPaymentTimestamp
    pointer = vault.latestFundingPaymentPointer();
    assertEq(pointer, 2);
  }

  function testMockups() external {
    deposit(1 ether, address(this));
    assertEq(vaultLp.totalCollateral(), 1 ether);
    assertEq(vaultLp.totalAvailableCollateral(), 1 ether);
    assertEq(vaultLp.activeCollateral(), 0 ether);
    assertEq(vault.latestFundingPaymentPointer(), 0);

    uint256 currentEpoch = vault.latestFundingPaymentPointer();

    vault.purchase(1 ether, address(1));

    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;
    assertEq(vault.totalActiveOptions(), 1 ether);
    assertEq(vault.totalFundingForEpoch(currentEpoch), 0);

    skip(86500);
    vault.updateFundingPaymentPointer(); // expire epoch 1, release funding/premium accrued in that epoch
    currentEpoch = vault.latestFundingPaymentPointer();
    vault.calculateFunding(strikes);
    vault.payFunding();

    skip(86500);
    vault.updateFundingPaymentPointer(); // expire epoch 1, release funding/premium accrued in that epoch
    currentEpoch = vault.latestFundingPaymentPointer();
    vault.calculateFunding(strikes);
    vault.payFunding();

    skip(86400 / 2);
    vault.updateFunding();

    vault.purchase(1 ether, address(1));

    skip(86400 / 2);
    vault.updateFundingPaymentPointer(); // expire epoch 1, release funding/premium accrued in that epoch
    vault.calculateFunding(strikes);
    vault.payFunding();
  }

  // note coverage for unused snippets
  function testSupportsInterface() external {
    bool _supportsInterface = vault.supportsInterface(
      type(IERC721).interfaceId
    );

    assertEq(_supportsInterface, true);
  }

  // note for coverage
  function testUnusedOverrides() external {
    vaultLp.previewDeposit(0);
    vaultLp.redeemPreview(0);
    uint256 shares = vaultLp.convertToShares(1 ether);
    assertEq(shares, 1 ether);
    vaultLp.totalCollateral();
  }
}
