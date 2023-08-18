# Dopex audit details

- Total Prize Pool: $125,000 USDC 
  - HM awards: $86,212.50 USDC
  - Analysis awards: $5,225 USDC
  - QA awards: $2,612.50 USDC
  - Bot Race awards: $7,837.50 USDC
  - Gas awards: $2,612.50 USDC
  - Judge awards: $12,000 USDC 
  - Lookout awards: $8,000 USDC 
  - Scout awards: $500 USDC
- Join [C4 Discord](https://discord.gg/code4rena) to register
- Submit findings [using the C4 form](https://code4rena.com/contests/2023-08-dopex/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts August 21, 2023 20:00 UTC
- Ends September 4, 2023 20:00 UTC

## Automated Findings / Publicly Known Issues

Automated findings output for the audit can be found [here](https://github.com/code-423n4/2023-08-dopex/blob/main/bot-report.md) within 24 hours of audit opening.

_Note for C4 wardens: Anything included in the automated findings output is considered a publicly known issue and is ineligible for awards._

# Overview

rDPX V2 introduces a new synthetic coin dpxETH which is pegged to ETH. dpxETH will be used to earn boosted yields on ETH and will be a staple collateral token for future Dopex Options Products.

The rDPX bonding process represents the method in which new dpxETH tokens can be minted. When a user bonds with the rDPX V2 contract they receive a receipt token. A receipt token represents ETH and dpxETH LP on curve.

Via the bonding process new dpxETH is minted and its backing is maintained via a rDPX and ETH reserve (the Backing Reserves). These backing reserves are controlled via AMOs. To ensure a safe and controllable way to scale rDPX V2 and dpxETH together we have decided incorporate the AMO ideology from Frax Finance.

Full product spec: https://dopex.notion.site/rDPX-V2-RI-b45b5b402af54bcab758d62fb7c69cb4

# Scope

*See [scope.txt](https://github.com/code-423n4/2023-08-dopex/blob/main/scope.txt)*

| Contract                                                                          | SLOCs | Purpose                                                        | Libraries used                                                                 |
| --------------------------------------------------------------------------------- | ---- | -------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| [contracts/amo/UniV2LiquidityAmo.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/amo/UniV2LiquidityAmo.sol)                      | 271  | This contract encompasses all functions for the Uniswap V2 AMO | [`@openzeppelin/*`](https://openzeppelin.com/contracts/), Uniswap V2 libraries |
| [contracts/amo/UniV3LiquidityAmo.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/amo/UniV3LiquidityAmo.sol)                      | 269  | This contract encompasses all functions for the Uniswap V3 AMO | [`@openzeppelin/*`](https://openzeppelin.com/contracts/), Uniswap V3 libraries |
| [contracts/core/RdpxV2Core.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/core/RdpxV2Core.sol)                                   | 708 | This is the core contract of rDPX V2                           | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [contracts/core/RdpxV2Bond.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/core/RdpxV2Bond.sol)                                   | 54   | ERC721 contract for minting NFT bonds via the core contract    | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [contracts/decaying-bonds/RdpxDecayingBonds.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/decaying-bonds/RdpxDecayingBonds.sol)           | 119  | Contract responsible to mint rDPX decaying bonds               | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [contracts/dpxETH/DpxEthToken.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/dpxETH/DpxEthToken.sol)                               | 51   | ERC20 dpxETH token contract                                    | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [contracts/perp-vault/PerpetualAtlanticVault.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/perp-vault/PerpetualAtlanticVault.sol)     | 420  | Contract for the Perpetual Atlantic Vault (ERC721)             | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |
| [contracts/perp-vault/PerpetualAtlanticVaultLP.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/perp-vault/PerpetualAtlanticVaultLP.sol) | 182  | Contract for the Perpetual Atlantic Vault LP (ERC4626)         | [`@openzeppelin/*`](https://openzeppelin.com/contracts/), solmate              |
| [contracts/reLP/ReLPContract.sol](https://github.com/code-423n4/2023-08-dopex/blob/main/contracts/reLP/ReLPContract.sol)                     | 190  | Contract to perform the reLP process on the Uniswap V2 AMO     | [`@openzeppelin/*`](https://openzeppelin.com/contracts/)                       |

## Out of scope

RdpxV2ReceiptToken contracts, staking contracts, reserve contracts, dpxETH/ETH oracle.

## Scoping Details

```
- How many contracts are in scope?: 9 (Excluding interfaces)
- Total SLoC for these contracts?:  2264 (Excluding interfaces)
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

## Setup

```bash
# Cloning
git clone --recurse https://github.com/code-423n4/2023-08-dopex.git
# Updating with submodule if the repo was cloned without `--recurse-submodules`
git submodule update --init --recursive
```

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

### Running coverage

To run solidity code coverage and generate the coverage reports, please use one of the following commands:

```bash
sh coverage.sh
```

or 

```bash
chmod +x coverage.sh
./coverage.sh
```

`forge coverage` will result in an stack too deep error due to https://github.com/foundry-rs/foundry/issues/3357

### Slither

Slither's output can be found at [./slither.txt](https://github.com/code-423n4/2023-08-dopex/blob/main/slither.txt). 
You can run it on your own with `slither .`