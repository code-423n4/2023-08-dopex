// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IStableSwap {
  function add_liquidity(uint256[2] calldata amounts, uint256 min_mint_amount)
    external
    returns (uint256);

  function balances() external view returns (uint256[] memory);

  function remove_liquidity_one_coin(
    uint256 _token_amount,
    int128 i,
    uint256 min_amount
  ) external returns (uint256);

  function get_virtual_price() external view returns (uint256);

  function coins(uint256) external view returns (address);

  function balances(uint256) external view returns (uint256);

  function get_dy(
    int128 i,
    int128 j,
    uint256 dx
  ) external view returns (uint256);

  function exchange(
    int128 i,
    int128 j,
    uint256 _dx,
    uint256 _min_dy
  ) external returns (uint256);
}
