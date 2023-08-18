// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

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
import { MockRdpxV2ReceiptToken } from "contracts/mocks/MockRdpxV2ReceiptToken.sol";

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

import "../../contracts/uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

import "../../contracts/uniswap_V3/IUniswapV3Pool.sol";

contract Setup is Test, ERC721Holder {
  RdpxV2Core rdpxV2Core;
  RdpxV2Bond rdpxV2Bond;

  PerpetualAtlanticVault vault;
  PerpetualAtlanticVaultLP vaultLp;

  RdpxDecayingBonds rdpxDecayingBonds;

  MockToken weth;
  MockToken rdpx;
  DpxEthToken dpxETH;

  MockVolatilityOracle volatilityOracle;
  MockOptionPricing optionPricing;
  MockRdpxEthPriceOracle rdpxPriceOracle;
  MockDpxEthPriceOracle dpxEthPriceOracle;
  MockRdpxV2ReceiptToken rdpxV2ReceiptToken;

  RdpxReserve rdpxReserveContract;
  ReLPContract reLpContract;

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

    // set bond maturity
    rdpxV2Core.setBondMaturity(5 days);

    // add rdpxV2Core assets
    rdpxV2Core.addAssetTotokenReserves(address(rdpx), "RDPX");
    rdpxV2Core.addAssetTotokenReserves(address(weth), "WETH");
    rdpxV2Core.addAssetTotokenReserves(address(dpxETH), "DPXETH");
  }
}
