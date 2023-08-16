// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";

// imports for perpetual atlantic vault
import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { PerpetualAtlanticVault } from "contracts/perp-vault/PerpetualAtlanticVault.sol";
import { PerpetualAtlanticVaultLP } from "contracts/perp-vault/PerpetualAtlanticVaultLP.sol";
import { MockToken } from "contracts/mocks/MockToken.sol";
import { MockRdpxEthPriceOracle } from "contracts/mocks/MockRdpxEthPriceOracle.sol";
import { MockDpxEthPriceOracle } from "contracts/mocks/MockDpxEthPriceOracle.sol";
import { MockVolatilityOracle } from "contracts/mocks/MockVolatilityOracle.sol";
import { MockOptionPricing } from "contracts/mocks/MockOptionPricing.sol";
import { MockStakingStrategy } from "contracts/mocks/MockStakingStrategy.sol";
import { MockRdpxV2ReceiptToken } from "contracts/mocks/MockRdpxV2ReceiptToken.sol";
import { UniV2LiquidityAMO } from "contracts/amo/UniV2LiquidityAMO.sol";
import { UniV3LiquidityAMO } from "contracts/amo/UniV3LiquidityAMO.sol";

// imporrt uni v2 interfaces
import { IUniswapV2Factory } from "contracts/uniswap_V2/IUniswapV2Factory.sol";
import { IUniswapV2Pair } from "contracts/uniswap_V2/IUniswapV2Pair.sol";
import { IUniswapV2Router } from "contracts/uniswap_V2/IUniswapV2Router.sol";

// Reserve
import { RdpxReserve } from "contracts/reserve/RdpxReserve.sol";

// rdpxV2Core & dpxETH
import { RdpxV2Core } from "contracts/core/RdpxV2Core.sol";
import { RdpxV2Bond } from "contracts/core/RdpxV2Bond.sol";
import { DpxEthToken } from "contracts/dpxETH/DpxEthToken.sol";

// Peripheral contracts
import { RdpxDecayingBonds } from "contracts/decaying-bonds/RdpxDecayingBonds.sol";
import { ReLPContract } from "contracts/relp/ReLPContract.sol";

// Interfaces
import { ICurveFactory } from "contracts/interfaces/ICurveFactory.sol";
import { IStableSwap } from "contracts/interfaces/IStableSwap.sol";
import { IUniswapV3Factory } from "contracts/uniswap_V3/IUniswapV3Factory.sol";

import "../contracts/uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

import "../contracts/uniswap_V3/IUniswapV3Pool.sol";

contract RdpxV2CoreTest is Test, ERC721Holder {
  RdpxV2Core rdpxV2Core;
  RdpxV2Bond rdpxV2Bond;

  PerpetualAtlanticVault vault;
  PerpetualAtlanticVaultLP vaultLp;

  RdpxDecayingBonds rdpxDecayingBonds;

  MockToken weth;
  MockToken rdpx;
  DpxEthToken dpxETH;

  MockStakingStrategy stakingStrategy;
  MockVolatilityOracle volatilityOracle;
  MockOptionPricing optionPricing;
  MockRdpxEthPriceOracle rdpxPriceOracle;
  MockDpxEthPriceOracle dpxEthPriceOracle;
  MockRdpxV2ReceiptToken rdpxV2ReceiptToken;

  RdpxReserve rdpxReserveContract;
  ReLPContract reLpContract;

  UniV2LiquidityAMO uniV2LiquidityAMO;
  UniV3LiquidityAMO uniV3LiquidityAMO;

  IUniswapV2Factory factory =
    IUniswapV2Factory(0xc35DADB65012eC5796536bD9864eD8773aBc74C4);
  IUniswapV2Router router =
    IUniswapV2Router(0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506);
  IUniswapV2Pair pair;

  address curvePool;
  string internal constant ARBITRUM_RPC_URL =
    "https://arbitrum-mainnet.infura.io/v3/c088bb4e4cc643d5a0d3bb668a400685";
  uint256 internal constant BLOCK_NUM = 24023149; // 2022/09/13

  function setUp() public {
    uint256 forkId = vm.createFork(ARBITRUM_RPC_URL, BLOCK_NUM);
    vm.selectFork(forkId);

    weth = new MockToken("Wrapped ETH", "WETH");
    rdpx = new MockToken("Rebate Token", "rDPX");
    dpxETH = new DpxEthToken();

    rdpxReserveContract = new RdpxReserve(address(rdpx));
    rdpxV2ReceiptToken = new MockRdpxV2ReceiptToken(
      address(weth),
      address(dpxETH)
    );
    rdpxV2Bond = new RdpxV2Bond();
    reLpContract = new ReLPContract();

    rdpx.mint(address(rdpxReserveContract), 100 ether);

    stakingStrategy = new MockStakingStrategy();
    volatilityOracle = new MockVolatilityOracle();
    optionPricing = new MockOptionPricing();
    rdpxPriceOracle = new MockRdpxEthPriceOracle();
    dpxEthPriceOracle = new MockDpxEthPriceOracle();

    vault = new PerpetualAtlanticVault(
      "RDPX Vault",
      "PAV",
      address(weth),
      (block.timestamp + 7 days)
    );

    rdpxPriceOracle.updateRdpxPrice(2e7);
    dpxEthPriceOracle.updateDpxEthPrice(1e8);

    weth.mint(address(this), 1000 * 1e18);

    vault.addToContractWhitelist(address(this));
    weth.approve(address(vault), type(uint256).max);

    address[4] memory tokens;
    tokens[0] = address(weth);
    tokens[1] = address(dpxETH);
    curvePool = ICurveFactory(0xb17b674D9c5CB2e441F8e196a2f048A81355d031)
      .deploy_plain_pool(
        "dpxETH-Eth-Pool",
        "dpxETH-ETH",
        tokens,
        120,
        4000000,
        0,
        0
      );

    rdpx.mint(address(this), 1000000 * 1e18);
    rdpx.mint(address(1), 1100 * 1e18);
    weth.mint(address(this), 20000 * 1e18);
    address _pair = factory.createPair(address(rdpx), address(weth));

    pair = IUniswapV2Pair(_pair);
    dpxETH.grantRole(dpxETH.MINTER_ROLE(), address(this));
    dpxETH.mint(address(this), 200 * 1e18);

    dpxETH.approve(curvePool, type(uint256).max);
    weth.approve(curvePool, type(uint256).max);
    uint256[2] memory amounts;
    amounts[0] = 200 * 1e18;
    amounts[1] = 200 * 1e18;
    IStableSwap(curvePool).add_liquidity(amounts, 0);

    rdpx.approve(address(router), type(uint256).max);
    weth.approve(address(router), type(uint256).max);

    // set rdpxEthPriceOracle addresses
    rdpxPriceOracle.setAddress(
      address(rdpx),
      address(weth),
      address(factory),
      address(pair)
    );

    rdpxV2Core = new RdpxV2Core(address(weth));
    rdpxDecayingBonds = new RdpxDecayingBonds("RDPX Decaying Bonds", "RDPXDB");
    rdpxV2Bond.grantRole(rdpxV2Bond.MINTER_ROLE(), address(rdpxV2Core));

    vaultLp = new PerpetualAtlanticVaultLP(
      address(vault),
      address(rdpxV2Core),
      address(weth),
      address(rdpx),
      "WETH"
    );

    rdpxReserveContract.grantRole(
      rdpxReserveContract.RDPXV2CORE_ROLE(),
      address(rdpxV2Core)
    );

    vault.setAddresses(
      address(optionPricing),
      address(rdpxPriceOracle),
      address(volatilityOracle),
      address(1),
      address(rdpx),
      address(vaultLp),
      address(rdpxV2Core)
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

    rdpxV2Core.setPricingOracleAddresses(
      address(rdpxPriceOracle),
      address(dpxEthPriceOracle)
    );

    rdpxV2Core.addToContractWhitelist(address(this));

    router.addLiquidity(
      address(rdpx),
      address(weth),
      10000 * 1e18,
      2000 * 1e18,
      1000 * 1e18,
      200 * 1e18,
      address(rdpxV2Core),
      block.timestamp + 300
    );

    rdpxV2Core.setBondDiscount(1e5); // 1e8
    weth.approve(address(rdpxV2Core), type(uint256).max);
    rdpx.approve(address(rdpxV2Core), type(uint256).max);
    weth.approve(address(vaultLp), type(uint256).max);
    vaultLp.deposit(100 * 1e18, address(this));
    vault.grantRole(vault.RDPXV2CORE_ROLE(), address(rdpxV2Core));
    dpxETH.grantRole(dpxETH.MINTER_ROLE(), address(rdpxV2Core));
    dpxETH.grantRole(dpxETH.BURNER_ROLE(), address(rdpxV2Core));
    dpxETH.mint(address(this), 100 * 1e18);
    rdpxV2Core.sync();

    // grant rdpxV2Core role to rdpxV2Core contract in rdpxDecayingBonds contract
    rdpxDecayingBonds.grantRole(
      rdpxDecayingBonds.RDPXV2CORE_ROLE(),
      address(rdpxV2Core)
    );

    // aprove contracts to spend tokens from rdpxV2Core
    rdpxV2Core.approveContractToSpend(
      address(rdpx),
      address(router),
      type(uint256).max
    );

    rdpxV2Core.approveContractToSpend(
      address(rdpx),
      address(vault),
      type(uint256).max
    );

    rdpxV2Core.approveContractToSpend(
      address(dpxETH),
      address(curvePool),
      type(uint256).max
    );

    rdpxV2Core.approveContractToSpend(
      address(dpxETH),
      address(rdpxV2ReceiptToken),
      type(uint256).max
    );

    // add rdpxV2Core assets
    rdpxV2Core.addAssetTotokenReserves(address(rdpx), "RDPX");
    rdpxV2Core.addAssetTotokenReserves(address(weth), "WETH");
    rdpxV2Core.addAssetTotokenReserves(address(dpxETH), "DPXETH");
  }

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

  function testReLpContract() public {
    testV2Amo();

    // set address in reLP contract and grant role
    reLpContract.setAddresses(
      address(rdpx),
      address(weth),
      address(pair),
      address(rdpxV2Core),
      address(rdpxReserveContract),
      address(uniV2LiquidityAMO),
      address(rdpxPriceOracle),
      address(factory),
      address(router)
    );
    reLpContract.grantRole(reLpContract.RDPXV2CORE_ROLE(), address(rdpxV2Core));

    reLpContract.setreLpFactor(9e4);

    // add liquidity
    uniV2LiquidityAMO.addLiquidity(5e18, 1e18, 0, 0);
    uniV2LiquidityAMO.approveContractToSpend(
      address(pair),
      address(reLpContract),
      type(uint256).max
    );

    rdpxV2Core.setIsreLP(true);

    rdpxV2Core.bond(1 * 1e18, 0, address(this));
    uint256 lpBalance2 = pair.balanceOf(address(uniV2LiquidityAMO));
    uint256 rdpxBalance2 = rdpx.balanceOf(address(rdpxV2Core));

    uint256 reLpRdpxBalance = rdpx.balanceOf(address(reLpContract));
    uint256 reLpLpBalance = pair.balanceOf(address(reLpContract));

    assertEq(lpBalance2, 1422170988183415261);
    assertEq(rdpxBalance2, 53886041379169834724);
    assertEq(reLpRdpxBalance, 0);
    assertEq(reLpLpBalance, 0);
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

  function testV2Amo() public {
    uniV2LiquidityAMO = new UniV2LiquidityAMO();

    // set addresses
    uniV2LiquidityAMO.setAddresses(
      address(rdpx),
      address(weth),
      address(pair),
      address(rdpxV2Core),
      address(rdpxPriceOracle),
      address(factory),
      address(router)
    );

    // give amo premission to access rdpxV2Core reserve tokens

    rdpxV2Core.addAMOAddress(address(uniV2LiquidityAMO));

    rdpxV2Core.approveContractToSpend(
      address(rdpx),
      address(uniV2LiquidityAMO),
      type(uint256).max
    );

    rdpxV2Core.approveContractToSpend(
      address(weth),
      address(uniV2LiquidityAMO),
      type(uint256).max
    );

    rdpx.transfer(address(rdpxV2Core), 50e18);
    weth.transfer(address(rdpxV2Core), 11e18);

    // add liquidity
    uniV2LiquidityAMO.addLiquidity(5e18, 1e18, 0, 0);

    uint256 lpBalance = uniV2LiquidityAMO.lpTokenBalance();
    uint256 tokenBalance = pair.balanceOf(address(uniV2LiquidityAMO));

    assertEq(lpBalance, 2236067977499789696);
    assertEq(tokenBalance, lpBalance);

    // remove liquidity
    uniV2LiquidityAMO.removeLiquidity(lpBalance, 0, 0);

    lpBalance = uniV2LiquidityAMO.lpTokenBalance();
    tokenBalance = pair.balanceOf(address(uniV2LiquidityAMO));

    assertEq(lpBalance, 0);
    assertEq(tokenBalance, lpBalance);

    lpBalance = uniV2LiquidityAMO.lpTokenBalance();

    // swap rdpx
    uint256 rdpxBalance1 = rdpx.balanceOf(address(rdpxV2Core));
    uniV2LiquidityAMO.swap(1e18, 0, true);
    uint256 rdpxBalance2 = rdpx.balanceOf(address(rdpxV2Core));
    assertEq(rdpxBalance1 - 1e18, rdpxBalance2);

    // swap weth
    uint256 wethBalance1 = weth.balanceOf(address(rdpxV2Core));
    uniV2LiquidityAMO.swap(1e18, 0, false);
    uint256 wethBalance2 = weth.balanceOf(address(rdpxV2Core));
    assertEq(wethBalance1 - 1e18, wethBalance2);
  }

  function testUniV3Amo() public {
    // create a v3 pool
    address pool = IUniswapV3Factory(0x1F98431c8aD98523631AE4a59f267346ea31F984)
      .createPool(address(rdpx), address(weth), 500);
    // initalize a price in the uni v3 pool
    IUniswapV3Pool(pool).initialize(1771845812700903892492222464);

    uniV3LiquidityAMO = new UniV3LiquidityAMO(
      address(rdpx),
      address(rdpxV2Core)
    );

    rdpxV2Core.addAMOAddress(address(uniV3LiquidityAMO));

    rdpxV2Core.approveContractToSpend(
      address(rdpx),
      address(uniV3LiquidityAMO),
      type(uint256).max
    );

    rdpxV2Core.approveContractToSpend(
      address(weth),
      address(uniV3LiquidityAMO),
      type(uint256).max
    );

    rdpx.transfer(address(rdpxV2Core), 50e18);
    weth.transfer(address(rdpxV2Core), 11e18);

    // test add liquidity
    int24 minTick = -887270;
    int24 maxTick = 887270;
    uint24 fee = 500;

    UniV3LiquidityAMO.AddLiquidityParams memory params = UniV3LiquidityAMO
      .AddLiquidityParams(
        address(rdpx),
        address(weth),
        minTick,
        maxTick,
        fee,
        1e18,
        1e18,
        0,
        0
      );

    uniV3LiquidityAMO.addLiquidity(params);

    assertEq(rdpx.balanceOf(address(uniV3LiquidityAMO)), 0);
    assertEq(weth.balanceOf(address(uniV3LiquidityAMO)), 0);

    // test swap rdpx to eth
    uint256 rdpxBalance1 = rdpx.balanceOf(address(rdpxV2Core));
    uint256 wethBalance1 = weth.balanceOf(address(rdpxV2Core));

    uniV3LiquidityAMO.swap(address(rdpx), address(weth), 500, 1e16, 0, 0);

    uint256 rdpxBalance2 = rdpx.balanceOf(address(rdpxV2Core));
    uint256 wethBalance2 = weth.balanceOf(address(rdpxV2Core));

    assertEq(rdpxBalance1 - 1e16, rdpxBalance2);
    assertEq(wethBalance2, 10999504808180183776);

    assertEq(rdpx.balanceOf(address(uniV3LiquidityAMO)), 0);
    assertEq(weth.balanceOf(address(uniV3LiquidityAMO)), 0);

    // test swap weth to rdpx
    uniV3LiquidityAMO.swap(address(weth), address(rdpx), 500, 1e18, 0, 0);

    rdpxBalance1 = rdpx.balanceOf(address(rdpxV2Core));
    wethBalance1 = weth.balanceOf(address(rdpxV2Core));

    assertEq(rdpxBalance1, 49999494856333163815);
    assertEq(wethBalance1, wethBalance2 - 1e18);

    assertEq(rdpx.balanceOf(address(uniV3LiquidityAMO)), 0);
    assertEq(weth.balanceOf(address(uniV3LiquidityAMO)), 0);

    // test rmove liquidity
    uniV3LiquidityAMO.removeLiquidity(0, 0, 0);

    rdpxBalance2 = rdpx.balanceOf(address(rdpxV2Core));
    wethBalance2 = weth.balanceOf(address(rdpxV2Core));

    assertEq(rdpxBalance2, 49999999999999999968);
    assertEq(wethBalance2, 10999999999999999966);

    assertEq(rdpx.balanceOf(address(uniV3LiquidityAMO)), 0);
    assertEq(weth.balanceOf(address(uniV3LiquidityAMO)), 0);
  }
}
