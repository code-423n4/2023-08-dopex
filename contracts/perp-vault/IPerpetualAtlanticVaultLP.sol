// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IPerpetualAtlanticVaultLP {
  /// @notice Returns the total available collateral to buy options
  function totalAvailableCollateral() external view returns (uint256);

  /// @notice Locks collateral
  /// @param amount Amount of collateral to lock
  function lockCollateral(uint256 amount) external;

  /// @notice Unlocks collateral
  /// @param amount Amount of collateral to unlock
  function unlockLiquidity(uint256 amount) external;

  /// @notice Adds premium and fees to total available assets
  /// @param proceeds amount of proceeds to add
  function addProceeds(uint256 proceeds) external;

  /// @notice Subtract loss from total available assets
  /// @param loss amount of loss to subtract
  function subtractLoss(uint256 loss) external;

  /// @notice Adds rDPX to the vault shares
  /// @param amount of rDPX to add
  function addRdpx(uint256 amount) external;
}
