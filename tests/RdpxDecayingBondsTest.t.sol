// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import { RdpxDecayingBonds } from "contracts/decaying-bonds/RdpxDecayingBonds.sol";
import { MockToken } from "contracts/mocks/MockToken.sol";

contract RdpxDecayingBondsTest is Test, ERC721Holder {
  RdpxDecayingBonds rdpxDecayingBonds;
  MockToken usdc;
  MockToken rdpx;

  // Function to setup the test
  function setUp() public {
    rdpxDecayingBonds = new RdpxDecayingBonds(
      "rRDPX Decaying Bonds",
      "rRDPXDB"
    );
  }

  // Functoin to test the mint function
  function testMint() public {
    // Mint 1000 RDPX bonds
    rdpxDecayingBonds.mint(address(this), 1223322, 5e18);

    // Check the bond details
    (address owner, uint256 maturity, uint256 bondAmount) = rdpxDecayingBonds
      .bonds(1);

    // Check the bond details
    assertEq(owner, address(this));
    assertEq(maturity, 1223322);
    assertEq(bondAmount, 5e18);

    assert(rdpxDecayingBonds.balanceOf(address(this)) == 1);
  }
}
