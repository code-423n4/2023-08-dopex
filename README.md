# ✨ So you want to run an audit

This `README.md` contains a set of checklists for our audit collaboration.

Your audit will use two repos:

- **an _audit_ repo** (this one), which is used for scoping your audit and for providing information to wardens
- **a _findings_ repo**, where issues are submitted (shared with you after the audit)

Ultimately, when we launch the audit, this repo will be made public and will contain the smart contracts to be reviewed and all the information needed for audit participants. The findings repo will be made public after the audit report is published and your team has mitigated the identified issues.

Some of the checklists in this doc are for **C4 (🐺)** and some of them are for **you as the audit sponsor (⭐️)**.

---

# Audit setup

# Repo setup

## ⭐️ Sponsor: Add code to this repo

- [ ] Create a PR to this repo with the below changes:
- [ ] Provide a self-contained repository with working commands that will build (at least) all in-scope contracts, and commands that will run tests producing gas reports for the relevant contracts.
- [ ] Make sure your code is thoroughly commented using the [NatSpec format](https://docs.soliditylang.org/en/v0.5.10/natspec-format.html#natspec-format).
- [ ] Please have final versions of contracts and documentation added/updated in this repo **no less than 48 business hours prior to audit start time.**
- [ ] Be prepared for a 🚨code freeze🚨 for the duration of the audit — important because it establishes a level playing field. We want to ensure everyone's looking at the same code, no matter when they look during the audit. (Note: this includes your own repo, since a PR can leak alpha to our wardens!)

---

## ⭐️ Sponsor: Edit this README

Under "SPONSORS ADD INFO HERE" heading below, include the following:

- [ ] Modify the bottom of this `README.md` file to describe how your code is supposed to work with links to any relevent documentation and any other criteria/details that the C4 Wardens should keep in mind when reviewing. ([Here's a well-constructed example.](https://github.com/code-423n4/2022-08-foundation#readme))
  - [ ] When linking, please **provide all links as full absolute links** versus relative links
  - [ ] All information should be provided in markdown format (HTML does not render on Code4rena.com)
- [ ] Under the "Scope" heading, provide the name of each contract and:
  - [ ] source lines of code (excluding blank lines and comments) in each
  - [ ] external contracts called in each
  - [ ] libraries used in each
- [ ] Describe any novel or unique curve logic or mathematical models implemented in the contracts
- [ ] Does the token conform to the ERC-20 standard? In what specific ways does it differ?
- [ ] Describe anything else that adds any special logic that makes your approach unique
- [ ] Identify any areas of specific concern in reviewing the code
- [ ] Review the Gas award pool amount. This can be adjusted up or down, based on your preference - just flag it for Code4rena staff so we can update the pool totals across all comms channels.
- [ ] Optional / nice to have: pre-record a high-level overview of your protocol (not just specific smart contract functions). This saves wardens a lot of time wading through documentation.
- [ ] See also: [this checklist in Notion](https://code4rena.notion.site/Key-info-for-Code4rena-sponsors-f60764c4c4574bbf8e7a6dbd72cc49b4#0cafa01e6201462e9f78677a39e09746)
- [ ] Delete this checklist and all text above the line below when you're ready.

---

# Dopex audit details

- Total Prize Pool: XXX XXX USDC (Notion: Total award pool)
  - HM awards: $86,212.50 USDC
  - Analysis awards: $5,225 USDC
  - QA awards: $2,612.50 USDC
  - Bot Race awards: $7,837.50 USDC
  - Gas awards: $2,612.50 USDC
  - Judge awards: XXX XXX USDC (Notion: Judge Fee)
  - Lookout awards: XXX XXX USDC (Notion: Sum of Pre-sort fee + Pre-sort early bonus)
  - Scout awards: $500 USDC
- Join [C4 Discord](https://discord.gg/code4rena) to register
- Submit findings [using the C4 form](https://code4rena.com/contests/2023-08-dopex/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts August 7, 2023 20:00 UTC
- Ends TBD XXX XXX XX 20:00 UTC (ex. `Ends March 30, 2023 20:00 UTC`)

## Automated Findings / Publicly Known Issues

Automated findings output for the audit can be found [here](https://github.com/code-423n4/2023-08-dopex/blob/main/bot-report.md) within 24 hours of audit opening.

_Note for C4 wardens: Anything included in the automated findings output is considered a publicly known issue and is ineligible for awards._

[ ⭐️ SPONSORS ADD INFO HERE ]

# Overview

rDPX V2 introduces a new synthetic coin dpxETH which is pegged to ETH. dpxETH will be used to earn boosted yields on ETH and will be a staple collateral token for future Dopex Options Products.

The rDPX bonding process represents the method in which new dpxETH tokens can be minted. When a user bonds with the rDPX V2 contract they receive a receipt token. A receipt token represents ETH and dpxETH LP on curve.

Via the bonding process new dpxETH is minted and its backing is maintained via a rDPX and ETH reserve (the Backing Reserves). These backing reserves are controlled via AMOs. To ensure a safe and controllable way to scale rDPX V2 and dpxETH together we have decided incorporate the AMO ideology from Frax Finance.

Full product spec: https://dopex.notion.site/rDPX-V2-RI-b45b5b402af54bcab758d62fb7c69cb4

# Scope

_List all files in scope in the table below (along with hyperlinks) -- and feel free to add notes here to emphasize areas of focus._

_For line of code counts, we recommend using [cloc](https://github.com/AlDanial/cloc)._

| Contract                                                                          | SLOC | Purpose                                                        | Libraries used                                                                 |
| --------------------------------------------------------------------------------- | ---- | -------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| [UniV2LiquidityAmo.sol](contracts/amo/UniV2LiquidityAmo.sol)                      | 422  | This contract encompasses all functions for the Uniswap V2 AMO | [`@openzeppelin/*`](https://openzeppelin.com/contracts/), Uniswap V2 libraries |
| [UniV3LiquidityAmo.sol](contracts/amo/UniV3LiquidityAmo.sol)                      | 380  | This contract encompasses all functions for the Uniswap V3 AMO | [`@openzeppelin/*`](https://openzeppelin.com/contracts/), Uniswap V3 libraries |
| [RdpxV2Core.sol](contracts/core/RdpxV2Core.sol)                                   | 1278 | This is the core contract of rDPX V2                           | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [RdpxV2Bond.sol](contracts/core/RdpxV2Bond.sol)                                   | 67   | ERC721 contract for minting NFT bonds via the core contract    | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [RdpxDecayingBonds.sol](contracts/decaying-bonds/RdpxDecayingBonds.sol)           | 183  | Contract responsible to mint rDPX decaying bonds               | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [DpxEthToken.sol](contracts/dpxETH/DpxEthToken.sol)                               | 63   | ERC20 dpxETH token contract                                    | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [PerpetualAtlanticVault.sol](contracts/perp-vault/PerpetualAtlanticVault.sol)     | 664  | Contract for the Perpetual Atlantic Vault (ERC721)             | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [PerpetualAtlanticVaultLP.sol](contracts/perp-vault/PerpetualAtlanticVaultLP.sol) | 302  | Contract for the Perpetual Atlantic Vault LP (ERC4626)         | [`@openzeppelin/*`](https://openzeppelin.com/contracts/), solmate              |
| [ReLPContract.sol](contracts/contracts/reLP/ReLPContract.sol)                     | 297  | Contract to perform the reLP process on the Uniswap V2 AMO     | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |

## Out of scope

RdpxV2ReceiptToken contracts, staking contracts, reserve contracts, dpxETH/ETH oracle.

## Scoping Details

```
- How many contracts are in scope?: 9 (Excluding interfaces)
- Total SLoC for these contracts?:  3656 (Excluding interfaces)
- How many external imports are there?: 20+
- How many separate interfaces and struct definitions are there for the contracts within scope?:  30
- Does most of your code generally use composition or inheritance?:  Inheritance
- How many external calls?: 4
- What is the overall line coverage percentage provided by your tests?: 95%
- Is this an upgrade of an existing system?: No
- Check all that apply (e.g. timelock, NFT, AMM, ERC20, rollups, etc.): Timelock function, NFT, AMM, ERC-20 Token
- Is there a need to understand a separate part of the codebase / get context in order to audit this part of the protocol?:  No
- Please describe required context:  N/A
- Does it use an oracle?:  Other, custom oracles
- Describe any novel or unique curve logic or mathematical models your code uses: LP is removed and re-added after removing ((amount_lp * 4) / rdpx_supply) * lp_rdpx_reserves * base_relp_percent rDPX where base_relp_percent = Math.sqrt(reserves_rdpx) * relp_factor
- Is this either a fork of or an alternate implementation of another project?:  Yes, Uniswap
- Does it use a side-chain?: No
- Describe any specific areas you would like addressed: Please try to break the DpxEth-Eth peg
```

# Tests

Having foundry installed: https://book.getfoundry.sh/getting-started/installation

> (Optional) Setup the `.env` file with the vars mentioned in the `.env.sample` file.

### Compiling

```bash
forge build
```

### Running tests

Run all tests like this:

```bash
forge test
```

Run solidity code coverage:

```bash
chmod +x coverage.sh
./coverage.sh
```
