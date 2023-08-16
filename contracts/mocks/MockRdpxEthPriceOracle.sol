// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Interfaces
import { IUniswapV2Pair } from "../uniswap_v2/IUniswapV2Pair.sol";

// Libraries
import { UniswapV2Library } from "../uniswap_V2/libraries/UniswapV2Library.sol";

contract MockRdpxEthPriceOracle {
  uint256 public rdpxPriceInEth = 5e8;
  uint256 public lpPriceInEth = 1e8;
  address rdpx;
  address alphaToken;
  address dopexAMMFactory;
  address dopexAMMPair;

  function setAddress(
    address _rdpx,
    address _alphaToken,
    address _dopexAMMFactory,
    address _dopexAMMPair
  ) external {
    rdpx = _rdpx;
    alphaToken = _alphaToken;
    dopexAMMFactory = _dopexAMMFactory;
    dopexAMMPair = _dopexAMMPair;
  }

  function updateRdpxPrice(uint256 _rdpxPrice) external {
    rdpxPriceInEth = _rdpxPrice;
  }

  function getRdpxPriceInEth() external view returns (uint256) {
    return rdpxPriceInEth;
  }

  function getEthPriceInRdpx() external view returns (uint256) {
    return ((1e8 * 1e8) / rdpxPriceInEth);
  }

  function getLpPriceInEth() external view returns (uint256) {
    (address tokenA, address tokenB) = UniswapV2Library.sortTokens(
      rdpx,
      alphaToken
    );
    (uint256 reserveA, uint256 reserveB) = UniswapV2Library.getReserves(
      dopexAMMFactory,
      tokenA,
      tokenB
    );

    uint256 rdpxLpReserve;
    uint256 alphaTokenLpReserve;
    if (rdpx == tokenA) {
      rdpxLpReserve = reserveA;
      alphaTokenLpReserve = reserveB;
    } else {
      rdpxLpReserve = reserveB;
      alphaTokenLpReserve = reserveA;
    }

    uint256 totalLpSupply = IUniswapV2Pair(dopexAMMPair).totalSupply();
    uint256 rdpxPerLp = (rdpxLpReserve * 1e18) / totalLpSupply;
    uint256 alphaTokenPerLp = (alphaTokenLpReserve * 1e18) / totalLpSupply;
    uint256 rdpxPriceInAlphaToken = (alphaTokenLpReserve * 1e18) /
      rdpxLpReserve;

    return
      (((rdpxPerLp * rdpxPriceInAlphaToken) / 1e18) + alphaTokenPerLp) / 1e10;
  }
}
