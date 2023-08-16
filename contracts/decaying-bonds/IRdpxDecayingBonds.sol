// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

/**
 * @dev Interface of the rDPX decaying bonds contract.
 */

interface IRdpxDecayingBonds {
  function burn(uint256 bondId) external;

  function bonds(uint256 bondId) external returns (address, uint256, uint256);

  function decreaseAmount(uint256 bondId, uint256 amount) external;

  function ownerOf(uint256 tokenId) external view returns (address);
}
