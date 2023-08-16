//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// Libraries
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Contracts
import { Pausable } from "../helper/Pausable.sol";
import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

// Interfaces
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

contract RdpxDecayingBonds is
  ERC721,
  ERC721Enumerable,
  ERC721Burnable,
  Pausable,
  AccessControl
{
  using SafeERC20 for IERC20WithBurn;
  using Counters for Counters.Counter;

  Counters.Counter private _tokenIdCounter;

  // Create a new role identifier for the minter role
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

  // Create a new role identifier for the Rdpx v2 core role
  bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

  // Array of bonds
  mapping(uint256 => Bond) public bonds;

  // Structure to store the bond information
  struct Bond {
    address owner;
    uint256 expiry;
    uint256 rdpxAmount;
  }

  event BondMinted(
    address to,
    uint256 bondId,
    uint256 expiry,
    uint256 rdpxAmount
  );

  event EmergencyWithdraw(address sender);

  /*==== CONSTRUCTOR ====*/
  constructor(
    string memory _name,
    string memory _symbol
  ) ERC721(_name, _symbol) {
    // Grant the minter role and admin role to deployer
    _setupRole(MINTER_ROLE, msg.sender);
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _tokenIdCounter.increment();
  }

  /*============ ADMIN FUNCTIONS ============*/

  /// @notice Pauses the vault for emergency cases
  /// @dev Can only be called by the owner
  function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _pause();
  }

  /// @notice Unpauses the vault
  /// @dev Can only be called by the owner
  function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
    _unpause();
  }

  /**
   * @notice Transfers all funds to msg.sender
   * @dev    Can only be called by the owner
   * @param  tokens The list of erc20 tokens to withdraw
   * @param  transferNative Whether should transfer the native currency
   * @param  to The address to transfer the funds to
   * @param  amount The amount to transfer
   * @param  gas The gas to use for the transfer
   **/
  function emergencyWithdraw(
    address[] calldata tokens,
    bool transferNative,
    address payable to,
    uint256 amount,
    uint256 gas
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _whenPaused();
    if (transferNative) {
      (bool success, ) = to.call{ value: amount, gas: gas }("");
      require(success, "RdpxReserve: transfer failed");
    }
    IERC20WithBurn token;

    for (uint256 i = 0; i < tokens.length; i++) {
      token = IERC20WithBurn(tokens[i]);
      token.safeTransfer(msg.sender, token.balanceOf(address(this)));
    }
  }

  /// @notice Mints decaying rdpx bonds
  /// @dev Can only be called by the minter
  /// @param to address of the user to mint the bonds for
  /// @param expiry timestamp of the bond expiry
  /// @param rdpxAmount amount of rdpx to bond
  function mint(
    address to,
    uint256 expiry,
    uint256 rdpxAmount
  ) external onlyRole(MINTER_ROLE) {
    _whenNotPaused();
    require(hasRole(MINTER_ROLE, msg.sender), "Caller is not a minter");
    uint256 bondId = _mintToken(to);
    bonds[bondId] = Bond(to, expiry, rdpxAmount);

    emit BondMinted(to, bondId, expiry, rdpxAmount);
  }

  /// @dev Internal function to mint a bond position token
  /// @param to the address to mint the position to
  function _mintToken(address to) private returns (uint256 tokenId) {
    tokenId = _tokenIdCounter.current();
    _tokenIdCounter.increment();
    _mint(to, tokenId);
  }

  /// @notice Decreases the bond amount
  /// @dev Can only be called by the rdpxV2Core
  /// @param bondId id of the bond to decrease
  /// @param amount amount to decrease
  function decreaseAmount(
    uint256 bondId,
    uint256 amount
  ) public onlyRole(RDPXV2CORE_ROLE) {
    _whenNotPaused();
    bonds[bondId].rdpxAmount = amount;
  }

  /*============ VIEW FUNCTIONS ============*/

  /// @notice returns the bonds owned by an address
  /// @param _address address of the user
  function getBondsOwned(
    address _address
  ) external view returns (uint256[] memory) {
    uint256 ownerTokenCount = balanceOf(_address);
    uint256[] memory tokenIds = new uint256[](ownerTokenCount);
    for (uint256 i; i < ownerTokenCount; i++) {
      tokenIds[i] = tokenOfOwnerByIndex(_address, i);
    }
    return tokenIds;
  }

  function _beforeTokenTransfer(
    address from,
    address to,
    uint256 tokenId,
    uint256 batchSize
  ) internal override(ERC721, ERC721Enumerable) {
    _whenNotPaused();
    super._beforeTokenTransfer(from, to, tokenId, batchSize);
  }

  // The following functions are overrides required by Solidity.

  function supportsInterface(
    bytes4 interfaceId
  )
    public
    view
    override(ERC721, ERC721Enumerable, AccessControl)
    returns (bool)
  {
    return super.supportsInterface(interfaceId);
  }
}
