// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

interface IFaucetToken {
    function mint(address, uint256) external;
}

contract Faucet is AccessControl {
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    mapping(address => Account) public accounts;

    address[] public tokens;

    uint256[] public tokenAmounts;

    uint256 public timeout = 4 hours;

    struct Account {
        bool whitelisted;
        uint256 lastMint;
    }

    function setTimeout(uint256 _timeout) external onlyRole(MANAGER_ROLE) {
        timeout = _timeout;
    }

    function setTokens(address[] memory _tokens, uint256[] memory _tokenAmounts)
        external
        onlyRole(MANAGER_ROLE)
    {
        require(
            _tokens.length == _tokenAmounts.length,
            "Input lengths must match"
        );

        tokens = _tokens;
        tokenAmounts = _tokenAmounts;
    }

    function toggle(address[] memory _addressList, bool _whitelist)
        external
        onlyRole(MANAGER_ROLE)
    {
        uint256 addressListLength = _addressList.length;

        for (uint256 i; i < addressListLength; ) {
            address addr = _addressList[i];

            accounts[addr].whitelisted = _whitelist;

            unchecked {
                ++i;
            }
        }
    }

    function mint() external {
        address sender = msg.sender;
        uint256 blockTimestamp = block.timestamp;

        Account memory account = accounts[sender];

        require(account.whitelisted, "Sender must be whitelisted");
        require(
            account.lastMint < blockTimestamp + timeout,
            "User timed out for mint"
        );

        uint256 tokensLength = tokens.length;

        for (uint256 i; i < tokensLength; ) {
            IFaucetToken(tokens[i]).mint(sender, tokenAmounts[i]);

            unchecked {
                ++i;
            }
        }

        accounts[sender].lastMint = blockTimestamp;
    }

    function managerMint(address _user) external onlyRole(MANAGER_ROLE) {
        uint256 tokensLength = tokens.length;

        for (uint256 i; i < tokensLength; ) {
            IFaucetToken(tokens[i]).mint(_user, tokenAmounts[i]);

            unchecked {
                ++i;
            }
        }
    }
}
