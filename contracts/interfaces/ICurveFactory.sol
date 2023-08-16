// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

/**
 * @dev Interface of the curve factory contract.
 */

interface ICurveFactory {
  function deploy_plain_pool(
    string memory _name,
    string memory _symbol,
    address[4] memory _coins,
    uint256 _A,
    uint256 _fee,
    uint256 _asset_type,
    uint256 _implementaion_idx
  ) external returns (address);
}
