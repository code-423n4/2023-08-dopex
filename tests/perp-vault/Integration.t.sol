// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { Setup } from "./Setup.t.sol";
import { PerpetualAtlanticVault } from "contracts/perp-vault/PerpetualAtlanticVault.sol";

contract Integration is ERC721Holder, Setup {
  // ================================ HELPERS ================================ //
  function mintWeth(uint256 _amount, address _to) public {
    weth.mint(_to, _amount);
  }

  function mintRdpx(uint256 _amount, address _to) public {
    rdpx.mint(_to, _amount);
  }

  function deposit(uint256 _amount, address _from) public {
    vm.startPrank(_from, _from);
    vaultLp.deposit(_amount, _from);
    vm.stopPrank();
  }

  function purchase(uint256 _amount, address _as) public returns (uint256 id) {
    vm.startPrank(_as, _as);
    (, id) = vault.purchase(_amount, _as);
    vm.stopPrank();
  }

  function setApprovals(address _as) public {
    vm.startPrank(_as, _as);
    rdpx.approve(address(vault), type(uint256).max);
    rdpx.approve(address(vaultLp), type(uint256).max);
    weth.approve(address(vault), type(uint256).max);
    weth.approve(address(vaultLp), type(uint256).max);
    vm.stopPrank();
  }

  // ================================ CORE ================================ //

  /**
  Assumptions & config:
    - address(this) is impersonating the rdpxV2Core contract
    - premium per option: 0.05 weth
    - epoch duration: 1 day; 86400 seconds
    - initial price of rdpx: 0.2 weth
    - pricing precision is in 0.1 gwei
    - premium precision is in 0.1 gwei
    - rdpx and weth denomination in wei
  **/
  // epoch 1
  // address(1) deposits 5 weth
  // address 2 deposits 20 weth
  // address 3 deposits 25 weth
  // check shares in LP contract; user1, user2, user3 = 10%, 40%, 50% respectively.
  // rdpxV2Core purchases 100 options (0.05 ether * 100 = 5 ether) at strike 0.15 (25% OTM of initial price; 0.20)
  // check active collateral, total collateral, available collateral
  // rdpx crabs; try settle
  // rdpx dumps 0.20 -> 0.10; settle
  // user 2 and 3 redeem
  // check new unwound balances of user 2 and 3
  // expire epoch
  // epoch 2
  // payFunding
  // check user 1's accrued premium
  // expire epoch
  // epoch 3
  // check user 1's accrued premium
  // settle at same/previous price; 0.1 eth
  // user 1 redeems
  // check user 1 unwound balance
  // check for dust in LP
  function testIntegration() external {
    setApprovals(address(1));
    setApprovals(address(2));
    setApprovals(address(3));

    mintWeth(5 ether, address(1));
    mintWeth(20 ether, address(2));
    mintWeth(25 ether, address(3));

    deposit(5 ether, address(1));
    deposit(20 ether, address(2));
    deposit(25 ether, address(3));

    uint256 userBalance = vaultLp.balanceOf(address(1));
    assertEq(userBalance, 5 ether);
    userBalance = vaultLp.balanceOf(address(2));
    assertEq(userBalance, 20 ether);
    userBalance = vaultLp.balanceOf(address(3));
    assertEq(userBalance, 25 ether);

    // premium = 100 * 0.05 weth = 5 weth
    uint256 tokenId = purchase(100 ether, address(this)); // 0.015 gwei * 100 ether / 0.1 gwei = 15 ether collateral activated

    assertEq(vaultLp.activeCollateral(), 15 ether);

    assertEq(vault.latestFundingPaymentPointer(), 0); //  current epoch; epoch = 0

    skip(86500); // expires epoch 1
    vault.updateFunding();
    assertGt(vaultLp.totalAvailableCollateral(), 39.99999999 ether); // 50 total - 15 active + 5 premium
    assertLt(vaultLp.totalAvailableCollateral(), 40 ether); // precision loss of 1-3 gwei
    assertGt(vaultLp.totalCollateral(), 54.99999999 ether); // 50 deposit + 5 weth premium
    assertLt(vaultLp.totalCollateral(), 55 ether); // precision loss of 1-3 gwei

    vault.updateFundingPaymentPointer();
    assertEq(vault.latestFundingPaymentPointer(), 1); //  expire; new epoch = 1

    uint256[] memory strikes = new uint256[](1);
    strikes[0] = 0.015 gwei;
    uint256 fundingAccrued = vault.calculateFunding(strikes);

    assertEq(fundingAccrued, 5 ether);

    vm.startPrank(address(this), address(this));
    uint256[] memory tokenIds = new uint256[](1);
    tokenIds[0] = tokenId;

    vm.expectRevert(
      abi.encodeWithSelector(
        PerpetualAtlanticVault.PerpetualAtlanticVaultError.selector,
        7
      )
    );
    vault.settle(tokenIds);
    // Cannot settle if not ITM

    priceOracle.updateRdpxPrice(0.010 gwei);
    (uint256 ethAmount, uint256 rdpxAmount) = vault.settle(tokenIds);
    vm.stopPrank();

    assertEq(ethAmount, 15 ether);
    assertEq(rdpxAmount, 100 ether);
    // 100 options asset-settled => transfer 100 rdpx to LP, receive 15 active ether

    assertEq(rdpx.balanceOf(address(vaultLp)), 100 ether);
    assertGt(weth.balanceOf(address(vaultLp)), 39.999999999 ether);
    assertLt(weth.balanceOf(address(vaultLp)), 40 ether); // precision loss of 1-3 gwei
    // OK

    userBalance = vaultLp.balanceOf(address(1));
    (uint256 a, uint256 b) = vaultLp.redeemPreview(userBalance);
    assertGt(a + b, 3.999999999 ether + 10 ether); // for the sake of testing; the sum of user's (rdpx share + weth share) is asserted instead of individually
    assertLt(a + b, 4 ether + 10 ether); // precision loss of 1-3 gwei
    userBalance = vaultLp.balanceOf(address(2));
    (a, b) = vaultLp.redeemPreview(userBalance);
    assertGt(a + b, 15.999999999 ether + 40 ether);
    assertLt(a + b, 16 ether + 40 ether); // precision loss of 1-3 gwei
    userBalance = vaultLp.balanceOf(address(3));
    (a, b) = vaultLp.redeemPreview(userBalance);
    assertGt(a + b, 19.999999999 ether + 50 ether);
    assertLt(a + b, 20 ether + 50 ether); // precision loss of 1-3 gwei

    vm.startPrank(address(2), address(2));
    userBalance = vaultLp.balanceOf(address(2));
    vaultLp.redeem(userBalance, address(2), address(2));
    vm.stopPrank();

    vm.startPrank(address(3), address(3));
    userBalance = vaultLp.balanceOf(address(3));
    vaultLp.redeem(vaultLp.balanceOf(address(3)), address(3), address(3));
    vm.stopPrank();

    priceOracle.updateRdpxPrice(0.04 gwei);
    tokenId = purchase(10 ether, address(this));
    // premium = 10 * 0.05 weth => 0.5 weth
    // strike = 0.03 gwei => requiredCollateral = 0.03 gwei * 10 ether / 0.1 gwei = 3 ether

    assertEq(vaultLp.totalCollateral(), 4 ether); // 4.0 ether totalCollateral
    assertEq(vaultLp.totalAvailableCollateral(), 4 ether - 3 ether); // 1.0 ether totalAvailableCollateral

    strikes[0] = 0.03 gwei;

    skip(86500); // expire epoch 2
    vault.updateFunding();
    assertGt(vaultLp.totalCollateral(), 4 ether + 0.499999999 ether); // 4.5 ether totalCollateral after funded vestin is done
    assertLt(vaultLp.totalCollateral(), 4 ether + 0.5 ether); // precision loss of 1-3 gwei
    assertGt(
      vaultLp.totalAvailableCollateral(),
      4 ether - 3 ether + 0.499999999 ether
    ); // 1.5 ether totalAvailableCollateral after funded vesting is done
    assertLt(vaultLp.totalAvailableCollateral(), 4 ether - 3 ether + 0.5 ether); // precision loss of 1-3 gwei

    vault.updateFundingPaymentPointer();
    fundingAccrued = vault.calculateFunding(strikes);
    vault.payFunding();
    assertEq(vault.latestFundingPaymentPointer(), 2); // user 1 receives 0.05 weth

    skip(86500); // expire epoch 3

    vault.updateFundingPaymentPointer();
    fundingAccrued = vault.calculateFunding(strikes);
    vault.payFunding();
    assertEq(vault.latestFundingPaymentPointer(), 3);

    skip(86400); // expire epoch 4
    vault.updateFunding();

    uint256 lpBalance = vaultLp.totalCollateral();

    assertGt(lpBalance, 4.5 ether + 0.499999999 ether + 0.5 ether); // funding paid for the last two epochs
    assertLt(lpBalance, 4.5 ether + 0.5 ether + 0.5 ether); // precision loss of 1-3 gwei

    priceOracle.updateRdpxPrice(0.025 gwei);

    tokenIds[0] = tokenId;

    (ethAmount, rdpxAmount) = vault.settle(tokenIds);

    // 10 options settled => option buyer receives 3 weth, sends 10 rdpx to LP
    assertEq(ethAmount, 3 ether);
    assertEq(rdpxAmount, 10 ether);

    lpBalance = vaultLp.totalCollateral();
    assertGt(lpBalance, 2.499999999 ether);
    assertLt(lpBalance, 2.5 ether); // precision loss of 1-3 gwei

    userBalance = vaultLp.balanceOf(address(1));
    (a, b) = vaultLp.redeemPreview(userBalance);

    // 4 weth previous LP balance
    // + 0.5 weth premium
    // + 10 rdpx (gained from epoch 1 settlement)
    // + 2*0.5 weth (funding accrued across epoch 2 and 3]
    // - 3 weth (loss from epoch 3 settlement)
    // + 10 rdpx (gained from epoch 3 settlement)
    assertGt(
      a + b,
      4.5 ether + 10 ether + (fundingAccrued * 2) - 3 ether + 9.999999999 ether
    );
    assertLt(
      a + b,
      4.5 ether + 10 ether + (fundingAccrued * 2) - 3 ether + 10 ether
    ); // precision loss of 1-3 gwei

    vm.startPrank(address(1), address(1));
    vaultLp.redeem(userBalance, address(1), address(1));
    vm.stopPrank();

    assertGt(weth.balanceOf(address(1)), 2.499999999 ether);
    assertLt(weth.balanceOf(address(1)), 2.5 ether); // precision loss of 1-3 gwei
    assertEq(rdpx.balanceOf(address(1)), 20 ether);
    assertEq(weth.balanceOf(address(vaultLp)), 0 ether);
    assertEq(rdpx.balanceOf(address(vaultLp)), 0 ether);
    // OK
  }
}
