// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Test } from "forge-std/Test.sol";

// Peripherals
import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

// Core
import { PerpetualAtlanticVault } from "contracts/perp-vault/PerpetualAtlanticVault.sol";
import { PerpetualAtlanticVaultLP } from "contracts/perp-vault/PerpetualAtlanticVaultLP.sol";

// Mock
import { MockToken } from "contracts/mocks/MockToken.sol";
import { MockRdpxEthPriceOracle } from "contracts/mocks/MockRdpxEthPriceOracle.sol";
import { MockVolatilityOracle } from "contracts/mocks/MockVolatilityOracle.sol";
import { MockOptionPricing } from "contracts/mocks/MockOptionPricing.sol";
import { MockStakingStrategy } from "contracts/mocks/MockStakingStrategy.sol";

// imporrt uni v2 interfaces
import { IUniswapV2Factory } from "contracts/uniswap_V2/IUniswapV2Factory.sol";
import { IUniswapV2Pair } from "contracts/uniswap_V2/IUniswapV2Pair.sol";
import { IUniswapV2Router } from "contracts/uniswap_V2/IUniswapV2Router.sol";

contract Setup is Test, ERC721Holder {
  MockToken public weth;
  MockToken public rdpx;
  MockStakingStrategy public staking;
  MockVolatilityOracle public volOracle;
  MockOptionPricing public optionPricing;
  MockRdpxEthPriceOracle public priceOracle;
  PerpetualAtlanticVault public vault;
  IUniswapV2Factory public uniswapV2Factory;
  IUniswapV2Router public router;
  IUniswapV2Pair public ammPair;
  PerpetualAtlanticVaultLP public vaultLp;

  string internal constant ARBITRUM_RPC_URL =
    "https://arbitrum-mainnet.infura.io/v3/c088bb4e4cc643d5a0d3bb668a400685";
  uint256 internal constant BLOCK_NUM = 24023149; // 2022/09/13

  // Function to setup the test
  function setUp() public {
    uint256 forkId = vm.createFork(ARBITRUM_RPC_URL, BLOCK_NUM);
    vm.selectFork(forkId);

    weth = new MockToken("Wrapped ETH", "WETH");
    staking = new MockStakingStrategy();
    volOracle = new MockVolatilityOracle();
    optionPricing = new MockOptionPricing();
    priceOracle = new MockRdpxEthPriceOracle();
    rdpx = new MockToken("Rebate Token", "rDPX");
    uniswapV2Factory = IUniswapV2Factory(
      0xc35DADB65012eC5796536bD9864eD8773aBc74C4
    );
    vault = new PerpetualAtlanticVault(
      "RDPX Vault",
      "PAV",
      address(weth),
      (block.timestamp + 86400)
    );
    router = IUniswapV2Router(0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506);
    vaultLp = new PerpetualAtlanticVaultLP(
      address(vault),
      address(100),
      address(weth),
      address(rdpx),
      "WETH"
    );

    vault.setAddresses(
      address(optionPricing),
      address(priceOracle),
      address(volOracle),
      address(1),
      address(rdpx),
      address(vaultLp),
      address(this)
    );

    vault.grantRole(vault.RDPXV2CORE_ROLE(), address(this));

    rdpx.mint(address(this), 2000 * 1e18);
    weth.mint(address(this), 200 * 1e18);
    weth.mint(address(this), 3000 * 1e18);
    address _pair = uniswapV2Factory.createPair(address(rdpx), address(weth));

    ammPair = IUniswapV2Pair(_pair);

    rdpx.approve(address(router), type(uint256).max);
    weth.approve(address(router), type(uint256).max);

    weth.approve(address(vault), type(uint256).max);
    rdpx.approve(address(vault), type(uint256).max);

    weth.approve(address(vaultLp), type(uint256).max);
    rdpx.approve(address(vaultLp), type(uint256).max);

    router.addLiquidity(
      address(rdpx),
      address(weth),
      1000 * 1e18,
      200 * 1e18,
      100 * 1e18,
      200 * 1e18,
      msg.sender,
      block.timestamp + 300
    );

    vault.addToContractWhitelist(address(this));

    vault.updateFundingDuration(86400);
    priceOracle.updateRdpxPrice(0.02 gwei); // 1 rdpx = 0.2 WETH
  }
}
