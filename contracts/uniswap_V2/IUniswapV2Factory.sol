// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.19;

interface IUniswapV2Factory {
  struct FeeStructure {
    // For swaps from token0 to token1
    uint256 token0ToToken1;
    // For swaps from token1 to token0
    uint256 token1ToToken0;
  }

  function pairImplementation() external view returns (address);

  function router() external view returns (address);

  function getPair(
    address tokenA,
    address tokenB
  ) external view returns (address pair);

  function getFeeStructure(
    address pair
  ) external view returns (FeeStructure memory);

  function allPairs(uint256) external view returns (address pair);

  function allPairsLength() external view returns (uint256);

  function createPair(
    address tokenA,
    address tokenB
  ) external returns (address pair);
}
