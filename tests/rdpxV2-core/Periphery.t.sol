// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import { Test } from "forge-std/Test.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { Setup } from "./Setup.t.sol";

// Contracts
import { UniV2LiquidityAMO } from "contracts/amo/UniV2LiquidityAMO.sol";
import { UniV3LiquidityAMO } from "contracts/amo/UniV3LiquidityAMO.sol";

// Interfaces
import { IUniswapV3Factory } from "contracts/uniswap_V3/IUniswapV3Factory.sol";
import "../../contracts/uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

import "../../contracts/uniswap_V3/IUniswapV3Pool.sol";

contract Periphery is ERC721Holder, Setup {
  UniV2LiquidityAMO uniV2LiquidityAMO;
  UniV3LiquidityAMO uniV3LiquidityAMO;

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

    // test remove liquidity
    uniV3LiquidityAMO.removeLiquidity(0, 0, 0);

    rdpxBalance2 = rdpx.balanceOf(address(rdpxV2Core));
    wethBalance2 = weth.balanceOf(address(rdpxV2Core));

    assertEq(rdpxBalance2, 49999999999999999968);
    assertEq(wethBalance2, 10999999999999999966);

    assertEq(rdpx.balanceOf(address(uniV3LiquidityAMO)), 0);
    assertEq(weth.balanceOf(address(uniV3LiquidityAMO)), 0);
  }
}
