**Note:** There is a section for disputed findings below the usual findings sections

## Summary

### Medium Risk Issues

| |Issue|Instances|
|-|:-|:-:|
| [[M&#x2011;01](#m01-return-values-of-approve-not-checked)] | Return values of `approve()` not checked | 5 | 
| [[M&#x2011;02](#m02-using-blocktimestamp-as-the-deadlineexpiry-invites-mev)] | Using `block.timestamp` as the deadline/expiry invites MEV | 1 | 
| [[M&#x2011;03](#m03-contracts-are-vulnerable-to-fee-on-transfer-accounting-related-issues)] | Contracts are vulnerable to fee-on-transfer accounting-related issues | 6 | 
| [[M&#x2011;04](#m04-unsafe-use-of-transfertransferfrom-with-ierc20)] | Unsafe use of `transfer()`/`transferFrom()` with `IERC20` | 6 | 
| [[M&#x2011;05](#m05-_safemint-should-be-used-rather-than-_mint-wherever-possible)] | `_safeMint()` should be used rather than `_mint()` wherever possible | 3 | 
| [[M&#x2011;06](#m06-return-values-of-transfertransferfrom-not-checked)] | Return values of transfer()/transferFrom() not checked | 6 | 
| [[M&#x2011;07](#m07-some-tokens-may-revert-when-zero-value-transfers-are-made)] | Some tokens may revert when zero value transfers are made | 23 | 

Total: 50 instances over 7 issues

### Low Risk Issues

| |Issue|Instances|
|-|:-|:-:|
| [[L&#x2011;01](#l01-unsafe-downcast)] | Unsafe downcast | 3 | 
| [[L&#x2011;02](#l02-loss-of-precision)] | Loss of precision | 7 | 
| [[L&#x2011;03](#l03-owner-can-renounce-while-system-is-paused)] | Owner can renounce while system is paused | 5 | 
| [[L&#x2011;04](#l04-safeapprove-is-deprecated)] | `safeApprove()` is deprecated | 10 | 
| [[L&#x2011;05](#l05-approvesafeapprove-may-revert-if-the-current-approval-is-not-zero)] | `approve()`/`safeApprove()` may revert if the current approval is not zero | 19 | 
| [[L&#x2011;06](#l06-some-tokens-may-not-consider-typeuint256max-as-an-infinite-approval)] | Some tokens may not consider `type(uint256).max` as an infinite approval | 6 | 
| [[L&#x2011;07](#l07-missing-contract-existence-checks-before-low-level-calls)] | Missing contract-existence checks before low-level calls | 1 | 
| [[L&#x2011;08](#l08-external-call-recipient-may-consume-all-transaction-gas)] | External call recipient may consume all transaction gas | 1 | 
| [[L&#x2011;09](#l09-functions-calling-contractsaddresses-with-transfer-hooks-are-missing-reentrancy-guards)] | Functions calling contracts/addresses with transfer hooks are missing reentrancy guards | 23 | 
| [[L&#x2011;10](#l10-multiplication-on-the-result-of-a-division)] | Multiplication on the result of a division | 8 | 
| [[L&#x2011;11](#l11-external-calls-in-an-un-bounded-for-loop-may-result-in-a-dos)] | External calls in an un-bounded `for-`loop may result in a DOS | 10 | 
| [[L&#x2011;12](#l12-state-variables-not-capped-at-reasonable-values)] | State variables not capped at reasonable values | 1 | 
| [[L&#x2011;13](#l13-missing-checks-for-address0x0-when-updating-address-state-variables)] | Missing checks for `address(0x0)` when updating `address` state variables | 3 | 
| [[L&#x2011;14](#l14-missing-checks-for-address0x0-in-the-constructor)] | Missing checks for `address(0x0)` in the constructor | 4 | 
| [[L&#x2011;15](#l15-code-does-not-follow-the-best-practice-of-check-effects-interaction)] | Code does not follow the best practice of check-effects-interaction | 25 | 
| [[L&#x2011;16](#l16-symbol-is-not-a-part-of-the-erc-20-standard)] | `symbol()` is not a part of the ERC-20 standard | 1 | 
| [[L&#x2011;17](#l17-decimals-is-not-a-part-of-the-erc-20-standard)] | `decimals()` is not a part of the ERC-20 standard | 2 | 
| [[L&#x2011;18](#l18-sweeping-may-break-accounting-if-tokens-with-multiple-addresses-are-used)] | Sweeping may break accounting if tokens with multiple addresses are used | 2 | 
| [[L&#x2011;19](#l19-some-tokens-may-revert-when-large-transfers-are-made)] | Some tokens may revert when large transfers are made | 13 | 

Total: 144 instances over 19 issues

### Non-critical Issues

| |Issue|Instances|
|-|:-|:-:|
| [[N&#x2011;01](#n01-unsafe-conversion-from-unsigned-to-signed-values)] | Unsafe conversion from unsigned to signed values | 4 | 
| [[N&#x2011;02](#n02-public-functions-not-called-by-the-contract-should-be-declared-external-instead)] | `public` functions not called by the contract should be declared `external` instead | 33 | 
| [[N&#x2011;03](#n03-constants-should-be-defined-rather-than-using-magic-numbers)] | `constant`s should be defined rather than using magic numbers | 102 | 
| [[N&#x2011;04](#n04-event-is-not-properly-indexed)] | Event is not properly `indexed` | 6 | 
| [[N&#x2011;05](#n05-common-functions-should-be-refactored-to-a-common-base-contract)] | Common functions should be refactored to a common base contract | 9 | 
| [[N&#x2011;06](#n06-import-declarations-should-import-specific-identifiers-rather-than-the-whole-file)] | Import declarations should import specific identifiers, rather than the whole file | 6 | 
| [[N&#x2011;07](#n07-events-that-mark-critical-parameter-changes-should-contain-both-the-old-and-the-new-value)] | Events that mark critical parameter changes should contain both the old and the new value | 16 | 
| [[N&#x2011;08](#n08-constant-redefined-elsewhere)] | Constant redefined elsewhere | 6 | 
| [[N&#x2011;09](#n09-lines-are-too-long)] | Lines are too long | 1 | 
| [[N&#x2011;10](#n10-long-functions-should-be-refactored-into-multiple-smaller-functions)] | Long functions should be refactored into multiple, smaller, functions | 11 | 
| [[N&#x2011;11](#n11-typos)] | Typos | 15 | 
| [[N&#x2011;12](#n12-file-is-missing-natspec)] | File is missing NatSpec | 2 | 
| [[N&#x2011;13](#n13-natspec-param-is-missing)] | NatSpec `@param` is missing | 42 | 
| [[N&#x2011;14](#n14-natspec-return-argument-is-missing)] | NatSpec `@return` argument is missing | 21 | 
| [[N&#x2011;15](#n15-avoid-the-use-of-sensitive-terms)] | Avoid the use of sensitive terms | 18 | 
| [[N&#x2011;16](#n16-function-ordering-does-not-follow-the-solidity-style-guide)] | Function ordering does not follow the Solidity style guide | 14 | 
| [[N&#x2011;17](#n17-contract-does-not-follow-the-solidity-style-guides-suggested-layout-ordering)] | Contract does not follow the Solidity style guide's suggested layout ordering | 6 | 
| [[N&#x2011;18](#n18-control-structures-do-not-follow-the-solidity-style-guide)] | Control structures do not follow the Solidity Style Guide | 88 | 
| [[N&#x2011;19](#n19-top-level-declarations-should-be-separated-by-at-least-two-lines)] | Top-level declarations should be separated by at least two lines | 21 | 
| [[N&#x2011;20](#n20-invalid-natspec-comment-style)] | Invalid NatSpec comment style | 1 | 
| [[N&#x2011;21](#n21-consider-using-delete-rather-than-assigning-zerofalse-to-clear-values)] | Consider using `delete` rather than assigning zero/false to clear values | 3 | 
| [[N&#x2011;22](#n22-contracts-should-have-full-test-coverage)] | Contracts should have full test coverage | 1 | 
| [[N&#x2011;23](#n23-large-or-complicated-code-bases-should-implement-invariant-tests)] | Large or complicated code bases should implement invariant tests | 1 | 
| [[N&#x2011;24](#n24-consider-adding-formal-verification-proofs)] | Consider adding formal verification proofs | 1 | 
| [[N&#x2011;25](#n25-multiple-addressid-mappings-can-be-combined-into-a-single-mapping-of-an-addressid-to-a-struct-for-readability)] | Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, for readability | 1 | 
| [[N&#x2011;26](#n26-custom-errors-should-be-used-rather-than-revertrequire)] | Custom errors should be used rather than `revert()`/`require()` | 21 | 
| [[N&#x2011;27](#n27-not-using-the-named-return-variables-anywhere-in-the-function-is-confusing)] | Not using the named return variables anywhere in the function is confusing | 10 | 
| [[N&#x2011;28](#n28-consider-using-accesscontroldefaultadminrules-rather-than-accesscontrol)] | Consider using `AccessControlDefaultAdminRules` rather than `AccessControl` | 8 | 
| [[N&#x2011;29](#n29-array-indicies-should-be-referenced-via-enums-rather-than-via-numeric-literals)] | Array indicies should be referenced via `enum`s rather than via numeric literals | 25 | 
| [[N&#x2011;30](#n30-event-names-should-use-camelcase)] | Event names should use CamelCase | 1 | 
| [[N&#x2011;31](#n31-events-are-missing-sender-information)] | Events are missing sender information | 30 | 
| [[N&#x2011;32](#n32-internal-functions-not-called-by-the-contract-should-be-removed)] | `internal` functions not called by the contract should be removed | 4 | 
| [[N&#x2011;33](#n33-addresss-shouldnt-be-hard-coded)] | `address`s shouldn't be hard-coded | 3 | 
| [[N&#x2011;34](#n34-high-cyclomatic-complexity)] | High cyclomatic complexity | 1 | 
| [[N&#x2011;35](#n35-variables-need-not-be-initialized-to-zero)] | Variables need not be initialized to zero | 19 | 
| [[N&#x2011;36](#n36-consider-using-named-mappings)] | Consider using named mappings | 14 | 
| [[N&#x2011;37](#n37-contract-uses-both-requirerevert-as-well-as-custom-errors)] | Contract uses both `require()`/`revert()` as well as custom errors | 1 | 
| [[N&#x2011;38](#n38-consider-adding-a-blockdeny-list)] | Consider adding a block/deny-list | 10 | 
| [[N&#x2011;39](#n39-non-externalpublic-function-names-should-begin-with-an-underscore)] | Non-`external`/`public` function names should begin with an underscore | 1 | 
| [[N&#x2011;40](#n40-use-of-override-is-unnecessary)] | Use of `override` is unnecessary | 9 | 
| [[N&#x2011;41](#n41-array-is-pushed-but-not-poped)] | Array is `push()`ed but not `pop()`ed | 5 | 
| [[N&#x2011;42](#n42-consider-using-safetransferlibsafetransfereth-or-addresssendvalue-for-clearer-semantic-meaning)] | Consider using `SafeTransferLib.safeTransferETH()` or `Address.sendValue()` for clearer semantic meaning | 1 | 
| [[N&#x2011;43](#n43-large-numeric-literals-should-use-underscores-for-readability)] | Large numeric literals should use underscores for readability | 1 | 
| [[N&#x2011;44](#n44-unused-event-definition)] | Unused `event` definition | 1 | 
| [[N&#x2011;45](#n45-unused-function-parameter)] | Unused function parameter | 1 | 
| [[N&#x2011;46](#n46-unused-import)] | Unused import | 5 | 
| [[N&#x2011;47](#n47-consider-using-descriptive-constants-when-passing-zero-as-a-function-argument)] | Consider using descriptive `constant`s when passing zero as a function argument | 5 | 
| [[N&#x2011;48](#n48-constants-in-comparisons-should-appear-on-the-left-side)] | Constants in comparisons should appear on the left side | 14 | 
| [[N&#x2011;49](#n49-expressions-for-constant-values-should-use-immutable-rather-than-constant)] | Expressions for constant values should use `immutable` rather than `constant` | 11 | 
| [[N&#x2011;50](#n50-error-messages-should-descriptive-rather-that-cryptic)] | Error messages should descriptive, rather that cryptic | 3 | 
| [[N&#x2011;51](#n51-else-block-not-required)] | `else`-block not required | 1 | 
| [[N&#x2011;52](#n52-cast-to-bytes-or-bytes32-for-clearer-semantic-meaning)] | Cast to `bytes` or `bytes32` for clearer semantic meaning | 2 | 
| [[N&#x2011;53](#n53-use-stringconcat-on-strings-instead-of-abiencodepacked-for-clearer-semantic-meaning)] | Use `string.concat()` on strings instead of `abi.encodePacked()` for clearer semantic meaning | 2 | 
| [[N&#x2011;54](#n54-events-may-be-emitted-out-of-order-due-to-reentrancy)] | Events may be emitted out of order due to reentrancy | 28 | 
| [[N&#x2011;55](#n55-function-names-should-use-lowercamelcase)] | Function names should use lowerCamelCase | 2 | 
| [[N&#x2011;56](#n56-consider-bounding-input-array-length)] | Consider bounding input array length | 7 | 
| [[N&#x2011;57](#n57-if-statement-can-be-converted-to-a-ternary)] | `if`-statement can be converted to a ternary | 1 | 
| [[N&#x2011;58](#n58-consider-splitting-long-calculations)] | Consider splitting long calculations | 5 | 
| [[N&#x2011;59](#n59-contract-declarations-should-have-natspec-descriptions)] | Contract declarations should have NatSpec descriptions | 4 | 
| [[N&#x2011;60](#n60-contract-declarations-should-have-natspec-author-annotations)] | Contract declarations should have NatSpec `@author` annotations | 6 | 
| [[N&#x2011;61](#n61-contract-declarations-should-have-natspec-title-annotations)] | Contract declarations should have NatSpec `@title` annotations | 4 | 
| [[N&#x2011;62](#n62-event-declarations-should-have-natspec-descriptions)] | Event declarations should have NatSpec descriptions | 14 | 
| [[N&#x2011;63](#n63-missing-event-and-or-timelock-for-critical-parameter-change)] | Missing event and or timelock for critical parameter change | 6 | 
| [[N&#x2011;64](#n64-function-declarations-should-have-natspec-descriptions)] | Function declarations should have NatSpec descriptions | 31 | 
| [[N&#x2011;65](#n65-consider-moving-msgsender-checks-to-a-common-authorization-modifier)] | Consider moving `msg.sender` checks to a common authorization `modifier` | 3 | 
| [[N&#x2011;66](#n66-setters-should-prevent-re-setting-of-the-same-value)] | Setters should prevent re-setting of the same value | 16 | 
| [[N&#x2011;67](#n67-imports-could-be-organized-more-systematically)] | Imports could be organized more systematically | 1 | 
| [[N&#x2011;68](#n68-complex-casting)] | Complex casting | 4 | 
| [[N&#x2011;69](#n69-mixed-usage-of-intuint-with-int256uint256)] | Mixed usage of `int`/`uint` with `int256`/`uint256` | 3 | 
| [[N&#x2011;70](#n70-public-variable-declarations-should-have-natspec-descriptions)] | Public variable declarations should have NatSpec descriptions | 15 | 

Total: 788 instances over 70 issues

### Gas Optimizations

| |Issue|Instances|Total Gas Saved|
|-|:-|:-:|:-:|
| [[G&#x2011;01](#g01-enable-ir-based-code-generation)] | Enable IR-based code generation | 1 |  - |
| [[G&#x2011;02](#g02-remove-or-replace-unused-state-variables)] | Remove or replace unused state variables | 2 |  - |
| [[G&#x2011;03](#g03-multiple-addressid-mappings-can-be-combined-into-a-single-mapping-of-an-addressid-to-a-struct-where-appropriate)] | Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, where appropriate | 1 |  - |
| [[G&#x2011;04](#g04-state-variables-only-set-in-the-constructor-should-be-declared-immutable)] | State variables only set in the constructor should be declared `immutable` | 11 |  23067 |
| [[G&#x2011;05](#g05-state-variables-can-be-packed-into-fewer-storage-slots)] | State variables can be packed into fewer storage slots | 1 |  2000 |
| [[G&#x2011;06](#g06-state-variables-can-be-packed-into-fewer-storage-slots-by-truncating-timestamp-bytes)] | State variables can be packed into fewer storage slots by truncating timestamp bytes | 2 |  - |
| [[G&#x2011;07](#g07-using-storage-instead-of-memory-for-structsarrays-saves-gas)] | Using `storage` instead of `memory` for structs/arrays saves gas | 1 |  4200 |
| [[G&#x2011;08](#g08-state-variables-should-be-cached-in-stack-variables-rather-than-re-reading-them-from-storage)] | State variables should be cached in stack variables rather than re-reading them from storage | 16 |  1552 |
| [[G&#x2011;09](#g09-multiple-accesses-of-a-mappingarray-should-use-a-local-variable-cache)] | Multiple accesses of a mapping/array should use a local variable cache | 12 |  504 |
| [[G&#x2011;10](#g10-internal-functions-only-called-once-can-be-inlined-to-save-gas)] | `internal` functions only called once can be inlined to save gas | 4 |  80 |
| [[G&#x2011;11](#g11-arraylength-should-not-be-looked-up-in-every-loop-of-a-for-looparray)] | `<array>.length` should not be looked up in every loop of a `for`-loop | 11 |  33 |
| [[G&#x2011;12](#g12-ii-should-be-uncheckediuncheckedi-when-it-is-not-possible-for-them-to-overflow-as-is-the-case-when-used-in-for--and-while-loops)] | `++i`/`i++` should be `unchecked{++i}`/`unchecked{i++}` when it is not possible for them to overflow, as is the case when used in `for`- and `while`-loops | 12 |  720 |
| [[G&#x2011;13](#g13-requirerevert-strings-longer-than-32-bytes-cost-extra-gas)] | `require()`/`revert()` strings longer than 32 bytes cost extra gas | 13 |  39 |
| [[G&#x2011;14](#g14-optimize-names-to-save-gas)] | Optimize names to save gas | 8 |  176 |
| [[G&#x2011;15](#g15-i-costs-less-gas-than-i-especially-when-its-used-in-for-loops---ii---too)] | `++i` costs less gas than `i++`, especially when it's used in `for`-loops (`--i`/`i--` too) | 12 |  60 |
| [[G&#x2011;16](#g16-splitting-require-statements-that-use--saves-gas)] | Splitting `require()` statements that use `&&` saves gas | 2 |  6 |
| [[G&#x2011;17](#g17-using-private-rather-than-public-for-constants-saves-gas)] | Using `private` rather than `public` for constants, saves gas | 14 |  - |
| [[G&#x2011;18](#g18-dont-compare-boolean-expressions-to-boolean-literals)] | Don't compare boolean expressions to boolean literals | 1 |  9 |
| [[G&#x2011;19](#g19-dont-use-safemath-once-the-solidity-version-is-080-or-greater)] | Don't use `SafeMath` once the solidity version is 0.8.0 or greater | 3 |  - |
| [[G&#x2011;20](#g20-use-custom-errors-rather-than-revertrequire-strings-to-save-gas)] | Use custom errors rather than `revert()`/`require()` strings to save gas | 21 |  - |
| [[G&#x2011;21](#g21-functions-guaranteed-to-revert-when-called-by-normal-users-can-be-marked-payable)] | Functions guaranteed to revert when called by normal users can be marked `payable` | 72 |  1512 |
| [[G&#x2011;22](#g22-constructors-can-be-marked-payable)] | Constructors can be marked `payable` | 9 |  189 |
| [[G&#x2011;23](#g23-dont-use-_msgsender-if-not-supporting-eip-2771)] | Don't use `_msgSender()` if not supporting EIP-2771 | 2 |  32 |
| [[G&#x2011;24](#g24-use-assembly-to-emit-events-in-order-to-save-gas)] | Use assembly to emit events, in order to save gas | 26 |  988 |
| [[G&#x2011;25](#g25-use-assembly-for-small-keccak256-hashes-in-order-to-save-gas)] | Use assembly for small keccak256 hashes, in order to save gas | 2 |  160 |
| [[G&#x2011;26](#g26-avoid-fetching-a-low-level-calls-return-data-by-using-assembly)] | Avoid fetching a low-level call's return data by using assembly | 1 |  159 |
| [[G&#x2011;27](#g27-division-by-powers-of-two-should-use-bit-shifting)] | Division by powers of two should use bit shifting | 13 |  260 |
| [[G&#x2011;28](#g28-events-should-be-emitted-outside-of-loops)] | Events should be emitted outside of loops | 3 |  1125 |
| [[G&#x2011;29](#g29-internal-functions-not-called-by-the-contract-should-be-removed-to-save-deployment-gas)] | `internal` functions not called by the contract should be removed to save deployment gas | 4 |  - |
| [[G&#x2011;30](#g30--costs-less-gas-than-)] | `>=` costs less gas than `>` | 4 |  12 |
| [[G&#x2011;31](#g31-avoid-updating-storage-when-the-value-hasnt-changed)] | Avoid updating storage when the value hasn't changed | 16 |  12800 |
| [[G&#x2011;32](#g32-x--y-costs-more-gas-than-x--x--y-for-state-variablesyxxyx)] | `<x> += <y>` costs more gas than `<x> = <x> + <y>` for state variables | 35 |  3955 |
| [[G&#x2011;33](#g33-state-variable-read-in-a-loop)] | State variable read in a loop | 20 |  1940 |
| [[G&#x2011;34](#g34-using-bools-for-storage-incurs-overhead)] | Using `bool`s for storage incurs overhead | 4 |  400 |
| [[G&#x2011;35](#g35-use-uint2561uint2562-instead-of-truefalse-to-save-gas-for-changes)] | Use `uint256(1)`/`uint256(2)` instead of `true`/`false` to save gas for changes | 4 |  68400 |
| [[G&#x2011;36](#g36-unchecked---can-be-used-on-the-division-of-two-uints-in-order-to-save-gas)] | `unchecked {}`  can be used on the division of two `uint`s in order to save gas | 13 |  260 |

Total: 376 instances over 36 issues with **124638 gas** saved

Gas totals are estimates based on data from the Ethereum Yellowpaper. The estimates use the lower bounds of ranges and count two iterations of each `for`-loop. All values above are runtime, not deployment, values; deployment values are listed in the individual issue descriptions. The table above as well as its gas numbers do not include any of the excluded findings.

### Disputed Issues

The issues below may be reported by other bots/wardens, but can be penalized/ignored since either the rule or the specified instances are invalid

| |Issue|Instances|
|-|:-|:-:|
| [[D&#x2011;01](#d01-mintburn-missing-access-control)] | ~~`mint()`/`burn()` missing access control~~ | 2 | 
| [[D&#x2011;02](#d02-return-values-of-approve-not-checked)] | ~~Return values of `approve()` not checked~~ | 8 | 
| [[D&#x2011;03](#d03-some-tokens-may-revert-when-zero-value-transfers-are-made)] | ~~Some tokens may revert when zero value transfers are made~~ | 5 | 
| [[D&#x2011;04](#d04-approvesafeapprove-may-revert-if-the-current-approval-is-not-zero)] | ~~`approve()`/`safeApprove()` may revert if the current approval is not zero~~ | 3 | 
| [[D&#x2011;05](#d05-some-tokens-may-not-consider-typeuint256max-as-an-infinite-approval)] | ~~Some tokens may not consider `type(uint256).max` as an infinite approval~~ | 5 | 
| [[D&#x2011;06](#d06-state-variables-should-be-cached-in-stack-variables-rather-than-re-reading-them-from-storage)] | ~~State variables should be cached in stack variables rather than re-reading them from storage~~ | 23 | 
| [[D&#x2011;07](#d07-abiencodepacked-should-not-be-used-with-dynamic-types-when-passing-the-result-to-a-hash-function-such-as-keccak256)] | ~~`abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()`~~ | 3 | 
| [[D&#x2011;08](#d08-spdx-identifier-should-be-the-in-the-first-line-of-a-solidity-file)] | ~~SPDX identifier should be the in the first line of a solidity file~~ | 9 | 
| [[D&#x2011;09](#d09-overly-complicated-arithmetic)] | ~~Overly complicated arithmetic~~ | 14 | 
| [[D&#x2011;10](#d10-public-functions-not-used-internally-can-be-marked-as-external-to-save-gas)] | ~~Public functions not used internally can be marked as external to save gas~~ | 33 | 
| [[D&#x2011;11](#d11-unused-named-return-variables-without-optimizer-waste-gas)] | ~~Unused named return variables without optimizer waste gas~~ | 10 | 
| [[D&#x2011;12](#d12-must-approve-or-increase-allowance-first)] | ~~Must approve or increase allowance first~~ | 16 | 
| [[D&#x2011;13](#d13-ierc20-approve-is-deprecated)] | ~~IERC20 approve() Is Deprecated~~ | 1 | 
| [[D&#x2011;14](#d14-large-approvals-may-not-work-with-some-erc20-tokens)] | ~~Large approvals may not work with some ERC20 tokens~~ | 12 | 
| [[D&#x2011;15](#d15-shorten-the-array-rather-than-copying-to-a-new-one)] | ~~Shorten the array rather than copying to a new one~~ | 1 | 
| [[D&#x2011;16](#d16-missing-contract-existence-checks-before-low-level-calls)] | ~~Missing contract-existence checks before low-level calls~~ | 1 | 
| [[D&#x2011;17](#d17-function-result-should-be-cached)] | ~~Function result should be cached~~ | 2 | 
| [[D&#x2011;18](#d18-constantimmutable-variable-names-should-use-capital-letters-and-underscore)] | ~~`constant`/`immutable` variable names should use capital letters and underscore~~ | 3 | 
| [[D&#x2011;19](#d19-constant-decimal-values)] | ~~Constant decimal values~~ | 16 | 
| [[D&#x2011;20](#d20-functions-calling-contractsaddresses-with-transfer-hooks-are-missing-reentrancy-guards)] | ~~Functions calling contracts/addresses with transfer hooks are missing reentrancy guards~~ | 2 | 
| [[D&#x2011;21](#d21-require--revert-statements-should-have-descriptive-reason-strings)] | ~~`require()` / `revert()` statements should have descriptive reason strings~~ | 2 | 
| [[D&#x2011;22](#d22-use-delete-instead-of-setting-mappingstate-variable-to-zero-to-save-gas)] | ~~Use delete instead of setting mapping/state variable to zero, to save gas~~ | 2 | 
| [[D&#x2011;23](#d23-events-that-mark-critical-parameter-changes-should-contain-both-the-old-and-the-new-value)] | ~~Events that mark critical parameter changes should contain both the old and the new value~~ | 22 | 
| [[D&#x2011;24](#d24-cast-to-bytes-or-bytes32-for-clearer-semantic-meaning)] | ~~Cast to `bytes` or `bytes32` for clearer semantic meaning~~ | 1 | 
| [[D&#x2011;25](#d25-use-bytesconcat-on-bytes-instead-of-abiencodepacked-for-clearer-semantic-meaning)] | ~~Use `bytes.concat()` on bytes instead of `abi.encodePacked()` for clearer semantic meaning~~ | 1 | 
| [[D&#x2011;26](#d26-event-names-should-use-camelcase)] | ~~Event names should use CamelCase~~ | 13 | 
| [[D&#x2011;27](#d27-dependence-on-external-protocols)] | ~~Dependence on external protocols~~ | 33 | 
| [[D&#x2011;28](#d28-function-names-not-in-mixedcase)] | ~~Function Names Not in mixedCase~~ | 20 | 
| [[D&#x2011;29](#d29-contracts-do-not-work-with-fee-on-transfer-tokens)] | ~~Contracts do not work with fee-on-transfer tokens~~ | 15 | 
| [[D&#x2011;30](#d30-use--0-instead-of--0-for-unsigned-integer-comparison)] | ~~Use != 0 instead of > 0 for unsigned integer comparison~~ | 19 | 
| [[D&#x2011;31](#d31-state-variables-not-capped-at-reasonable-values)] | ~~State variables not capped at reasonable values~~ | 16 | 
| [[D&#x2011;32](#d32-tokens-may-be-minted-to-address0x0)] | ~~Tokens may be minted to `address(0x0)`~~ | 4 | 
| [[D&#x2011;33](#d33-multiplications-of-powers-of-can-be-replaced-by-a-left-shift-operation-to-save-gas)] | ~~Multiplications of powers of can be replaced by a left shift operation to save gas~~ | 1 | 
| [[D&#x2011;34](#d34-allowed-feesrates-should-be-capped-by-smart-contracts)] | ~~Allowed fees/rates should be capped by smart contracts~~ | 2 | 
| [[D&#x2011;35](#d35-contracts-are-not-using-their-oz-upgradeable-counterparts)] | ~~Contracts are not using their OZ Upgradeable counterparts~~ | 41 | 
| [[D&#x2011;36](#d36-unnecessary-look-up-in-if-condition)] | ~~Unnecessary look up in if condition~~ | 1 | 
| [[D&#x2011;37](#d37-all-interfaces-used-within-a-project-should-be-imported)] | ~~All interfaces used within a project should be imported~~ | 1 | 
| [[D&#x2011;38](#d38-change-public-function-visibility-to-external-to-save-gas)] | ~~Change `public` function visibility to `external` to save gas~~ | 27 | 
| [[D&#x2011;39](#d39-use-replace-and-pop-instead-of-the-delete-keyword-to-removing-an-item-from-an-array)] | ~~Use replace and pop instead of the delete keyword to removing an item from an array~~ | 1 | 
| [[D&#x2011;40](#d40-safemint-should-be-used-in-place-of-mint)] | ~~safeMint should be used in place of mint~~ | 3 | 
| [[D&#x2011;41](#d41-use-_safemint-instead-of-_mint-for-erc721)] | ~~Use `_safeMint` instead of `_mint` for ERC721~~ | 2 | 
| [[D&#x2011;42](#d42-its-not-standard-to-end-and-begin-a-code-object-on-the-same-line)] | ~~It's not standard to end and begin a code object on the same line~~ | 91 | 
| [[D&#x2011;43](#d43-state-variable-read-in-a-loop)] | ~~State variable read in a loop~~ | 30 | 
| [[D&#x2011;44](#d44-save-gas-with-the-use-of-specific-import-statements)] | ~~Save gas with the use of specific import statements~~ | 6 | 
| [[D&#x2011;45](#d45-unused-import)] | ~~Unused import~~ | 91 | 
| [[D&#x2011;46](#d46-unusual-loop-variable)] | ~~Unusual loop variable~~ | 12 | 
| [[D&#x2011;47](#d47-using-named-function-calls-is-a-much-safer)] | ~~Using named function calls is a much safer~~ | 1 | 
| [[D&#x2011;48](#d48-safetransfer-should-be-used-in-place-of-transfer)] | ~~SafeTransfer should be used in place of transfer~~ | 2 | 

Total: 629 instances over 48 issues




## Medium Risk Issues


### [M&#x2011;01] Return values of `approve()` not checked
Not all `IERC20` implementations `revert()` when there's a failure in `approve()`. The function signature has a `boolean` return value and they indicate errors that way instead. By not checking the return value, operations that should have marked as failed, may potentially go through without actually approving anything

*There are 5 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

134:     IERC20WithBurn(_token).approve(_spender, _amount);

```
*GitHub*: [134](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L134-L134)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

150:       IERC20WithBurn(_token).approve(_target, _amount);

169      IERC20WithBurn(params._tokenA).approve(
170        address(univ3_positions),
171        params._amount0Desired
172:     );

173      IERC20WithBurn(params._tokenB).approve(
174        address(univ3_positions),
175        params._amount1Desired
176:     );

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L150-L150), [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L169-L172), [173](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L173-L176)

```solidity
File: contracts/core/RdpxV2Core.sol

411:     IERC20WithBurn(_token).approve(_spender, _amount);

```
*GitHub*: [411](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L411-L411)


### [M&#x2011;02] Using `block.timestamp` as the deadline/expiry invites MEV
Passing `block.timestamp` as the expiry/deadline of an operation does not mean "require immediate execution" - it means "whatever block this transaction appears in, I'm comfortable with that block's timestamp". Providing this value means that a malicious miner can hold the transaction for as long as they like (think the flashbots mempool for bundling transactions), which may be until they are able to cause the transaction to incur the maximum amount of slippage allowed by the slippage parameter, or until conditions become unfavorable enough that other orders, e.g. liquidations, are triggered. Timestamps should be chosen off-chain, and should be specified by the caller to avoid unnecessary MEV.

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

337        .swapExactTokensForTokens(
338          token1Amount,
339          token2AmountOutMin,
340          path,
341          address(this),
342          block.timestamp + 1
343        )[path.length - 1];
344  
345:     // send tokens back to rdpxV2Core

```
*GitHub*: [337](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L337-L345)


### [M&#x2011;03] Contracts are vulnerable to fee-on-transfer accounting-related issues
The functions below transfer funds from the caller to the receiver via `transferFrom()`, but do not ensure that the actual number of tokens received is the same as the input amount to the transfer. If the token is a fee-on-transfer token, the balance after the transfer will be smaller than expected, leading to accounting issues. Even if there are checks later, related to a secondary transfer, an attacker may be able to use latent funds (e.g. mistakenly sent by another user) in order to get a free credit. One way to solve this problem is to measure the balance before and after the transfer, and use the difference as the amount, rather than the stated amount.

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

304    function swap(
305      uint256 token1Amount,
306      uint256 token2AmountOutMin,
307      bool swapTokenAForTokenB
308    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 token2Amount) {
309      address token1;
310      address token2;
311  
312      // check to see if we are swapping token A for token B
313      if (swapTokenAForTokenB) {
314        token1 = addresses.tokenA;
315        token2 = addresses.tokenB;
316      } else {
317        token1 = addresses.tokenB;
318        token2 = addresses.tokenA;
319      }
320      // transfer token A from the rdpxV2Core to this contract
321      IERC20WithBurn(token1).safeTransferFrom(
322        addresses.rdpxV2Core,
323        address(this),
324        token1Amount
325      );
326  
327      // approve the AMM Router
328      IERC20WithBurn(token1).safeApprove(addresses.ammRouter, token1Amount);
329  
330      address[] memory path;
331      path = new address[](2);
332      path[0] = token1;
333      path[1] = token2;
334  
335      // swap token A for token B
336      token2Amount = IUniswapV2Router(addresses.ammRouter)
337        .swapExactTokensForTokens(
338          token1Amount,
339          token2AmountOutMin,
340          path,
341          address(this),
342          block.timestamp + 1
343        )[path.length - 1];
344  
345      // send tokens back to rdpxV2Core
346      _sendTokensToRdpxV2Core();
347  
348      emit LogSwap(
349        msg.sender,
350        token1Amount,
351        token2AmountOutMin,
352        swapTokenAForTokenB,
353        token2Amount
354      );
355:   }

```
*GitHub*: [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L304-L355)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

274    function swap(
275      address _tokenA,
276      address _tokenB,
277      uint24 _fee_tier,
278      uint256 _amountAtoB,
279      uint256 _amountOutMinimum,
280      uint160 _sqrtPriceLimitX96
281    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {
282      // transfer token from rdpx v2 core
283      IERC20WithBurn(_tokenA).transferFrom(
284        rdpxV2Core,
285        address(this),
286        _amountAtoB
287      );
288  
289      ISwapRouter.ExactInputSingleParams memory swap_params = ISwapRouter
290        .ExactInputSingleParams(
291          _tokenA,
292          _tokenB,
293          _fee_tier,
294          address(this),
295          2105300114, // Expiration: a long time from now
296          _amountAtoB,
297          _amountOutMinimum,
298          _sqrtPriceLimitX96
299        );
300  
301      // Approval
302      TransferHelper.safeApprove(_tokenA, address(univ3_router), _amountAtoB);
303  
304      uint256 amountOut = univ3_router.exactInputSingle(swap_params);
305  
306      _sendTokensToRdpxV2Core(_tokenA, _tokenB);
307      return amountOut;
308:   }

```
*GitHub*: [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L308)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

255    function purchase(
256      uint256 amount,
257      address to
258    )
259      external
260      nonReentrant
261      onlyRole(RDPXV2CORE_ROLE)
262      returns (uint256 premium, uint256 tokenId)
263    {
264      _whenNotPaused();
265      _validate(amount > 0, 2);
266  
267      updateFunding();
268  
269      uint256 currentPrice = getUnderlyingPrice(); // price of underlying wrt collateralToken
270      uint256 strike = roundUp(currentPrice - (currentPrice / 4)); // 25% below the current price
271      IPerpetualAtlanticVaultLP perpetualAtlanticVaultLp = IPerpetualAtlanticVaultLP(
272          addresses.perpetualAtlanticVaultLP
273        );
274  
275      // Check if vault has enough collateral to write the options
276      uint256 requiredCollateral = (amount * strike) / 1e8;
277  
278      _validate(
279        requiredCollateral <= perpetualAtlanticVaultLp.totalAvailableCollateral(),
280        3
281      );
282  
283      uint256 timeToExpiry = nextFundingPaymentTimestamp() - block.timestamp;
284  
285      // Get total premium for all options being purchased
286      premium = calculatePremium(strike, amount, timeToExpiry, 0);
287  
288      // Transfer premium from msg.sender to PerpetualAtlantics vault
289      collateralToken.safeTransferFrom(msg.sender, address(this), premium);
290  
291      perpetualAtlanticVaultLp.lockCollateral(requiredCollateral);
292      _updateFundingRate(premium);
293  
294      // Mint the option tokens
295      tokenId = _mintOptionToken();
296      optionPositions[tokenId] = OptionPosition({
297        strike: strike,
298        amount: amount,
299        positionId: tokenId
300      });
301  
302      totalActiveOptions += amount;
303      fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;
304      optionsPerStrike[strike] += amount;
305  
306      // record the number of options funding has been accounted for the epoch and strike
307      fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
308        strike
309      ] += amount;
310  
311      emit Purchase(strike, amount, premium, to, msg.sender);
312:   }

315    function settle(
316      uint256[] memory optionIds
317    )
318      external
319      nonReentrant
320      onlyRole(RDPXV2CORE_ROLE)
321      returns (uint256 ethAmount, uint256 rdpxAmount)
322    {
323      _whenNotPaused();
324      _isEligibleSender();
325  
326      updateFunding();
327  
328      for (uint256 i = 0; i < optionIds.length; i++) {
329        uint256 strike = optionPositions[optionIds[i]].strike;
330        uint256 amount = optionPositions[optionIds[i]].amount;
331  
332        // check if strike is ITM
333        _validate(strike >= getUnderlyingPrice(), 7);
334  
335        ethAmount += (amount * strike) / 1e8;
336        rdpxAmount += amount;
337        optionsPerStrike[strike] -= amount;
338        totalActiveOptions -= amount;
339  
340        // Burn option tokens from user
341        _burn(optionIds[i]);
342  
343        optionPositions[optionIds[i]].strike = 0;
344      }
345  
346      // Transfer collateral token from perpetual vault to rdpx rdpxV2Core
347      collateralToken.safeTransferFrom(
348        addresses.perpetualAtlanticVaultLP,
349        addresses.rdpxV2Core,
350        ethAmount
351      );
352      // Transfer rdpx from rdpx rdpxV2Core to perpetual vault
353      IERC20WithBurn(addresses.rdpx).safeTransferFrom(
354        addresses.rdpxV2Core,
355        addresses.perpetualAtlanticVaultLP,
356        rdpxAmount
357      );
358  
359      IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP).subtractLoss(
360        ethAmount
361      );
362      IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP)
363        .unlockLiquidity(ethAmount);
364      IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP).addRdpx(
365        rdpxAmount
366      );
367  
368      emit Settle(ethAmount, rdpxAmount, optionIds);
369:   }

372    function payFunding() external onlyRole(RDPXV2CORE_ROLE) returns (uint256) {
373      _whenNotPaused();
374      _isEligibleSender();
375  
376      _validate(
377        totalActiveOptions ==
378          fundingPaymentsAccountedFor[latestFundingPaymentPointer],
379        6
380      );
381  
382      collateralToken.safeTransferFrom(
383        addresses.rdpxV2Core,
384        address(this),
385        totalFundingForEpoch[latestFundingPaymentPointer]
386      );
387      _updateFundingRate(totalFundingForEpoch[latestFundingPaymentPointer]);
388  
389      emit PayFunding(
390        msg.sender,
391        totalFundingForEpoch[latestFundingPaymentPointer],
392        latestFundingPaymentPointer
393      );
394  
395      return (totalFundingForEpoch[latestFundingPaymentPointer]);
396:   }

```
*GitHub*: [255](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L255-L312), [315](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L315-L369), [372](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L372-L396)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

118    function deposit(
119      uint256 assets,
120      address receiver
121    ) public virtual returns (uint256 shares) {
122      // Check for rounding error since we round down in previewDeposit.
123      require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");
124  
125      perpetualAtlanticVault.updateFunding();
126  
127      // Need to transfer before minting or ERC777s could reenter.
128      collateral.transferFrom(msg.sender, address(this), assets);
129  
130      _mint(receiver, shares);
131  
132      _totalCollateral += assets;
133  
134      emit Deposit(msg.sender, receiver, assets, shares);
135:   }

```
*GitHub*: [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L118-L135)


### [M&#x2011;04] Unsafe use of `transfer()`/`transferFrom()` with `IERC20`
Some tokens do not implement the ERC20 standard properly but are still accepted by most code that accepts ERC20 tokens.  For example Tether (USDT)'s `transfer()` and `transferFrom()` functions on L1 do not return booleans as the specification requires, and instead have no return value. When these sorts of tokens are cast to `IERC20`, their [function signatures](https://medium.com/coinmonks/missing-return-value-bug-at-least-130-tokens-affected-d67bf08521ca) do not match and therefore the calls made, revert (see [this](https://gist.github.com/IllIllI000/2b00a32e8f0559e8f386ea4f1800abc5) link for a test case). Use OpenZeppelinundefineds `SafeERC20`'s `safeTransfer()`/`safeTransferFrom()` instead

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

158      IERC20WithBurn(params._tokenA).transferFrom(
159        rdpxV2Core,
160        address(this),
161        params._amount0Desired
162:     );

163      IERC20WithBurn(params._tokenB).transferFrom(
164        rdpxV2Core,
165        address(this),
166        params._amount1Desired
167:     );

283      IERC20WithBurn(_tokenA).transferFrom(
284        rdpxV2Core,
285        address(this),
286        _amountAtoB
287:     );

```
*GitHub*: [158](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L158-L162), [163](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L163-L167), [283](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L283-L287)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

128:     collateral.transferFrom(msg.sender, address(this), assets);

170:     collateral.transfer(receiver, assets);

```
*GitHub*: [128](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L128-L128), [170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L170-L170)

```solidity
File: contracts/reLP/ReLPContract.sol

243      IERC20WithBurn(addresses.pair).transferFrom(
244        addresses.amo,
245        address(this),
246        lpToRemove
247:     );

```
*GitHub*: [243](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L243-L247)


### [M&#x2011;05] `_safeMint()` should be used rather than `_mint()` wherever possible
`_mint()` is [discouraged](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/d4d8d2ed9798cc3383912a23b5e8d5cb602f7d4b/contracts/token/ERC721/ERC721.sol#L271) in favor of `_safeMint()` which ensures that the recipient is either an EOA or implements `IERC721Receiver`. Both [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/d4d8d2ed9798cc3383912a23b5e8d5cb602f7d4b/contracts/token/ERC721/ERC721.sol#L238-L250) and [solmate](https://github.com/Rari-Capital/solmate/blob/4eaf6b68202e36f67cab379768ac6be304c8ebde/src/tokens/ERC721.sol#L180) have versions of this function. In the cases below, `_mint()` does not call `ERC721TokenReceiver.onERC721Received()` on the recipient.

*There are 3 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

42:      _mint(to, tokenId);

```
*GitHub*: [42](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L42-L42)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

132:     _mint(to, tokenId);

```
*GitHub*: [132](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L132-L132)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

591:     _mint(addresses.rdpxV2Core, tokenId);

```
*GitHub*: [591](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L591-L591)


### [M&#x2011;06] Return values of transfer()/transferFrom() not checked
Not all `IERC20` implementations `revert()` when there's a failure in `transfer()`/`transferFrom()`. The function signature has a `boolean` return value and they indicate errors that way [instead](https://etherscan.io/address/0x25d772b21b0e5197f2dc8169e3aa976b16be04ac#code#F1#L44). By not checking the return value, operations that should have marked as failed, may potentially go through without actually making a payment

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

158      IERC20WithBurn(params._tokenA).transferFrom(
159        rdpxV2Core,
160        address(this),
161        params._amount0Desired
162:     );

163      IERC20WithBurn(params._tokenB).transferFrom(
164        rdpxV2Core,
165        address(this),
166        params._amount1Desired
167:     );

283      IERC20WithBurn(_tokenA).transferFrom(
284        rdpxV2Core,
285        address(this),
286        _amountAtoB
287:     );

```
*GitHub*: [158](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L158-L162), [163](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L163-L167), [283](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L283-L287)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

128:     collateral.transferFrom(msg.sender, address(this), assets);

170:     collateral.transfer(receiver, assets);

```
*GitHub*: [128](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L128-L128), [170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L170-L170)

```solidity
File: contracts/reLP/ReLPContract.sol

243      IERC20WithBurn(addresses.pair).transferFrom(
244        addresses.amo,
245        address(this),
246        lpToRemove
247:     );

```
*GitHub*: [243](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L243-L247)


### [M&#x2011;07] Some tokens may revert when zero value transfers are made
In spite of the fact that EIP-20 [states](https://github.com/ethereum/EIPs/blob/46b9b698815abbfa628cd1097311deee77dd45c5/EIPS/eip-20.md?plain=1#L116) that zero-valued transfers must be accepted, some tokens, such as LEND will revert if this is attempted, which may cause transactions that involve other tokens (such as batch operations) to fully revert. Consider skipping the transfer if the amount is zero, which will also save gas.

*There are 23 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

165        address(this)
166      );
167      // transfer token A and B from this contract to the rdpxV2Core
168      IERC20WithBurn(addresses.tokenA).safeTransfer(
169        addresses.rdpxV2Core,
170        tokenABalance
171:     );

169        addresses.rdpxV2Core,
170        tokenABalance
171      );
172      IERC20WithBurn(addresses.tokenB).safeTransfer(
173        addresses.rdpxV2Core,
174        tokenBBalance
175:     );

207      );
208  
209      // transfer token A and B from the rdpxV2Core to this contract
210      IERC20WithBurn(addresses.tokenA).safeTransferFrom(
211        addresses.rdpxV2Core,
212        address(this),
213        tokenAAmount
214:     );

212        address(this),
213        tokenAAmount
214      );
215      IERC20WithBurn(addresses.tokenB).safeTransferFrom(
216        addresses.rdpxV2Core,
217        address(this),
218        tokenBAmount
219:     );

```
*GitHub*: [165](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L165-L171), [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L169-L175), [207](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L207-L214), [212](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L212-L219)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

155    function addLiquidity(
156      AddLiquidityParams memory params
157    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
158      IERC20WithBurn(params._tokenA).transferFrom(
159        rdpxV2Core,
160        address(this),
161        params._amount0Desired
162:     );

160        address(this),
161        params._amount0Desired
162      );
163      IERC20WithBurn(params._tokenB).transferFrom(
164        rdpxV2Core,
165        address(this),
166        params._amount1Desired
167:     );

354      uint256 tokenABalance = IERC20WithBurn(tokenA).balanceOf(address(this));
355      uint256 tokenBBalance = IERC20WithBurn(tokenB).balanceOf(address(this));
356      // transfer token A and B from this contract to the rdpxV2Core
357:     IERC20WithBurn(tokenA).safeTransfer(rdpxV2Core, tokenABalance);

355      uint256 tokenBBalance = IERC20WithBurn(tokenB).balanceOf(address(this));
356      // transfer token A and B from this contract to the rdpxV2Core
357      IERC20WithBurn(tokenA).safeTransfer(rdpxV2Core, tokenABalance);
358:     IERC20WithBurn(tokenB).safeTransfer(rdpxV2Core, tokenBBalance);

```
*GitHub*: [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L162), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L160-L167), [354](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L354-L357), [355](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L355-L358)

```solidity
File: contracts/core/RdpxV2Core.sol

650        reserveAsset[reservesIndex["RDPX"]].tokenBalance += _rdpxAmount;
651      } else {
652        // Transfer rDPX and ETH token from user
653        IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)
654:         .safeTransferFrom(msg.sender, address(this), _rdpxAmount);

659        );
660  
661        // transfer the rdpx to the fee distributor
662        IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)
663          .safeTransfer(
664            addresses.feeDistributor,
665            (_rdpxAmount * rdpxFeePercentage) / 1e10
666:         );

1033 
1034     // transfer receipt tokens to user
1035     receiptTokenAmount = bonds[id].amount;
1036     IERC20WithBurn(addresses.rdpxV2ReceiptToken).safeTransfer(
1037       to,
1038       receiptTokenAmount
1039:    );

```
*GitHub*: [650](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L650-L654), [659](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L659-L666), [1033](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1033-L1039)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

102  
103      for (uint256 i = 0; i < tokens.length; i++) {
104        token = IERC20WithBurn(tokens[i]);
105:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [102](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L102-L105)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

224  
225      for (uint256 i = 0; i < tokens.length; i++) {
226        token = IERC20WithBurn(tokens[i]);
227:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

286      premium = calculatePremium(strike, amount, timeToExpiry, 0);
287  
288      // Transfer premium from msg.sender to PerpetualAtlantics vault
289:     collateralToken.safeTransferFrom(msg.sender, address(this), premium);

344      }
345  
346      // Transfer collateral token from perpetual vault to rdpx rdpxV2Core
347      collateralToken.safeTransferFrom(
348        addresses.perpetualAtlanticVaultLP,
349        addresses.rdpxV2Core,
350        ethAmount
351:     );

379        6
380      );
381  
382      collateralToken.safeTransferFrom(
383        addresses.rdpxV2Core,
384        address(this),
385        totalFundingForEpoch[latestFundingPaymentPointer]
386:     );

470  
471          lastUpdateTime = nextFundingPaymentTimestamp();
472  
473          collateralToken.safeTransfer(
474            addresses.perpetualAtlanticVaultLP,
475            (currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
476              1e18
477:         );

507        : lastUpdateTime;
508      lastUpdateTime = block.timestamp;
509  
510      collateralToken.safeTransfer(
511        addresses.perpetualAtlanticVaultLP,
512        (currentFundingRate * (block.timestamp - startTime)) / 1e18
513:     );

```
*GitHub*: [224](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L224-L227), [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L286-L289), [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L344-L351), [379](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L379-L386), [470](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L470-L477), [507](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L507-L513)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

125      perpetualAtlanticVault.updateFunding();
126  
127      // Need to transfer before minting or ERC777s could reenter.
128:     collateral.transferFrom(msg.sender, address(this), assets);

167  
168      _burn(owner, shares);
169  
170:     collateral.transfer(receiver, assets);

```
*GitHub*: [125](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L125-L128), [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L167-L170)

```solidity
File: contracts/reLP/ReLPContract.sol

240        tokenAInfo.tokenALpReserve;
241  
242      // transfer LP tokens from the AMO
243      IERC20WithBurn(addresses.pair).transferFrom(
244        addresses.amo,
245        address(this),
246        lpToRemove
247:     );

295      );
296  
297      // transfer the lp to the amo
298:     IERC20WithBurn(addresses.pair).safeTransfer(addresses.amo, lp);

299      IUniV2LiquidityAmo(addresses.amo).sync();
300  
301      // transfer rdpx to rdpxV2Core
302      IERC20WithBurn(addresses.tokenA).safeTransfer(
303        addresses.rdpxV2Core,
304        IERC20WithBurn(addresses.tokenA).balanceOf(address(this))
305:     );

```
*GitHub*: [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L240-L247), [295](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L295-L298), [299](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L299-L305)

</details>
## Low Risk Issues


### [L&#x2011;01] Unsafe downcast
When a type is downcast to a smaller type, the higher order bits are truncated, effectively applying a modulo to the original value. Without any other checks, this wrapping will lead to unexpected behavior and bugs

*There are 3 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit int128 -> int256
/// @audit int128 -> int256
553:        _ethToDpxEth ? int128(int256(a)) : int128(int256(b)),

/// @audit int128 -> int256
554:        _ethToDpxEth ? int128(int256(b)) : int128(int256(a)),

```
*GitHub*: [553](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L553), [553](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L553), [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L554)


### [L&#x2011;02] Loss of precision
Division by large numbers may result in the result being zero, due to solidity not supporting fractions. Consider requiring a minimum amount for the numerator to ensure that it is always larger than the denominator

*There are 7 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

608       amount1 = ((rdpxRequiredInWeth * _amount) /
609:        (rdpxRequiredInWeth + _wethRequired));

612:      amount1 = (amount1 * (100e8 - _delegateFee)) / 1e10;

673         uint256 extraRdpxToWithdraw = (discountReceivedInWeth * 1e8) /
674:          getRdpxPrice();

```
*GitHub*: [608](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L608-L609), [612](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L612), [673](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L673-L674)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

604           (amount * 1e18) /
605:          (endTime - startTime);

612:          ((amount * 1e18) / (endTime - startTime));

```
*GitHub*: [604](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L604-L605), [612](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L612)

```solidity
File: contracts/reLP/ReLPContract.sol

232       uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /
233:        tokenAInfo.tokenAReserve) *

239       uint256 lpToRemove = (tokenAToRemove * totalLpSupply) /
240:        tokenAInfo.tokenALpReserve;

```
*GitHub*: [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L233), [239](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L239-L240)


### [L&#x2011;03] Owner can renounce while system is paused
The contract owner or single user with a role is not prevented from renouncing the role/ownership while the contract is paused, which would cause any user assets stored in the protocol, to be locked indefinitely

*There are 5 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

29      function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
30        _pause();
31:     }

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L29-L31)

```solidity
File: contracts/core/RdpxV2Core.sol

144     function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
145       _pause();
146:    }

```
*GitHub*: [144](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L144-L146)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

70      function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
71        _pause();
72:     }

```
*GitHub*: [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L70-L72)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

29      function pause() public onlyRole(PAUSER_ROLE) {
30        _pause();
31:     }

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L29-L31)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

136     function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
137       _pause();
138:    }

```
*GitHub*: [136](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L136-L138)


### [L&#x2011;04] `safeApprove()` is deprecated
[Deprecated](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/bfff03c0d2a59bcd8e2ead1da9aed9edf0080d05/contracts/token/ERC20/utils/SafeERC20.sol#L38-L45) in favor of `safeIncreaseAllowance()` and `safeDecreaseAllowance()`. If only setting the initial allowance to the value that means infinite, `safeIncreaseAllowance()` can be used instead. The function may currently work, but if a bug is found in this version of OpenZeppelin, and the version that you're forced to upgrade to no longer has this function, you'll encounter unnecessary delays in porting and testing replacement contracts.

*There are 10 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

200:      IERC20WithBurn(addresses.tokenA).safeApprove(

204:      IERC20WithBurn(addresses.tokenB).safeApprove(

268:      IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);

328:      IERC20WithBurn(token1).safeApprove(addresses.ammRouter, token1Amount);

```
*GitHub*: [200](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L200), [204](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L204), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L268), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L328)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

148:        TransferHelper.safeApprove(_token, _target, _amount);

302:      TransferHelper.safeApprove(_tokenA, address(univ3_router), _amountAtoB);

```
*GitHub*: [148](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L148), [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L302)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

207:      collateralToken.safeApprove(

```
*GitHub*: [207](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L207)

```solidity
File: contracts/reLP/ReLPContract.sol

150:      IERC20WithBurn(addresses.pair).safeApprove(

155:      IERC20WithBurn(addresses.tokenA).safeApprove(

160:      IERC20WithBurn(addresses.tokenB).safeApprove(

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L150), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L155), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L160)


### [L&#x2011;05] `approve()`/`safeApprove()` may revert if the current approval is not zero
Calling `approve()` without first calling `approve(0)` if the current approval is non-zero will revert with some tokens, such as Tether (USDT). While Tether is known to do this, it applies to other tokens as well, which are trying to protect against [this attack vector](https://docs.google.com/document/d/1YLPtQxZu1UAvO9cZ1O2RPXBbT0mooh4DYKjA_jp-RLM/edit). `safeApprove()` itself also implements this protection.
Always reset the approval to zero before changing it to a new value (`forceApprove()` does this for you), or use `safeIncreaseAllowance()`/`safeDecreaseAllowance()`

*There are 19 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

134:     IERC20WithBurn(_token).approve(_spender, _amount);

200      IERC20WithBurn(addresses.tokenA).safeApprove(
201        addresses.ammRouter,
202        tokenAAmount
203:     );

204      IERC20WithBurn(addresses.tokenB).safeApprove(
205        addresses.ammRouter,
206        tokenBAmount
207:     );

268:     IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);

328:     IERC20WithBurn(token1).safeApprove(addresses.ammRouter, token1Amount);

```
*GitHub*: [134](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L134-L134), [200](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L200-L203), [204](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L204-L207), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L268-L268), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L328-L328)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

150:       IERC20WithBurn(_token).approve(_target, _amount);

148:       TransferHelper.safeApprove(_token, _target, _amount);

169      IERC20WithBurn(params._tokenA).approve(
170        address(univ3_positions),
171        params._amount0Desired
172:     );

173      IERC20WithBurn(params._tokenB).approve(
174        address(univ3_positions),
175        params._amount1Desired
176:     );

302:     TransferHelper.safeApprove(_tokenA, address(univ3_router), _amountAtoB);

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L150-L150), [148](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L148-L148), [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L169-L172), [173](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L173-L176), [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L302-L302)

```solidity
File: contracts/core/RdpxV2Core.sol

339      IERC20WithBurn(weth).approve(
340        addresses.perpetualAtlanticVault,
341        type(uint256).max
342:     );

345      IERC20WithBurn(weth).approve(
346        addresses.rdpxV2ReceiptToken,
347        type(uint256).max
348:     );

411:     IERC20WithBurn(_token).approve(_spender, _amount);

```
*GitHub*: [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L339-L342), [345](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L345-L348), [411](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L411-L411)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

207      collateralToken.safeApprove(
208        addresses.perpetualAtlanticVaultLP,
209        type(uint256).max
210:     );

245        ? collateralToken.approve(
246          addresses.perpetualAtlanticVaultLP,
247          type(uint256).max
248:       )

```
*GitHub*: [207](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L207-L210), [245](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L245-L248)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

106:     collateral.approve(_perpetualAtlanticVault, type(uint256).max);

```
*GitHub*: [106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L106-L106)

```solidity
File: contracts/reLP/ReLPContract.sol

150      IERC20WithBurn(addresses.pair).safeApprove(
151        addresses.ammRouter,
152        type(uint256).max
153:     );

155      IERC20WithBurn(addresses.tokenA).safeApprove(
156        addresses.ammRouter,
157        type(uint256).max
158:     );

160      IERC20WithBurn(addresses.tokenB).safeApprove(
161        addresses.ammRouter,
162        type(uint256).max
163:     );

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L150-L153), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L155-L158), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L160-L163)


### [L&#x2011;06] Some tokens may not consider `type(uint256).max` as an infinite approval
Some tokens such as [COMP](https://github.com/compound-finance/compound-protocol/blob/a3214f67b73310d547e00fc578e8355911c9d376/contracts/Governance/Comp.sol#L89-L91) downcast such approvals to `uint96` and use that as a raw value rather than interpreting it as an infinite approval. Eventually these approvals will reach zero, at which point the calling contract will no longer function properly.

*There are 6 instances of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

207      collateralToken.safeApprove(
208        addresses.perpetualAtlanticVaultLP,
209        type(uint256).max
210:     );

245        ? collateralToken.approve(
246          addresses.perpetualAtlanticVaultLP,
247          type(uint256).max
248:       )

```
*GitHub*: [207](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L207-L210), [245](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L245-L248)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

106:     collateral.approve(_perpetualAtlanticVault, type(uint256).max);

```
*GitHub*: [106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L106-L106)

```solidity
File: contracts/reLP/ReLPContract.sol

150      IERC20WithBurn(addresses.pair).safeApprove(
151        addresses.ammRouter,
152        type(uint256).max
153:     );

155      IERC20WithBurn(addresses.tokenA).safeApprove(
156        addresses.ammRouter,
157        type(uint256).max
158:     );

160      IERC20WithBurn(addresses.tokenB).safeApprove(
161        addresses.ammRouter,
162        type(uint256).max
163:     );

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L150-L153), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L155-L158), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L160-L163)


### [L&#x2011;07] Missing contract-existence checks before low-level calls
Low-level calls return success if there is no code present at the specified address. In addition to the zero-address checks, add a check to verify that `<address>.code.length > 0`

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

344      (bool success, bytes memory result) = _to.call{ value: _value }(_data);
345      return (success, result);
346:   }

```
*GitHub*: [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L344-L346)


### [L&#x2011;08] External call recipient may consume all transaction gas
There is no limit specified on the amount of gas used, so the recipient can use up all of the transaction's gas, causing it to revert. Use `addr.call{gas: <amount>}("")` or [this](https://github.com/nomad-xyz/ExcessivelySafeCall) library instead.

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit `execute()`
344:     (bool success, bytes memory result) = _to.call{ value: _value }(_data);

```
*GitHub*: [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L344-L344)


### [L&#x2011;09] Functions calling contracts/addresses with transfer hooks are missing reentrancy guards
Even if the function follows the best practice of check-effects-interaction, not using a reentrancy guard when there may be transfer hooks will open the users of this protocol up to [read-only reentrancies](https://chainsecurity.com/curve-lp-oracle-manipulation-post-mortem/) with no way to protect against it, except by block-listing the whole protocol.

*There are 23 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit `emergencyWithdraw()`
149:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

/// @audit `addLiquidity()`
210      IERC20WithBurn(addresses.tokenA).safeTransferFrom(
211        addresses.rdpxV2Core,
212        address(this),
213        tokenAAmount
214:     );

/// @audit `addLiquidity()`
215      IERC20WithBurn(addresses.tokenB).safeTransferFrom(
216        addresses.rdpxV2Core,
217        address(this),
218        tokenBAmount
219:     );

/// @audit `swap()`
321      IERC20WithBurn(token1).safeTransferFrom(
322        addresses.rdpxV2Core,
323        address(this),
324        token1Amount
325:     );

```
*GitHub*: [149](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L149-L149), [210](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L210-L214), [215](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L215-L219), [321](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L321-L325)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit `addLiquidity()`
158      IERC20WithBurn(params._tokenA).transferFrom(
159        rdpxV2Core,
160        address(this),
161        params._amount0Desired
162:     );

/// @audit `addLiquidity()`
163      IERC20WithBurn(params._tokenB).transferFrom(
164        rdpxV2Core,
165        address(this),
166        params._amount1Desired
167:     );

/// @audit `swap()`
283      IERC20WithBurn(_tokenA).transferFrom(
284        rdpxV2Core,
285        address(this),
286        _amountAtoB
287:     );

```
*GitHub*: [158](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L158-L162), [163](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L163-L167), [283](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L283-L287)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit `emergencyWithdraw()`
169:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

/// @audit `bond()`
909      IERC20WithBurn(weth).safeTransferFrom(
910        msg.sender,
911        address(this),
912        wethRequired
913:     );

/// @audit `addToDelegate()`
953:     IERC20WithBurn(weth).safeTransferFrom(msg.sender, address(this), _amount);

/// @audit `withdraw()`
987:     IERC20WithBurn(weth).safeTransfer(msg.sender, amountWithdrawn);

/// @audit `redeem()`
1036     IERC20WithBurn(addresses.rdpxV2ReceiptToken).safeTransfer(
1037       to,
1038       receiptTokenAmount
1039:    );

```
*GitHub*: [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L169-L169), [909](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L909-L913), [953](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L953-L953), [987](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L987-L987), [1036](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1036-L1039)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit `emergencyWithdraw()`
105:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [105](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L105-L105)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit `emergencyWithdraw()`
227:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

/// @audit `payFunding()`
382      collateralToken.safeTransferFrom(
383        addresses.rdpxV2Core,
384        address(this),
385        totalFundingForEpoch[latestFundingPaymentPointer]
386:     );

/// @audit `updateFundingPaymentPointer()`
473          collateralToken.safeTransfer(
474            addresses.perpetualAtlanticVaultLP,
475            (currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
476              1e18
477:         );

/// @audit `updateFunding()`
510      collateralToken.safeTransfer(
511        addresses.perpetualAtlanticVaultLP,
512        (currentFundingRate * (block.timestamp - startTime)) / 1e18
513:     );

```
*GitHub*: [227](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L227-L227), [382](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L382-L386), [473](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L473-L477), [510](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L510-L513)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit `deposit()`
128:     collateral.transferFrom(msg.sender, address(this), assets);

/// @audit `redeem()`
170:     collateral.transfer(receiver, assets);

/// @audit `redeem()`
172:     IERC20WithBurn(rdpx).safeTransfer(receiver, rdpxAmount);

```
*GitHub*: [128](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L128-L128), [170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L170-L170), [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L172-L172)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit `reLP()`
243      IERC20WithBurn(addresses.pair).transferFrom(
244        addresses.amo,
245        address(this),
246        lpToRemove
247:     );

/// @audit `reLP()`
298:     IERC20WithBurn(addresses.pair).safeTransfer(addresses.amo, lp);

/// @audit `reLP()`
302      IERC20WithBurn(addresses.tokenA).safeTransfer(
303        addresses.rdpxV2Core,
304        IERC20WithBurn(addresses.tokenA).balanceOf(address(this))
305:     );

```
*GitHub*: [243](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L243-L247), [298](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L298-L298), [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L302-L305)

</details>

### [L&#x2011;10] Multiplication on the result of a division
Dividing an integer by another integer will often result in loss of precision. When the result is multiplied by another number, the loss of precision is magnified, often to material magnitudes. `(X / Z) * Y` should be re-written as `(X * Y) / Z`

*There are 8 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

1170         ((RDPX_RATIO_PERCENTAGE - (bondDiscount / 2)) *
1171           _amount *
1172:          DEFAULT_PRECISION) /

1170         ((RDPX_RATIO_PERCENTAGE - (bondDiscount / 2)) *
1171:          _amount *

1176:        ((ETH_RATIO_PERCENTAGE - (bondDiscount / 2)) * _amount) /

```
*GitHub*: [1170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1170-L1172), [1170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1170-L1171), [1176](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1176-L1176)

```solidity
File: contracts/reLP/ReLPContract.sol

232      uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /
233        tokenAInfo.tokenAReserve) *
234        tokenAInfo.tokenALpReserve *
235:       baseReLpRatio) / (1e18 * DEFAULT_PRECISION * 1e2);

232      uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /
233        tokenAInfo.tokenAReserve) *
234:       tokenAInfo.tokenALpReserve *

274:       (((amountB / 2) * tokenAInfo.tokenAPrice) / 1e8) -

275:       (((amountB / 2) * tokenAInfo.tokenAPrice * slippageTolerance) / 1e16);

```
*GitHub*: [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L235), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L234), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L274-L274), [275](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L275-L275), [275](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L275-L275)


### [L&#x2011;11] External calls in an un-bounded `for-`loop may result in a DOS
Consider limiting the number of iterations in `for-`loops that make external calls

*There are 10 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

149:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [149](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L149-L149), [149](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L149-L149)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

131:       univ3_positions.collect(collect_params);

```
*GitHub*: [131](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L131-L131)

```solidity
File: contracts/core/RdpxV2Core.sol

169:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

997        uint256 balance = IERC20WithBurn(reserveAsset[i].tokenAddress).balanceOf(
998          address(this)
999:       );

```
*GitHub*: [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L169-L169), [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L169-L169), [997](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L997-L999)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

105:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [105](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L105-L105), [105](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L105-L105)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

227:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [227](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L227-L227), [227](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L227-L227)


### [L&#x2011;12] State variables not capped at reasonable values
Consider adding minimum/maximum value checks to ensure that the state variables below can never be used to excessively harm users, including via griefing

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

240:     fundingDuration = _fundingDuration;

```
*GitHub*: [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L240-L240)


### [L&#x2011;13] Missing checks for `address(0x0)` when updating `address` state variables


*There are 3 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

333:     path[1] = token2;

```
*GitHub*: [333](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L333-L333)

```solidity
File: contracts/core/RdpxV2Core.sol

1094:      path[0] = reserveAsset[reservesIndex["RDPX"]].tokenAddress;

1095:      path[1] = weth;

```
*GitHub*: [1094](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1094-L1094), [1095](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1095-L1095)


### [L&#x2011;14] Missing checks for `address(0x0)` in the constructor


*There are 4 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

77:      rdpx = _rdpx;

78:      rdpxV2Core = _rdpxV2Core;

```
*GitHub*: [77](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L77-L77), [78](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L78-L78)

```solidity
File: contracts/core/RdpxV2Core.sol

126:     weth = _weth;

```
*GitHub*: [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L126-L126)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

99:      rdpxRdpxV2Core = _rdpxRdpxV2Core;

```
*GitHub*: [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L99-L99)


### [L&#x2011;15] Code does not follow the best practice of check-effects-interaction
Code should follow the best-practice of [check-effects-interaction](https://blockchain-academy.hs-mittweida.de/courses/solidity-coding-beginners-to-intermediate/lessons/solidity-11-coding-patterns/topic/checks-effects-interactions/), where state variables are updated before any external calls are made. Doing so prevents a large class of reentrancy bugs.

*There are 25 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit MintParams() called prior to this assignment
207:     positions_mapping[tokenId] = pos;

```
*GitHub*: [207](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L207-L207)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit safeTransferFrom() called prior to this assignment
485:     optionsOwned[optionId] = true;

/// @audit safeTransferFrom() called prior to this assignment
486:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= premium;

/// @audit safeTransferFrom() called prior to this assignment
500      bonds[bondId] = Bond({
501        amount: _amount,
502        maturity: block.timestamp + bondMaturity,
503        timestamp: block.timestamp
504:     });

/// @audit safeTransferFrom() called prior to this assignment
681        reserveAsset[reservesIndex["RDPX"]].tokenBalance +=
682          _rdpxAmount +
683:         extraRdpxToWithdraw;

/// @audit safeTransferFrom() called prior to this assignment
650:       reserveAsset[reservesIndex["RDPX"]].tokenBalance += _rdpxAmount;

/// @audit safeTransferFrom() called prior to this assignment
779:     reserveAsset[reservesIndex["WETH"]].tokenBalance += amountOfWeth;

/// @audit safeTransferFrom() called prior to this assignment
780:     reserveAsset[reservesIndex["RDPX"]].tokenBalance -= rdpxAmount;

/// @audit safeTransferFrom() called prior to this assignment
803:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= fundingAmount;

/// @audit safeTransferFrom() called prior to this assignment
805:     fundingPaidFor[pointer] = true;

/// @audit safeTransferFrom() called prior to this assignment
916:     reserveAsset[reservesIndex["WETH"]].tokenBalance += wethRequired;

/// @audit safeTransferFrom() called prior to this assignment
964:     totalWethDelegated += _amount;

/// @audit safeTransferFrom() called prior to this assignment
1004:      reserveAsset[i].tokenBalance = balance;

/// @audit safeTransferFrom() called prior to this assignment
1067:    reserveAsset[reservesIndex["WETH"]].tokenBalance += wethReceived;

/// @audit safeTransferFrom() called prior to this assignment
1106:      reserveAsset[reservesIndex["RDPX"]].tokenBalance -= _rdpxAmount;

/// @audit safeTransferFrom() called prior to this assignment
1110:    reserveAsset[reservesIndex["WETH"]].tokenBalance -= _wethAmount;

```
*GitHub*: [485](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L485-L485), [486](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L486-L486), [500](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L500-L504), [681](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L681-L683), [650](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L650-L650), [779](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L779-L779), [780](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L780-L780), [803](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L803-L803), [805](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L805-L805), [916](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L916-L916), [964](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L964-L964), [1004](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1004-L1004), [1067](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1067-L1067), [1106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1106-L1106), [1110](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1110-L1110)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit totalAvailableCollateral() called prior to this assignment
296      optionPositions[tokenId] = OptionPosition({
297        strike: strike,
298        amount: amount,
299        positionId: tokenId
300:     });

/// @audit totalAvailableCollateral() called prior to this assignment
302:     totalActiveOptions += amount;

/// @audit totalAvailableCollateral() called prior to this assignment
303:     fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;

/// @audit totalAvailableCollateral() called prior to this assignment
304:     optionsPerStrike[strike] += amount;

/// @audit totalAvailableCollateral() called prior to this assignment
307      fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
308        strike
309:     ] += amount;

/// @audit safeTransfer() called prior to this assignment
493:       latestFundingPaymentPointer += 1;

```
*GitHub*: [296](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L296-L300), [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L302-L302), [303](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L303-L303), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L304-L304), [307](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L307-L309), [493](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L493-L493)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit balanceOf() called prior to this assignment
213:     _rdpxCollateral += amount;

```
*GitHub*: [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L213-L213)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit null() called prior to this assignment
221      tokenAInfo.tokenAPrice = IRdpxEthOracle(addresses.rdpxOracle)
222:       .getRdpxPriceInEth();

/// @audit null() called prior to this assignment
224      tokenAInfo.tokenALpReserve = addresses.tokenA == tokenASorted
225        ? reserveA
226:       : reserveB;

```
*GitHub*: [221](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L221-L222), [224](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L224-L226)


### [L&#x2011;16] `symbol()` is not a part of the ERC-20 standard
The `symbol()` function is not a part of the [ERC-20 standard](https://eips.ethereum.org/EIPS/eip-20), and was added later as an [optional extension](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/IERC20Metadata.sol). As such, some valid ERC20 tokens do not support this interface, so it is unsafe to blindly cast all tokens to this interface, and then call this function.

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

122:     underlyingSymbol = collateralToken.symbol();

```
*GitHub*: [122](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L122-L122)


### [L&#x2011;17] `decimals()` is not a part of the ERC-20 standard
The `decimals()` function is not a part of the [ERC-20 standard](https://eips.ethereum.org/EIPS/eip-20), and was added later as an [optional extension](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/IERC20Metadata.sol). As such, some valid ERC20 tokens do not support this interface, so it is unsafe to blindly cast all tokens to this interface, and then call this function.

*There are 2 instances of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

123:     collateralPrecision = 10 ** collateralToken.decimals();

```
*GitHub*: [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L123-L123)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

91:        ERC20(_collateral).decimals()

```
*GitHub*: [91](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L91-L91)


### [L&#x2011;18] Sweeping may break accounting if tokens with multiple addresses are used
There have been [cases](https://blog.openzeppelin.com/compound-tusd-integration-issue-retrospective/) in the past where a token mistakenly had two addresses that could control its balance, and transfers using one address impacted the balance of the other. To protect against this potential scenario, sweep functions should ensure that the balance of the non-sweepable token does not change after the transfer of the swept tokens.

*There are 2 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

313    function recoverERC20(
314      address tokenAddress,
315      uint256 tokenAmount
316    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
317      // Can only be triggered by owner or governance, not custodian
318      // Tokens are sent to the custodian, as a sort of safeguard
319      TransferHelper.safeTransfer(tokenAddress, rdpxV2Core, tokenAmount);
320  
321      emit RecoveredERC20(tokenAddress, tokenAmount);
322:   }

324    function recoverERC721(
325      address tokenAddress,
326      uint256 token_id
327    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
328      // Only the owner address can ever receive the recovery withdrawal
329      // INonfungiblePositionManager inherits IERC721 so the latter does not need to be imported
330      INonfungiblePositionManager(tokenAddress).safeTransferFrom(
331        address(this),
332        rdpxV2Core,
333        token_id
334      );
335      emit RecoveredERC721(tokenAddress, token_id);
336:   }

```
*GitHub*: [313](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L313-L322), [324](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L324-L336)


### [L&#x2011;19] Some tokens may revert when large transfers are made
Tokens such as COMP or UNI will revert when an address' balance reaches [`type(uint96).max`](https://github.com/compound-finance/compound-protocol/blob/a3214f67b73310d547e00fc578e8355911c9d376/contracts/Governance/Comp.sol#L238). Ensure that the calls below can be broken up into smaller batches if necessary.

*There are 13 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit emergencyWithdraw()
139     * @dev    Can only be called by the owner
140     * @param  tokens The list of erc20 tokens to withdraw
141     **/
142    function emergencyWithdraw(
143      address[] calldata tokens
144    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
145      IERC20WithBurn token;
146  
147      for (uint256 i = 0; i < tokens.length; i++) {
148        token = IERC20WithBurn(tokens[i]);
149:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L139-L149)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit _sendTokensToRdpxV2Core()
350    /**
351     * @dev sends token A and B to the rdpxV2Core
352     */
353    function _sendTokensToRdpxV2Core(address tokenA, address tokenB) internal {
354      uint256 tokenABalance = IERC20WithBurn(tokenA).balanceOf(address(this));
355      uint256 tokenBBalance = IERC20WithBurn(tokenB).balanceOf(address(this));
356      // transfer token A and B from this contract to the rdpxV2Core
357:     IERC20WithBurn(tokenA).safeTransfer(rdpxV2Core, tokenABalance);

/// @audit _sendTokensToRdpxV2Core()
350    /**
351     * @dev sends token A and B to the rdpxV2Core
352     */
353    function _sendTokensToRdpxV2Core(address tokenA, address tokenB) internal {
354      uint256 tokenABalance = IERC20WithBurn(tokenA).balanceOf(address(this));
355      uint256 tokenBBalance = IERC20WithBurn(tokenB).balanceOf(address(this));
356      // transfer token A and B from this contract to the rdpxV2Core
357      IERC20WithBurn(tokenA).safeTransfer(rdpxV2Core, tokenABalance);
358:     IERC20WithBurn(tokenB).safeTransfer(rdpxV2Core, tokenBBalance);

```
*GitHub*: [350](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L350-L357), [350](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L350-L358)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit emergencyWithdraw()
159     * @param  tokens The list of erc20 tokens to withdraw
160     **/
161    function emergencyWithdraw(
162      address[] calldata tokens
163    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
164      _whenPaused();
165      IERC20WithBurn token;
166  
167      for (uint256 i = 0; i < tokens.length; i++) {
168        token = IERC20WithBurn(tokens[i]);
169:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

/// @audit _transfer()
652        // Transfer rDPX and ETH token from user
653        IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)
654          .safeTransferFrom(msg.sender, address(this), _rdpxAmount);
655  
656        // burn the rdpx
657        IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress).burn(
658          (_rdpxAmount * rdpxBurnPercentage) / 1e10
659        );
660  
661        // transfer the rdpx to the fee distributor
662        IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)
663          .safeTransfer(
664            addresses.feeDistributor,
665            (_rdpxAmount * rdpxFeePercentage) / 1e10
666:         );

```
*GitHub*: [159](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L159-L169), [652](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L652-L666)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit emergencyWithdraw()
95     ) external onlyRole(DEFAULT_ADMIN_ROLE) {
96       _whenPaused();
97       if (transferNative) {
98         (bool success, ) = to.call{ value: amount, gas: gas }("");
99         require(success, "RdpxReserve: transfer failed");
100      }
101      IERC20WithBurn token;
102  
103      for (uint256 i = 0; i < tokens.length; i++) {
104        token = IERC20WithBurn(tokens[i]);
105:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

```
*GitHub*: [95](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L95-L105)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit emergencyWithdraw()
217     * @param  tokens The list of erc20 tokens to withdraw
218     **/
219    function emergencyWithdraw(
220      address[] calldata tokens
221    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
222      _whenPaused();
223      IERC20WithBurn token;
224  
225      for (uint256 i = 0; i < tokens.length; i++) {
226        token = IERC20WithBurn(tokens[i]);
227:       token.safeTransfer(msg.sender, token.balanceOf(address(this)));

/// @audit purchase()
279        requiredCollateral <= perpetualAtlanticVaultLp.totalAvailableCollateral(),
280        3
281      );
282  
283      uint256 timeToExpiry = nextFundingPaymentTimestamp() - block.timestamp;
284  
285      // Get total premium for all options being purchased
286      premium = calculatePremium(strike, amount, timeToExpiry, 0);
287  
288      // Transfer premium from msg.sender to PerpetualAtlantics vault
289:     collateralToken.safeTransferFrom(msg.sender, address(this), premium);

/// @audit settle()
337        optionsPerStrike[strike] -= amount;
338        totalActiveOptions -= amount;
339  
340        // Burn option tokens from user
341        _burn(optionIds[i]);
342  
343        optionPositions[optionIds[i]].strike = 0;
344      }
345  
346      // Transfer collateral token from perpetual vault to rdpx rdpxV2Core
347      collateralToken.safeTransferFrom(
348        addresses.perpetualAtlanticVaultLP,
349        addresses.rdpxV2Core,
350        ethAmount
351:     );

/// @audit payFunding()
372    function payFunding() external onlyRole(RDPXV2CORE_ROLE) returns (uint256) {
373      _whenNotPaused();
374      _isEligibleSender();
375  
376      _validate(
377        totalActiveOptions ==
378          fundingPaymentsAccountedFor[latestFundingPaymentPointer],
379        6
380      );
381  
382      collateralToken.safeTransferFrom(
383        addresses.rdpxV2Core,
384        address(this),
385        totalFundingForEpoch[latestFundingPaymentPointer]
386:     );

/// @audit updateFundingPaymentPointer()
463      while (block.timestamp >= nextFundingPaymentTimestamp()) {
464        if (lastUpdateTime < nextFundingPaymentTimestamp()) {
465          uint256 currentFundingRate = fundingRates[latestFundingPaymentPointer];
466  
467          uint256 startTime = lastUpdateTime == 0
468            ? (nextFundingPaymentTimestamp() - fundingDuration)
469            : lastUpdateTime;
470  
471          lastUpdateTime = nextFundingPaymentTimestamp();
472  
473          collateralToken.safeTransfer(
474            addresses.perpetualAtlanticVaultLP,
475            (currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
476              1e18
477:         );

/// @audit updateFunding()
500     * @dev    addProceeds() is invoked to update totalCollateral in LP
501     **/
502    function updateFunding() public {
503      updateFundingPaymentPointer();
504      uint256 currentFundingRate = fundingRates[latestFundingPaymentPointer];
505      uint256 startTime = lastUpdateTime == 0
506        ? (nextFundingPaymentTimestamp() - fundingDuration)
507        : lastUpdateTime;
508      lastUpdateTime = block.timestamp;
509  
510      collateralToken.safeTransfer(
511        addresses.perpetualAtlanticVaultLP,
512        (currentFundingRate * (block.timestamp - startTime)) / 1e18
513:     );

```
*GitHub*: [217](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L217-L227), [279](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L279-L289), [337](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L337-L351), [372](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L372-L386), [463](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L463-L477), [500](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L500-L513)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit redeem()
160  
161      // Check for rounding error since we round down in previewRedeem.
162      require(assets != 0, "ZERO_ASSETS");
163  
164      _rdpxCollateral -= rdpxAmount;
165  
166      beforeWithdraw(assets, shares);
167  
168      _burn(owner, shares);
169  
170:     collateral.transfer(receiver, assets);

```
*GitHub*: [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L160-L170)

## Non-critical Issues


### [N&#x2011;01] Unsafe conversion from unsigned to signed values
Solidity follows [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement) rules for its integers, meaning that the most significant bit for signed integers is used to denote the sign, and converting between the two requires inverting all of the bits and adding one. Because of this, casting an unsigned integer to a signed one may result in a change of the sign and or magnitude of the value. For example, `int8(type(uint8).max)` is not equal to `type(int8).max`, but is equal to `-1`. `type(uint8).max` in binary is `11111111`, which if cast to a signed value, means the first binary `1` indicates a negative value, and the binary `1`s, invert to all zeroes, and when one is added, it becomes one, but negative, and therefore the decimal value of binary `11111111` is `-1`.

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit uint256 a -> int256
/// @audit uint256 b -> int256
553:        _ethToDpxEth ? int128(int256(a)) : int128(int256(b)),

/// @audit uint256 b -> int256
/// @audit uint256 a -> int256
554:        _ethToDpxEth ? int128(int256(b)) : int128(int256(a)),

```
*GitHub*: [553](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L553), [553](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L553), [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L554), [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L554)


### [N&#x2011;02] `public` functions not called by the contract should be declared `external` instead
Contracts [are allowed](https://docs.soliditylang.org/en/latest/contracts.html#function-overriding) to override their parents' functions and change the visibility from `external` to `public`.

*There are 33 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

94      function liquidityInPool(
95        address _collateral_address,
96        int24 _tickLower,
97        int24 _tickUpper,
98        uint24 _fee
99:     ) public view returns (uint128) {

112:    function numPositions() public view returns (uint256) {

139     function approveTarget(
140       address _target,
141       address _token,
142       uint256 _amount,
143       bool use_safe_approve
144:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

155     function addLiquidity(
156       AddLiquidityParams memory params
157:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

213     function removeLiquidity(
214       uint256 positionIndex,
215       uint256 minAmount0,
216       uint256 minAmount1
217:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

274     function swap(
275       address _tokenA,
276       address _tokenB,
277       uint24 _fee_tier,
278       uint256 _amountAtoB,
279       uint256 _amountOutMinimum,
280       uint160 _sqrtPriceLimitX96
281:    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L94-L99), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L112), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L139-L144), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L157), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L217), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L281)

```solidity
File: contracts/core/RdpxV2Bond.sol

29:     function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {

33:     function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {

37      function mint(
38        address to
39:     ) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {

57      function supportsInterface(
58        bytes4 interfaceId
59      )
60        public
61        view
62        override(ERC721, ERC721Enumerable, AccessControl)
63:       returns (bool)

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L39), [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L57-L63)

```solidity
File: contracts/core/RdpxV2Core.sol

819     function bondWithDelegate(
820       address _to,
821       uint256[] memory _amounts,
822       uint256[] memory _delegateIds,
823       uint256 rdpxBondId
824:    ) public returns (uint256 receiptTokenAmount, uint256[] memory) {

894     function bond(
895       uint256 _amount,
896       uint256 rdpxBondId,
897       address _to
898:    ) public returns (uint256 receiptTokenAmount) {

1135    function getReserveTokenInfo(
1136      string memory _token
1137:   ) public view returns (address, uint256, string memory) {

1206:   function getLpPrice() public view returns (uint256) {

1260    function getDelegatePosition(
1261      uint256 _delegateId
1262    )
1263      public
1264      view
1265      returns (
1266        address delegate,
1267        uint256 amount,
1268        uint256 fee,
1269:       uint256 activeCollateral

```
*GitHub*: [819](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L819-L824), [894](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L894-L898), [1135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1135-L1137), [1206](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1206), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

139     function decreaseAmount(
140       uint256 bondId,
141       uint256 amount
142:    ) public onlyRole(RDPXV2CORE_ROLE) {

174     function supportsInterface(
175       bytes4 interfaceId
176     )
177       public
178       view
179       override(ERC721, ERC721Enumerable, AccessControl)
180:      returns (bool)

```
*GitHub*: [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L139-L142), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L180)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

29:     function pause() public onlyRole(PAUSER_ROLE) {

33:     function unpause() public onlyRole(PAUSER_ROLE) {

37:     function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {

41      function burn(
42        uint256 _amount
43:     ) public override(ERC20Burnable, IDpxEthToken) onlyRole(BURNER_ROLE) {

47      function burnFrom(
48        address account,
49        uint256 amount
50:     ) public override onlyRole(BURNER_ROLE) {

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L37), [41](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L41-L43), [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L47-L50)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

554     function calculatePnl(
555       uint256 price,
556       uint256 strike,
557       uint256 amount
558:    ) public pure returns (uint256) {

645     function supportsInterface(
646       bytes4 interfaceId
647     )
648       public
649       view
650       override(ERC721, ERC721Enumerable, AccessControl)
651:      returns (bool)

```
*GitHub*: [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L554-L558), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L651)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

118     function deposit(
119       uint256 assets,
120       address receiver
121:    ) public virtual returns (uint256 shares) {

145     function redeem(
146       uint256 shares,
147       address receiver,
148       address owner
149:    ) public returns (uint256 assets, uint256 rdpxAmount) {

180:    function lockCollateral(uint256 amount) public onlyPerpVault {

185:    function unlockLiquidity(uint256 amount) public onlyPerpVault {

190:    function addProceeds(uint256 proceeds) public onlyPerpVault {

199:    function subtractLoss(uint256 loss) public onlyPerpVault {

208:    function addRdpx(uint256 amount) public onlyPerpVault {

240:    function activeCollateral() public view returns (uint256) {

250:    function rdpxCollateral() public view returns (uint256) {

```
*GitHub*: [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L118-L121), [145](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L145-L149), [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L180), [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L185), [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L190), [199](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L199), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L208), [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L240), [250](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L250)

</details>

### [N&#x2011;03] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*There are 102 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit 1e8
373:      return (lpTokenBalance * getLpPrice()) / 1e8;

```
*GitHub*: [373](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L373)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit 0x1F98431c8aD98523631AE4a59f267346ea31F984
83:         0x1F98431c8aD98523631AE4a59f267346ea31F984

/// @audit 0xC36442b4a4522E871399CD717aBDD847Ab11FE88
86:         0xC36442b4a4522E871399CD717aBDD847Ab11FE88

/// @audit 0xE592427A0AEce92De3Edee1F18E0157C05861564
88:       univ3_router = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);

/// @audit 2105300114
295:          2105300114, // Expiration: a long time from now

```
*GitHub*: [83](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L83), [86](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L86), [88](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L88), [295](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L295)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit 3
183:      _validate(_rdpxBurnPercentage > 0, 3);

/// @audit 3
196:      _validate(_rdpxFeePercentage > 0, 3);

/// @audit 3
231:      _validate(_bondMaturity > 0, 3);

/// @audit 18
274:      _validate(index != 0, 18);

/// @audit 17
316:      _validate(_dopexAMMRouter != address(0), 17);

/// @audit 17
317:      _validate(_dpxEthCurvePool != address(0), 17);

/// @audit 17
318:      _validate(_rdpxDecayingBonds != address(0), 17);

/// @audit 17
319:      _validate(_perpetualAtlanticVault != address(0), 17);

/// @audit 17
320:      _validate(_perpetualAtlanticVaultLP != address(0), 17);

/// @audit 17
321:      _validate(_rdpxReserve != address(0), 17);

/// @audit 17
322:      _validate(_rdpxV2ReceiptToken != address(0), 17);

/// @audit 17
323:      _validate(_feeDistributor != address(0), 17);

/// @audit 17
324:      _validate(_reLPContract != address(0), 17);

/// @audit 17
325:      _validate(_receiptTokenBonds != address(0), 17);

/// @audit 17
362:      _validate(_rdpxPriceOracle != address(0), 17);

/// @audit 17
363:      _validate(_dpxEthPriceOracle != address(0), 17);

/// @audit 17
379:      _validate(_addr != address(0), 17);

/// @audit 18
391:      _validate(_index < amoAddresses.length, 18);

/// @audit 17
408:      _validate(_token != address(0), 17);

/// @audit 17
409:      _validate(_spender != address(0), 17);

/// @audit 17
410:      _validate(_amount > 0, 17);

/// @audit 3
444:      _validate(_bondDiscountFactor > 0, 3);

/// @audit 3
458:      _validate(_slippageTolerance > 0, 3);

/// @audit 14
536:            14

/// @audit 14
540:            14

/// @audit 1e8
546:        ? (((_amount * getDpxEthPrice()) / 1e8) -

/// @audit 1e16
547:          (((_amount * getDpxEthPrice()) * slippageTolerance) / 1e16))

/// @audit 1e8
548:        : (((_amount * getEthPrice()) / 1e8) -

/// @audit 1e16
549:          (((_amount * getEthPrice()) * slippageTolerance) / 1e16));

/// @audit 1e8
605:      uint256 rdpxRequiredInWeth = (_rdpxRequired * getRdpxPrice()) / 1e8;

/// @audit 100e8
/// @audit 1e10
612:      amount1 = (amount1 * (100e8 - _delegateFee)) / 1e10;

/// @audit 9
640:          9

/// @audit 1e10
658:          (_rdpxAmount * rdpxBurnPercentage) / 1e10

/// @audit 1e10
665:            (_rdpxAmount * rdpxFeePercentage) / 1e10

/// @audit 1e8
669:        uint256 rdpxAmountInWeth = (_rdpxAmount * getRdpxPrice()) / 1e8;

/// @audit 1e8
673:        uint256 extraRdpxToWithdraw = (discountReceivedInWeth * 1e8) /

/// @audit 5
716:      _validate(delegate.amount - delegate.activeCollateral >= wethRequired, 5);

/// @audit 16
798:      _validate(fundingPaidFor[pointer] == false, 16);

/// @audit 3
827:      _validate(_amounts.length == _delegateIds.length, 3);

/// @audit 4
838:        _validate(_amounts[i] > 0, 4);

/// @audit 4
901:      _validate(_amount > 0, 4);

/// @audit 100e8
/// @audit 8
947:      _validate(_fee < 100e8, 8);

/// @audit 1e16
/// @audit 4
949:      _validate(_amount > 1e16, 4);

/// @audit 1e8
/// @audit 8
951:      _validate(_fee >= 1e8, 8);

/// @audit 14
979:      _validate(delegateId < delegates.length, 14);

/// @audit 9
981:      _validate(delegate.owner == msg.sender, 9);

/// @audit 15
984:      _validate(amountWithdrawn > 0, 15);

/// @audit 6
1021:     _validate(bonds[id].timestamp > 0, 6);

/// @audit 7
1023:     _validate(block.timestamp > bonds[id].maturity, 7);

/// @audit 9
1027:       9

/// @audit 1e8
1057:     _validate(getDpxEthPrice() > 1e8, 10);

/// @audit 1e8
/// @audit 13
1087:     _validate(getDpxEthPrice() < 1e8, 13);

/// @audit 19
1143:       19

/// @audit 1e2
/// @audit 1e18
1165:         1e2) / (Math.sqrt(1e18)); // 1e8 precision

/// @audit 100e8
/// @audit 14
1167:       _validate(bondDiscount < 100e8, 14);

/// @audit 1e2
1173:         (DEFAULT_PRECISION * rdpxPrice * 1e2);

/// @audit 1e2
1177:         (DEFAULT_PRECISION * 1e2);

/// @audit 1e2
1182:         (DEFAULT_PRECISION * rdpxPrice * 1e2);

/// @audit 1e2
1186:         (DEFAULT_PRECISION * 1e2);

/// @audit 4
1190:       .roundUp(rdpxPrice - (rdpxPrice / 4)); // 25% below the current price

```
*GitHub*: [183](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L183), [196](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L196), [231](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L231), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L274), [316](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L316), [317](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L317), [318](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L318), [319](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L319), [320](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L320), [321](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L321), [322](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L322), [323](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L323), [324](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L324), [325](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L325), [362](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L362), [363](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L363), [379](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L379), [391](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L391), [408](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L408), [409](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L409), [410](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L410), [444](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L444), [458](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L458), [536](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L536), [540](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L540), [546](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L546), [547](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L547), [548](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L548), [549](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L549), [605](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L605), [612](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L612), [612](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L612), [640](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L640), [658](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L658), [665](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L665), [669](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L669), [673](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L673), [716](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L716), [798](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L798), [827](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L827), [838](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L838), [901](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L901), [947](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L947), [947](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L947), [949](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L949), [949](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L949), [951](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L951), [951](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L951), [979](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L979), [981](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L981), [984](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L984), [1021](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1021), [1023](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1023), [1027](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1027), [1057](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1057), [1087](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1087), [1087](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1087), [1143](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1143), [1165](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1165), [1165](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1165), [1167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1167), [1167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1167), [1173](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1173), [1177](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1177), [1182](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1182), [1186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1186), [1190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1190)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit 4
270:      uint256 strike = roundUp(currentPrice - (currentPrice / 4)); // 25% below the current price

/// @audit 1e8
276:      uint256 requiredCollateral = (amount * strike) / 1e8;

/// @audit 3
280:        3

/// @audit 7
333:        _validate(strike >= getUnderlyingPrice(), 7);

/// @audit 1e8
335:        ethAmount += (amount * strike) / 1e8;

/// @audit 6
379:        6

/// @audit 4
414:        _validate(optionsPerStrike[strikes[i]] > 0, 4);

/// @audit 5
417:          5

/// @audit 1e18
476:              1e18

/// @audit 1e18
482:                1e18

/// @audit 1e18
488:              1e18),

/// @audit 1e18
512:        (currentFundingRate * (block.timestamp - startTime)) / 1e18

/// @audit 1e18
516:        (currentFundingRate * (block.timestamp - startTime)) / 1e18

/// @audit 1e18
521:        ((currentFundingRate * (block.timestamp - startTime)) / 1e18),

/// @audit 1e8
550:      ) * _amount) / 1e8);

/// @audit 1e8
559:      return strike > price ? ((strike - price) * amount) / 1e8 : 0;

/// @audit 1e18
604:          (amount * 1e18) /

/// @audit 1e18
612:          ((amount * 1e18) / (endTime - startTime));

```
*GitHub*: [270](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L270), [276](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L276), [280](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L280), [333](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L333), [335](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L335), [379](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L379), [414](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L414), [417](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L417), [476](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L476), [482](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L482), [488](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L488), [512](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L512), [516](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L516), [521](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L521), [550](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L550), [559](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L559), [604](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L604), [612](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L612)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit 1e8
281:        ((_rdpxCollateral * rdpxPriceInAlphaToken) / 1e8);

```
*GitHub*: [281](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L281)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit 1e2
/// @audit 1e18
230:        1e2) / (Math.sqrt(1e18)); // 1e6 precision

/// @audit 4
/// @audit 1e18
232:      uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /

/// @audit 1e18
/// @audit 1e2
235:        baseReLpRatio) / (1e18 * DEFAULT_PRECISION * 1e2);

/// @audit 1e8
251:        ((tokenAToRemove * liquiditySlippageTolerance) / 1e8);

/// @audit 1e8
253:        1e8) -

/// @audit 1e16
255:        1e16;

/// @audit 1e8
274:        (((amountB / 2) * tokenAInfo.tokenAPrice) / 1e8) -

/// @audit 1e16
275:        (((amountB / 2) * tokenAInfo.tokenAPrice * slippageTolerance) / 1e16);

```
*GitHub*: [230](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L230), [230](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L230), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232), [235](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L235), [235](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L235), [251](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L251), [253](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L253), [255](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L255), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L274), [275](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L275)


### [N&#x2011;04] Event is not properly `indexed`
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

421:    event LogEmergencyWithdraw(address sender, address[] tokens);

```
*GitHub*: [421](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L421)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

368:    event RecoveredERC20(address token, uint256 amount);

369:    event RecoveredERC721(address token, uint256 id);

370     event LogAssetsTransfered(
371       uint256 tokenAAmount,
372       uint256 tokenBAmount,
373       address tokenAAddress,
374       address tokenBAddress
375:    );

```
*GitHub*: [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L368), [369](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L369), [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L370-L375)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

46      event BondMinted(
47        address to,
48        uint256 bondId,
49        uint256 expiry,
50        uint256 rdpxAmount
51:     );

53:     event EmergencyWithdraw(address sender);

```
*GitHub*: [46](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L46-L51), [53](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L53)


### [N&#x2011;05] Common functions should be refactored to a common base contract
The functions below have the same implementation as is seen in other files. The functions should be refactored into functions of a common base contract

*There are 9 instances of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit seen in contracts/core/RdpxV2Core.sol
70      function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
71        _pause();
72:     }

/// @audit seen in contracts/core/RdpxV2Core.sol
76      function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
77        _unpause();
78:     }

/// @audit seen in contracts/core/RdpxV2Bond.sol
162     function _beforeTokenTransfer(
163       address from,
164       address to,
165       uint256 tokenId,
166       uint256 batchSize
167     ) internal override(ERC721, ERC721Enumerable) {
168       _whenNotPaused();
169       super._beforeTokenTransfer(from, to, tokenId, batchSize);
170:    }

/// @audit seen in contracts/core/RdpxV2Bond.sol
174     function supportsInterface(
175       bytes4 interfaceId
176     )
177       public
178       view
179       override(ERC721, ERC721Enumerable, AccessControl)
180       returns (bool)
181     {
182       return super.supportsInterface(interfaceId);
183:    }

```
*GitHub*: [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L70-L72), [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L76-L78), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L162-L170), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L183)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit seen in contracts/core/RdpxV2Core.sol
136     function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
137       _pause();
138:    }

/// @audit seen in contracts/core/RdpxV2Core.sol
144     function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
145       _unpause();
146:    }

/// @audit seen in contracts/core/RdpxV2Bond.sol
635     function _beforeTokenTransfer(
636       address from,
637       address to,
638       uint256 tokenId,
639       uint256 batchSize
640     ) internal override(ERC721, ERC721Enumerable) {
641       _whenNotPaused();
642       super._beforeTokenTransfer(from, to, tokenId, batchSize);
643:    }

/// @audit seen in contracts/core/RdpxV2Bond.sol
645     function supportsInterface(
646       bytes4 interfaceId
647     )
648       public
649       view
650       override(ERC721, ERC721Enumerable, AccessControl)
651       returns (bool)
652     {
653       return super.supportsInterface(interfaceId);
654:    }

```
*GitHub*: [136](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L136-L138), [144](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L144-L146), [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L643), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L654)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit seen in contracts/amo/UniV2LiquidityAmo.sol
186     function setSlippageTolerance(
187       uint256 _slippageTolerance
188     ) external onlyRole(DEFAULT_ADMIN_ROLE) {
189       require(
190         _slippageTolerance > 0,
191         "reLPContract: slippage tolerance must be greater than 0"
192       );
193       slippageTolerance = _slippageTolerance;
194:    }

```
*GitHub*: [186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L186-L194)


### [N&#x2011;06] Import declarations should import specific identifiers, rather than the whole file
Using import declarations of the form `import {<identifier_name>} from "some/file.sol"` avoids polluting the symbol namespace making flattened files smaller, and speeds up compilation (but does not save any gas)

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

12:   import "../uniswap_V3/IUniswapV3Factory.sol";

13:   import "../uniswap_V3/libraries/TickMath.sol";

14:   import "../uniswap_V3/libraries/LiquidityAmounts.sol";

15:   import "../uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

16:   import "../uniswap_V3/IUniswapV3Pool.sol";

17:   import "../uniswap_V3/ISwapRouter.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L17)


### [N&#x2011;07] Events that mark critical parameter changes should contain both the old and the new value
This should especially be done if the new value is not required to be different from the old value

*There are 16 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit setRdpxBurnPercentage()
185:      emit LogSetRdpxBurnPercentage(_rdpxBurnPercentage);

/// @audit setRdpxFeePercentage()
198:      emit LogSetRdpxFeePercentage(_rdpxFeePercentage);

/// @audit setIsreLP()
208:      emit LogSetIsReLPActive(_isReLPActive);

/// @audit setPutOptionsRequired()
220:      emit LogSetputOptionsRequired(_putOptionsRequired);

/// @audit setBondMaturity()
233:      emit LogSetBondMaturity(_bondMaturity);

/// @audit setAddresses()
349:      emit LogSetAddresses(addresses);

/// @audit setPricingOracleAddresses()
370:      emit LogSetPricingOracleAddresses(pricingOracleAddresses);

/// @audit setBondDiscount()
447:      emit LogSetBondDiscountFactor(_bondDiscountFactor);

/// @audit setSlippageTolerance()
461:      emit LogSetSlippageTolerance(_slippageTolerance);

/// @audit settle()
782:      emit LogSettle(optionIds);

```
*GitHub*: [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L185), [198](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L198), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L208), [220](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L220), [233](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L233), [349](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L349), [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L370), [447](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L447), [461](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L461), [782](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L782)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit setAddresses()
211:      emit AddressesSet(addresses);

/// @audit settle()
368:      emit Settle(ethAmount, rdpxAmount, optionIds);

/// @audit updateFundingPaymentPointer()
485           emit FundingPaid(
486             msg.sender,
487             ((currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
488               1e18),
489             latestFundingPaymentPointer
490:          );

/// @audit updateFundingPaymentPointer()
494:        emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);

/// @audit updateFunding()
519       emit FundingPaid(
520         msg.sender,
521         ((currentFundingRate * (block.timestamp - startTime)) / 1e18),
522         latestFundingPaymentPointer
523:      );

```
*GitHub*: [211](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L211), [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L368), [485](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L485-L490), [494](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L494), [519](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L519-L523)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit setreLpFactor()
99:       emit LogSetReLpFactor(_reLPFactor);

```
*GitHub*: [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L99)


### [N&#x2011;08] Constant redefined elsewhere
Consider defining in only one contract so that values cannot become out of sync when only one location is updated. A [cheap way](https://medium.com/coinmonks/gas-cost-of-solidity-library-functions-dbe0cedd4678) to store constants in a single location is to create an `internal constant` in a `library`. If the variable is a local cache of another contract's value, consider making the cache variable internal or private, which will require external users to query the contract with the source of truth, so that callers don't get out of sync.

*There are 6 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit seen in contracts/amo/UniV2LiquidityAmo.sol 
85:     uint256 public constant DEFAULT_PRECISION = 1e8;

```
*GitHub*: [85](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L85)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit seen in contracts/core/RdpxV2Bond.sol 
31:     bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

```
*GitHub*: [31](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L31)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

/// @audit seen in contracts/decaying-bonds/RdpxDecayingBonds.sol 
20:     bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

```
*GitHub*: [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L20)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit seen in contracts/decaying-bonds/RdpxDecayingBonds.sol 
48:     bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [48](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L48)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit seen in contracts/core/RdpxV2Core.sol 
67:     uint256 public constant DEFAULT_PRECISION = 1e8;

/// @audit seen in contracts/perp-vault/PerpetualAtlanticVault.sol 
70:     bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [67](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L67), [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L70)


### [N&#x2011;09] Lines are too long
Usually lines in source code are limited to [80](https://softwareengineering.stackexchange.com/questions/148677/why-is-80-characters-the-standard-limit-for-code-width) characters. Today's screens are much larger so it's reasonable to stretch this in some cases. The solidity style guide recommends a maximumum line length of [120 characters](https://docs.soliditylang.org/en/v0.8.17/style-guide.html#maximum-line-length), so the lines below should be split when they reach that length.

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

154:    // IUniswapV3Pool public current_uni_pool; // only used for mint callback; is set and accessed during execution of addLiquidity()

```
*GitHub*: [154](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L154)


### [N&#x2011;10] Long functions should be refactored into multiple, smaller, functions


*There are 11 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit 62 lines (51 in the body)
189     function addLiquidity(
190       uint256 tokenAAmount,
191       uint256 tokenBAmount,
192       uint256 tokenAAmountMin,
193       uint256 tokenBAmountMin
194     )
195       external
196       onlyRole(DEFAULT_ADMIN_ROLE)
197:      returns (uint256 tokenAUsed, uint256 tokenBUsed, uint256 lpReceived)

/// @audit 52 lines (46 in the body)
304     function swap(
305       uint256 token1Amount,
306       uint256 token2AmountOutMin,
307       bool swapTokenAForTokenB
308:    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 token2Amount) {

```
*GitHub*: [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L189-L197), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L304-L308)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit 57 lines (53 in the body)
155     function addLiquidity(
156       AddLiquidityParams memory params
157:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit 58 lines (52 in the body)
213     function removeLiquidity(
214       uint256 positionIndex,
215       uint256 minAmount0,
216       uint256 minAmount1
217:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

```
*GitHub*: [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L157), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L217)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit 62 lines (55 in the body)
624     function _transfer(
625       uint256 _rdpxAmount,
626       uint256 _wethAmount,
627       uint256 _bondAmount,
628:      uint256 _bondId

/// @audit 67 lines (60 in the body)
819     function bondWithDelegate(
820       address _to,
821       uint256[] memory _amounts,
822       uint256[] memory _delegateIds,
823       uint256 rdpxBondId
824:    ) public returns (uint256 receiptTokenAmount, uint256[] memory) {

```
*GitHub*: [624](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L624-L628), [819](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L819-L824)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit 58 lines (48 in the body)
255     function purchase(
256       uint256 amount,
257       address to
258     )
259       external
260       nonReentrant
261       onlyRole(RDPXV2CORE_ROLE)
262:      returns (uint256 premium, uint256 tokenId)

/// @audit 55 lines (46 in the body)
315     function settle(
316       uint256[] memory optionIds
317     )
318       external
319       nonReentrant
320       onlyRole(RDPXV2CORE_ROLE)
321:      returns (uint256 ethAmount, uint256 rdpxAmount)

/// @audit 55 lines (51 in the body)
405     function calculateFunding(
406       uint256[] memory strikes
407:    ) external nonReentrant returns (uint256 fundingAmount) {

```
*GitHub*: [255](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L255-L262), [315](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L315-L321), [405](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L405-L407)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit 50 lines (38 in the body)
115     function setAddresses(
116       address _tokenA,
117       address _tokenB,
118       address _pair,
119       address _rdpxV2Core,
120       address _tokenAReserve,
121       address _amo,
122       address _rdpxOracle,
123       address _ammFactory,
124       address _ammRouter
125:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit 106 lines (104 in the body)
202:    function reLP(uint256 _amount) external onlyRole(RDPXV2CORE_ROLE) {

```
*GitHub*: [115](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L115-L125), [202](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L202)


### [N&#x2011;11] Typos


*There are 15 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit tolernce
50:     /// @notice The slippage tolernce in swaps in 1e8 precision

```
*GitHub*: [50](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L50)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit receipient
377:     **  burn tokenAmount from the recipient and send tokens to the receipient

```
*GitHub*: [377](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L377)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit Inital
52:     /* Inital tokens in the reserve

/// @audit containg
60:     /// @notice Array containg the reserve assets

/// @audit tolernce
99:     /// @notice The slippage tolernce in swaps in 1e8 precision

/// @audit requred
117:    /// @notice Whether put options are requred

/// @audit slipage
453:     * @param  _slippageTolerance the slipage tolerance

/// @audit recieved
816:     * @return receiptTokenAmount The amount of receipt tokens recieved

/// @audit recieved
817:     * @return delegateTokenAmounts The amount of receipt tokens recieved for each delegate

```
*GitHub*: [52](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L52), [60](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L60), [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L99), [117](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L117), [453](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L453), [816](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L816), [817](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L817)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit lattest
84:     /// @dev the pointer to the lattest funding payment timestamp

```
*GitHub*: [84](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L84)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit reperesenting
51:     /// @dev The symbol reperesenting the underlying asset of the perpetualatlanticvault lp

/// @audit FUNCTUONS
216:    // ================================ INTERNAL FUNCTUONS ================================ //

/// @audit recieved
268:    /// @notice Returns the amount of shares recieved for a given amount of assets

/// @audit recieved
273:    /// @notice Returns the amount of shares recieved for a given amount of assets

```
*GitHub*: [51](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L51), [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L216), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L268), [273](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L273)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit tolernce
75:     /// @notice The slippage tolernce in swaps in 1e8 precision

```
*GitHub*: [75](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L75)


### [N&#x2011;12] File is missing NatSpec


*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol


```
*GitHub*: [various](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol)

```solidity
File: contracts/dpxETH/DpxEthToken.sol


```
*GitHub*: [various](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol)


### [N&#x2011;13] NatSpec `@param` is missing


*There are 42 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit Missing: '@param _rdpx'
/// @audit Missing: '@param _rdpxV2Core'
74      /* ========== CONSTRUCTOR ========== */
75    
76:     constructor(address _rdpx, address _rdpxV2Core) {

/// @audit Missing: '@param _collateral_address'
/// @audit Missing: '@param _tickLower'
/// @audit Missing: '@param _tickUpper'
/// @audit Missing: '@param _fee'
93      // Returns this contract's liquidity in a specific [Rdpx]-[collateral] uni v3 pool
94      function liquidityInPool(
95        address _collateral_address,
96        int24 _tickLower,
97        int24 _tickUpper,
98        uint24 _fee
99:     ) public view returns (uint128) {

/// @audit Missing: '@param _target'
/// @audit Missing: '@param _token'
/// @audit Missing: '@param _amount'
/// @audit Missing: '@param use_safe_approve'
135     /* ---------------------------------------------------- */
136     /* ---------------------- Uni v3 ---------------------- */
137     /* ---------------------------------------------------- */
138   
139     function approveTarget(
140       address _target,
141       address _token,
142       uint256 _amount,
143       bool use_safe_approve
144:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit Missing: '@param params'
154     // IUniswapV3Pool public current_uni_pool; // only used for mint callback; is set and accessed during execution of addLiquidity()
155     function addLiquidity(
156       AddLiquidityParams memory params
157:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit Missing: '@param _tokenA'
/// @audit Missing: '@param _tokenB'
/// @audit Missing: '@param _fee_tier'
/// @audit Missing: '@param _amountAtoB'
/// @audit Missing: '@param _amountOutMinimum'
/// @audit Missing: '@param _sqrtPriceLimitX96'
272     // Swap tokenA into tokenB using univ3_router.ExactInputSingle()
273     // Uni V3 only
274     function swap(
275       address _tokenA,
276       address _tokenB,
277       uint24 _fee_tier,
278       uint256 _amountAtoB,
279       uint256 _amountOutMinimum,
280       uint160 _sqrtPriceLimitX96
281:    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {

/// @audit Missing: '@param tokenAddress'
/// @audit Missing: '@param tokenAmount'
310     /* ========== OWNER / GOVERNANCE FUNCTIONS ONLY ========== */
311     // Only owner or timelock can call, to limit risk
312   
313     function recoverERC20(
314       address tokenAddress,
315       uint256 tokenAmount
316:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit Missing: '@param _to'
/// @audit Missing: '@param _value'
/// @audit Missing: '@param _data'
338     // Generic proxy
339     function execute(
340       address _to,
341       uint256 _value,
342       bytes calldata _data
343:    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (bool, bytes memory) {

/// @audit Missing: '@param tokenA'
/// @audit Missing: '@param tokenB'
350     /**
351      * @dev sends token A and B to the rdpxV2Core
352      */
353:    function _sendTokensToRdpxV2Core(address tokenA, address tokenB) internal {

```
*GitHub*: [74](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L74-L76), [74](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L74-L76), [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L93-L99), [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L93-L99), [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L93-L99), [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L93-L99), [135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L135-L144), [135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L135-L144), [135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L135-L144), [135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L135-L144), [154](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L154-L157), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [310](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L310-L316), [310](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L310-L316), [338](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L338-L343), [338](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L338-L343), [338](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L338-L343), [350](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L350-L353), [350](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L350-L353)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit Missing: '@param _weth'
123     // ================================ CONSTRUCTOR ================================ //
124:    constructor(address _weth) {

/// @audit Missing: '@param _asset'
/// @audit Missing: '@param _assetSymbol'
236     /**
237      * @notice Adds a asset to the reserves tokens
238      * @dev    Can only be called by admin
239      **/
240     function addAssetTotokenReserves(
241       address _asset,
242       string memory _assetSymbol
243:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit Missing: '@param _assetSymbol'
266     /**
267      * @notice Removes a asset from the reserves tokens
268      * @dev    Can only be called by admin
269      **/
270     function removeAssetFromtokenReserves(
271       string memory _assetSymbol
272:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit Missing: '@param _reLPContract'
/// @audit Missing: '@param _receiptTokenBonds'
292     /**
293      * @notice Update contract addresses
294      * @dev    Can only be called by admin
295      * @param  _dopexAMMRouter dopex AMM router address
296      * @param  _dpxEthCurvePool DpxEth curve pool address
297      * @param  _rdpxDecayingBonds rdpx decaying bonds address
298      * @param  _perpetualAtlanticVault perpetual atlantic vault address
299      * @param  _perpetualAtlanticVaultLP perpetual atlantic vault LP address
300      * @param  _rdpxReserve rdpx reserve address
301      * @param  _rdpxV2ReceiptToken rdpxV2ReceiptToken contract address
302      * @param  _feeDistributor fee distributor address
303      **/
304     function setAddresses(
305       address _dopexAMMRouter,
306       address _dpxEthCurvePool,
307       address _rdpxDecayingBonds,
308       address _perpetualAtlanticVault,
309       address _perpetualAtlanticVaultLP,
310       address _rdpxReserve,
311       address _rdpxV2ReceiptToken,
312       address _feeDistributor,
313       address _reLPContract,
314       address _receiptTokenBonds
315:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

```
*GitHub*: [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L123-L124), [236](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L236-L243), [236](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L236-L243), [266](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L266-L272), [292](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L292-L315), [292](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L292-L315)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit Missing: '@param _name'
/// @audit Missing: '@param _symbol'
55      /*==== CONSTRUCTOR ====*/
56      constructor(
57        string memory _name,
58        string memory _symbol
59:     ) ERC721(_name, _symbol) {

/// @audit Missing: '@param interfaceId'
172     // The following functions are overrides required by Solidity.
173   
174     function supportsInterface(
175       bytes4 interfaceId
176     )
177       public
178       view
179       override(ERC721, ERC721Enumerable, AccessControl)
180:      returns (bool)

```
*GitHub*: [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L55-L59), [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L55-L59), [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L172-L180)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit Missing: '@param _fundingDuration'
233     /**
234      * @notice Updates the funding duration
235      * @dev    Can only be called by the owner
236      **/
237     function updateFundingDuration(
238       uint256 _fundingDuration
239:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit Missing: '@param from'
/// @audit Missing: '@param to'
/// @audit Missing: '@param tokenId'
/// @audit Missing: '@param batchSize'
633     // ================================ Solidity Required Overrides ================================ //
634   
635     function _beforeTokenTransfer(
636       address from,
637       address to,
638       uint256 tokenId,
639:      uint256 batchSize

```
*GitHub*: [233](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L233-L239), [633](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L633-L639), [633](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L633-L639), [633](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L633-L639), [633](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L633-L639)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit Missing: '@param shares'
216     // ================================ INTERNAL FUNCTUONS ================================ //
217   
218     function _convertToAssets(
219       uint256 shares
220:    ) internal view virtual returns (uint256 assets, uint256 rdpxAmount) {

/// @audit Missing: '@param shares'
261     /// @notice Returns the amount of collateral and rdpx per share
262     function redeemPreview(
263       uint256 shares
264:    ) public view returns (uint256, uint256) {

/// @audit Missing: '@param assets'
268     /// @notice Returns the amount of shares recieved for a given amount of assets
269:    function previewDeposit(uint256 assets) public view returns (uint256) {

/// @audit Missing: '@param assets'
273     /// @notice Returns the amount of shares recieved for a given amount of assets
274     function convertToShares(
275       uint256 assets
276:    ) public view returns (uint256 shares) {

```
*GitHub*: [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L216-L220), [261](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L261-L264), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L268-L269), [273](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L273-L276)


### [N&#x2011;14] NatSpec `@return` argument is missing


*There are 21 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit Missing: '@return'
187      * @param tokenBAmountMin the minimum amount of token B to add
188      */
189     function addLiquidity(
190       uint256 tokenAAmount,
191       uint256 tokenBAmount,
192       uint256 tokenAAmountMin,
193       uint256 tokenBAmountMin
194     )
195       external
196       onlyRole(DEFAULT_ADMIN_ROLE)
197:      returns (uint256 tokenAUsed, uint256 tokenBUsed, uint256 lpReceived)

/// @audit Missing: '@return'
256      * @param tokenBAmountMin the minimum amount of token B to receive
257      */
258     function removeLiquidity(
259       uint256 lpAmount,
260       uint256 tokenAAmountMin,
261       uint256 tokenBAmountMin
262     )
263       external
264       onlyRole(DEFAULT_ADMIN_ROLE)
265:      returns (uint256 tokenAReceived, uint256 tokenBReceived)

/// @audit Missing: '@return'
302      * @param swapTokenAForTokenB whether to swap token A for token B
303      */
304     function swap(
305       uint256 token1Amount,
306       uint256 token2AmountOutMin,
307       bool swapTokenAForTokenB
308:    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 token2Amount) {

```
*GitHub*: [187](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L187-L197), [256](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L256-L265), [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L302-L308)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit Missing: '@return'
93      // Returns this contract's liquidity in a specific [Rdpx]-[collateral] uni v3 pool
94      function liquidityInPool(
95        address _collateral_address,
96        int24 _tickLower,
97        int24 _tickUpper,
98        uint24 _fee
99:     ) public view returns (uint128) {

/// @audit Missing: '@return'
111     // Only counts non-withdrawn positions
112:    function numPositions() public view returns (uint256) {

/// @audit Missing: '@return'
272     // Swap tokenA into tokenB using univ3_router.ExactInputSingle()
273     // Uni V3 only
274     function swap(
275       address _tokenA,
276       address _tokenB,
277       uint24 _fee_tier,
278       uint256 _amountAtoB,
279       uint256 _amountOutMinimum,
280       uint160 _sqrtPriceLimitX96
281:    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {

/// @audit Missing: '@return'
338     // Generic proxy
339     function execute(
340       address _to,
341       uint256 _value,
342       bytes calldata _data
343:    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (bool, bytes memory) {

```
*GitHub*: [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L93-L99), [111](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L111-L112), [272](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L272-L281), [338](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L338-L343)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit Missing: '@return'
1049     * @param minOut The minimum amount out
1050     **/
1051    function upperDepeg(
1052      uint256 _amount,
1053      uint256 minOut
1054:   ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 wethReceived) {

/// @audit Missing: '@return'
1078     * @param  minOut min amount out
1079     **/
1080    function lowerDepeg(
1081      uint256 _rdpxAmount,
1082      uint256 _wethAmount,
1083      uint256 minamountOfWeth,
1084      uint256 minOut
1085:   ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 dpxEthReceived) {

```
*GitHub*: [1049](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1049-L1054), [1078](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1078-L1085)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit Missing: '@return'
127     /// @dev Internal function to mint a bond position token
128     /// @param to the address to mint the position to
129:    function _mintToken(address to) private returns (uint256 tokenId) {

/// @audit Missing: '@return'
149     /// @notice returns the bonds owned by an address
150     /// @param _address address of the user
151     function getBondsOwned(
152       address _address
153:    ) external view returns (uint256[] memory) {

/// @audit Missing: '@return'
172     // The following functions are overrides required by Solidity.
173   
174     function supportsInterface(
175       bytes4 interfaceId
176     )
177       public
178       view
179       override(ERC721, ERC721Enumerable, AccessControl)
180:      returns (bool)

```
*GitHub*: [127](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L127-L129), [149](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L149-L153), [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L172-L180)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit Missing: '@return'
587     /// @dev Internal function to mint a option token
588:    function _mintOptionToken() private returns (uint256 tokenId) {

```
*GitHub*: [587](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L587-L588)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit Missing: '@return'
216     // ================================ INTERNAL FUNCTUONS ================================ //
217   
218     function _convertToAssets(
219       uint256 shares
220:    ) internal view virtual returns (uint256 assets, uint256 rdpxAmount) {

/// @audit Missing: '@return'
239     /// @notice Returns the total active collateral
240:    function activeCollateral() public view returns (uint256) {

/// @audit Missing: '@return'
244     /// @notice Returns the total collateral
245:    function totalCollateral() public view returns (uint256) {

/// @audit Missing: '@return'
249     /// @notice Returns the total rdpx collateral
250:    function rdpxCollateral() public view returns (uint256) {

/// @audit Missing: '@return'
254     /// @notice Returns the total available collateral
255:    function totalAvailableCollateral() public view returns (uint256) {

/// @audit Missing: '@return'
261     /// @notice Returns the amount of collateral and rdpx per share
262     function redeemPreview(
263       uint256 shares
264:    ) public view returns (uint256, uint256) {

/// @audit Missing: '@return'
268     /// @notice Returns the amount of shares recieved for a given amount of assets
269:    function previewDeposit(uint256 assets) public view returns (uint256) {

/// @audit Missing: '@return'
273     /// @notice Returns the amount of shares recieved for a given amount of assets
274     function convertToShares(
275       uint256 assets
276:    ) public view returns (uint256 shares) {

```
*GitHub*: [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L216-L220), [239](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L239-L240), [244](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L244-L245), [249](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L249-L250), [254](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L254-L255), [261](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L261-L264), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L268-L269), [273](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L273-L276)


### [N&#x2011;15] Avoid the use of sensitive terms
Use [alternative variants](https://www.zdnet.com/article/mysql-drops-master-slave-and-blacklist-whitelist-terminology/), e.g. allowlist/denylist instead of whitelist/blacklist

*There are 18 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

7:    import { ContractWhitelist } from "../helper/ContractWhitelist.sol";

419     function addToContractWhitelist(
420       address _addr
421:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

422:      _addToContractWhitelist(_addr);

430     function removeFromContractWhitelist(
431       address _addr
432:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

433:      _removeFromContractWhitelist(_addr);

415:     * @notice Adds a contract to the contract whitelist

417:     * @param  _addr the address to add to the contract whitelist

426:     * @notice Removes a contract from the contract whitelist

428:     * @param  _addr the address to remove from the contract whitelist

```
*GitHub*: [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L7), [419](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L419-L421), [422](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L422), [430](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L430-L432), [433](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L433), [415](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L415), [417](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L417), [426](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L426), [428](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L428)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

16:   import { ContractWhitelist } from "../helper/ContractWhitelist.sol";

153     function addToContractWhitelist(
154       address _contract
155:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

156:      _addToContractWhitelist(_contract);

164     function removeFromContractWhitelist(
165       address _contract
166:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

167:      _removeFromContractWhitelist(_contract);

149:     * @notice Add a contract to the whitelist

151:     * @param  _contract Address of the contract that needs to be added to the whitelist

160:     * @notice Remove a contract to the whitelist

162:     * @param  _contract Address of the contract that needs to be removed from the whitelist

```
*GitHub*: [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L16), [153](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L153-L155), [156](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L156), [164](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L164-L166), [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L167), [149](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L149), [151](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L151), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L160), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L162)


### [N&#x2011;16] Function ordering does not follow the Solidity style guide
According to the [Solidity style guide](https://docs.soliditylang.org/en/v0.8.17/style-guide.html#order-of-functions), functions should be laid out in the following order :`constructor()`, `receive()`, `fallback()`, `external`, `public`, `internal`, `private`, but the cases below do not follow this pattern

*There are 14 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit _sendTokensToRdpxV2Core() came earlier
189     function addLiquidity(
190       uint256 tokenAAmount,
191       uint256 tokenBAmount,
192       uint256 tokenAAmountMin,
193       uint256 tokenBAmountMin
194     )
195       external
196       onlyRole(DEFAULT_ADMIN_ROLE)
197:      returns (uint256 tokenAUsed, uint256 tokenBUsed, uint256 lpReceived)

```
*GitHub*: [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L189-L197)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit uniswapPool() came earlier
76:     constructor(address _rdpx, address _rdpxV2Core) {

/// @audit numPositions() came earlier
119:    function collectFees() external onlyRole(DEFAULT_ADMIN_ROLE) {

/// @audit swap() came earlier
313     function recoverERC20(
314       address tokenAddress,
315       uint256 tokenAmount
316:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

```
*GitHub*: [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L76), [119](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L119), [313](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L313-L316)

```solidity
File: contracts/core/RdpxV2Bond.sol

/// @audit _beforeTokenTransfer() came earlier
57      function supportsInterface(
58        bytes4 interfaceId
59      )
60        public
61        view
62        override(ERC721, ERC721Enumerable, AccessControl)
63:       returns (bool)

```
*GitHub*: [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L57-L63)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit _validate() came earlier
764     function settle(
765       uint256[] memory optionIds
766     )
767       external
768       onlyRole(DEFAULT_ADMIN_ROLE)
769:      returns (uint256 amountOfWeth, uint256 rdpxAmount)

/// @audit bond() came earlier
941     function addToDelegate(
942       uint256 _amount,
943       uint256 _fee
944:    ) external returns (uint256) {

/// @audit getRdpxPrice() came earlier
1248:   function getDelegatesLength() external view returns (uint256) {

```
*GitHub*: [764](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L764-L769), [941](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L941-L944), [1248](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1248)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit _mintToken() came earlier
139     function decreaseAmount(
140       uint256 bondId,
141       uint256 amount
142:    ) public onlyRole(RDPXV2CORE_ROLE) {

/// @audit decreaseAmount() came earlier
151     function getBondsOwned(
152       address _address
153:    ) external view returns (uint256[] memory) {

/// @audit _beforeTokenTransfer() came earlier
174     function supportsInterface(
175       bytes4 interfaceId
176     )
177       public
178       view
179       override(ERC721, ERC721Enumerable, AccessControl)
180:      returns (bool)

```
*GitHub*: [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L139-L142), [151](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L151-L153), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L180)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit _validate() came earlier
635     function _beforeTokenTransfer(
636       address from,
637       address to,
638       uint256 tokenId,
639:      uint256 batchSize

/// @audit _beforeTokenTransfer() came earlier
645     function supportsInterface(
646       bytes4 interfaceId
647     )
648       public
649       view
650       override(ERC721, ERC721Enumerable, AccessControl)
651:      returns (bool)

```
*GitHub*: [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L639), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L651)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit _beforeTokenTransfer() came earlier
240:    function activeCollateral() public view returns (uint256) {

```
*GitHub*: [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L240)

</details>

### [N&#x2011;17] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be 1) Type declarations, 2) State variables, 3) Events, 4) Modifiers, and 5) Functions, but the contract(s) below do not follow this ordering

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit function getLpPrice came earlier
387     event LogAddLiquidity(
388       address indexed sender,
389       uint256 tokenAAmount,
390       uint256 tokenBAmount,
391       uint256 tokenAAmountMin,
392       uint256 tokenBAmountMin,
393       uint256 tokenAUsed,
394       uint256 tokenBUsed,
395       uint256 lpReceived
396:    );

```
*GitHub*: [387](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L387-L396)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit function uniswapPool came earlier
35:     IUniswapV3Factory public univ3_factory;

/// @audit function _sendTokensToRdpxV2Core came earlier
368:    event RecoveredERC20(address token, uint256 amount);

```
*GitHub*: [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L35), [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L368)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit event Withdraw came earlier
46:     IPerpetualAtlanticVault public perpetualAtlanticVault;

/// @audit function beforeWithdraw came earlier
295     modifier onlyPerpVault() {
296       require(
297         msg.sender == address(perpetualAtlanticVault),
298         "Only the perp vault can call this function"
299       );
300       _;
301:    }

```
*GitHub*: [46](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L46), [295](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L295-L301)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit function reLP came earlier
311:    event LogSetReLpFactor(uint256 _reLPFactor);

```
*GitHub*: [311](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L311)


### [N&#x2011;18] Control structures do not follow the Solidity Style Guide
See the [control structures](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) section of the Solidity Style Guide

*There are 88 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

74      function setAddresses(
75:       address _tokenA,

109     function setSlippageTolerance(
110:      uint256 _slippageTolerance

126     function approveContractToSpend(
127:      address _token,

142     function emergencyWithdraw(
143:      address[] calldata tokens

189     function addLiquidity(
190:      uint256 tokenAAmount,

258     function removeLiquidity(
259:      uint256 lpAmount,

304     function swap(
305:      uint256 token1Amount,

```
*GitHub*: [74](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L74-L75), [109](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L109-L110), [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L126-L127), [142](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L142-L143), [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L189-L190), [258](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L258-L259), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L304-L305)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

94      function liquidityInPool(
95:       address _collateral_address,

139     function approveTarget(
140:      address _target,

155     function addLiquidity(
156:      AddLiquidityParams memory params

213     function removeLiquidity(
214:      uint256 positionIndex,

274     function swap(
275:      address _tokenA,

313     function recoverERC20(
314:      address tokenAddress,

324     function recoverERC721(
325:      address tokenAddress,

339     function execute(
340:      address _to,

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L94-L95), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L139-L140), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L156), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L214), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L275), [313](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L313-L314), [324](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L324-L325), [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L339-L340)

```solidity
File: contracts/core/RdpxV2Bond.sol

37      function mint(
38:       address to

45      function _beforeTokenTransfer(
46:       address from,

57      function supportsInterface(
58:       bytes4 interfaceId

```
*GitHub*: [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L38), [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L45-L46), [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L57-L58)

```solidity
File: contracts/core/RdpxV2Core.sol

752:      if (!_clause) revert RdpxV2CoreError(_errorCode);

873:      if (isReLPActive) IReLP(addresses.reLPContract).reLP(totalBondAmount);

930:      if (isReLPActive) IReLP(addresses.reLPContract).reLP(_amount);

161     function emergencyWithdraw(
162:      address[] calldata tokens

180     function setRdpxBurnPercentage(
181:      uint256 _rdpxBurnPercentage

193     function setRdpxFeePercentage(
194:      uint256 _rdpxFeePercentage

216     function setPutOptionsRequired(
217:      bool _putOptionsRequired

228     function setBondMaturity(
229:      uint256 _bondMaturity

240     function addAssetTotokenReserves(
241:      address _asset,

270     function removeAssetFromtokenReserves(
271:      string memory _assetSymbol

304     function setAddresses(
305:      address _dopexAMMRouter,

358     function setPricingOracleAddresses(
359:      address _rdpxPriceOracle,

388     function removeAMOAddress(
389:      uint256 _index

403     function approveContractToSpend(
404:      address _token,

419     function addToContractWhitelist(
420:      address _addr

430     function removeFromContractWhitelist(
431:      address _addr

441     function setBondDiscount(
442:      uint256 _bondDiscountFactor

455     function setSlippageTolerance(
456:      uint256 _slippageTolerance

471     function _purchaseOptions(
472:      uint256 _amount

495     function _issueBond(
496:      address _to,

515     function _curveSwap(
516:      uint256 _amount,

566     function _stake(
567:      address _to,

598     function _calculateAmounts(
599:      uint256 _wethRequired,

624     function _transfer(
625:      uint256 _rdpxAmount,

699     function _bondWithDelegate(
700:      uint256 _amount,

764     function settle(
765:      uint256[] memory optionIds

819     function bondWithDelegate(
820:      address _to,

894     function bond(
895:      uint256 _amount,

941     function addToDelegate(
942:      uint256 _amount,

975     function withdraw(
976:      uint256 delegateId

1016    function redeem(
1017:     uint256 id,

1051    function upperDepeg(
1052:     uint256 _amount,

1080    function lowerDepeg(
1081:     uint256 _rdpxAmount,

1135    function getReserveTokenInfo(
1136:     string memory _token

1156    function calculateBondCost(
1157:     uint256 _amount,

1260    function getDelegatePosition(
1261:     uint256 _delegateId

```
*GitHub*: [752](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L752), [873](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L873), [930](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L930), [161](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L161-L162), [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L180-L181), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L193-L194), [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L216-L217), [228](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L228-L229), [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L240-L241), [270](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L270-L271), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L304-L305), [358](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L358-L359), [388](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L388-L389), [403](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L403-L404), [419](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L419-L420), [430](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L430-L431), [441](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L441-L442), [455](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L455-L456), [471](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L471-L472), [495](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L495-L496), [515](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L515-L516), [566](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L566-L567), [598](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L598-L599), [624](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L624-L625), [699](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L699-L700), [764](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L764-L765), [819](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L819-L820), [894](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L894-L895), [941](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L941-L942), [975](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L975-L976), [1016](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1016-L1017), [1051](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1051-L1052), [1080](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1080-L1081), [1135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1135-L1136), [1156](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1156-L1157), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1261)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

89      function emergencyWithdraw(
90:       address[] calldata tokens,

114     function mint(
115:      address to,

139     function decreaseAmount(
140:      uint256 bondId,

151     function getBondsOwned(
152:      address _address

162     function _beforeTokenTransfer(
163:      address from,

174     function supportsInterface(
175:      bytes4 interfaceId

```
*GitHub*: [89](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L89-L90), [114](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L114-L115), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L139-L140), [151](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L151-L152), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L162-L163), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L175)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

41      function burn(
42:       uint256 _amount

47      function burnFrom(
48:       address account,

55      function _beforeTokenTransfer(
56:       address from,

```
*GitHub*: [41](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L41-L42), [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L47-L48), [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L55-L56)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

597:        if (lastUpdateTime > nextFundingPaymentTimestamp() - fundingDuration) {

609:        if (endTime == startTime) return;

622:      if (!_clause) revert PerpetualAtlanticVaultError(_errorCode);

153     function addToContractWhitelist(
154:      address _contract

164     function removeFromContractWhitelist(
165:      address _contract

181     function setAddresses(
182:      address _optionPricing,

219     function emergencyWithdraw(
220:      address[] calldata tokens

237     function updateFundingDuration(
238:      uint256 _fundingDuration

255     function purchase(
256:      uint256 amount,

315     function settle(
316:      uint256[] memory optionIds

405     function calculateFunding(
406:      uint256[] memory strikes

539     function calculatePremium(
540:      uint256 _strike,

554     function calculatePnl(
555:      uint256 price,

635     function _beforeTokenTransfer(
636:      address from,

645     function supportsInterface(
646:      bytes4 interfaceId

```
*GitHub*: [597](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L597), [609](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L609), [622](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L622), [153](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L153-L154), [164](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L164-L165), [181](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L181-L182), [219](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L219-L220), [237](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L237-L238), [255](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L255-L256), [315](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L315-L316), [405](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L405-L406), [539](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L539-L540), [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L554-L555), [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L636), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L646)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

118     function deposit(
119:      uint256 assets,

145     function redeem(
146:      uint256 shares,

218     function _convertToAssets(
219:      uint256 shares

231     function _beforeTokenTransfer(
232:      address from,

262     function redeemPreview(
263:      uint256 shares

274     function convertToShares(
275:      uint256 assets

```
*GitHub*: [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L118-L119), [145](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L145-L146), [218](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L218-L219), [231](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L231-L232), [262](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L262-L263), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L274-L275)

```solidity
File: contracts/reLP/ReLPContract.sol

90      function setreLpFactor(
91:       uint256 _reLPFactor

115     function setAddresses(
116:      address _tokenA,

171     function setLiquiditySlippageTolerance(
172:      uint256 _liquiditySlippageTolerance

186     function setSlippageTolerance(
187:      uint256 _slippageTolerance

```
*GitHub*: [90](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L90-L91), [115](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L115-L116), [171](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L171-L172), [186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L186-L187)

</details>

### [N&#x2011;19] Top-level declarations should be separated by at least two lines


*There are 21 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

211     }
212   
213:    function removeLiquidity(

322     }
323   
324:    function recoverERC721(

```
*GitHub*: [211](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L211-L213), [322](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L322-L324)

```solidity
File: contracts/core/RdpxV2Bond.sol

27      }
28    
29:     function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {

31      }
32    
33:     function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {

35      }
36    
37:     function mint(

43      }
44    
45:     function _beforeTokenTransfer(

```
*GitHub*: [27](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L27-L29), [31](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L31-L33), [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L35-L37), [43](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L43-L45)

```solidity
File: contracts/core/RdpxV2Core.sol

697     }
698      **/
699:    function _bondWithDelegate(

```
*GitHub*: [697](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L697-L699)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

125     }
126   
127:    /// @dev Internal function to mint a bond position token

160     }
161   
162:    function _beforeTokenTransfer(

```
*GitHub*: [125](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L125-L127), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L160-L162)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

27      }
28    
29:     function pause() public onlyRole(PAUSER_ROLE) {

31      }
32    
33:     function unpause() public onlyRole(PAUSER_ROLE) {

35      }
36    
37:     function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {

39      }
40    
41:     function burn(

45      }
46    
47:     function burnFrom(

53      }
54    
55:     function _beforeTokenTransfer(

```
*GitHub*: [27](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L27-L29), [31](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L31-L33), [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L35-L37), [39](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L39-L41), [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L45-L47), [53](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L53-L55)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

241     }
242   
243:    function setLpAllowance(bool increase) external onlyRole(DEFAULT_ADMIN_ROLE) {

459     }
460   
461:    /// @dev Helper function that updates the latest funding payment pointer based on current timestamp

592     }
593   
594:    function _updateFundingRate(uint256 amount) private {

643     }
644   
645:    function supportsInterface(

```
*GitHub*: [241](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L241-L243), [459](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L459-L461), [592](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L592-L594), [643](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L643-L645)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

229     }
230   
231:    function _beforeTokenTransfer(

284     }
285   
286:    function beforeWithdraw(uint256 assets, uint256 /*shares*/) internal {

```
*GitHub*: [229](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L229-L231), [284](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L284-L286)

</details>

### [N&#x2011;20] Invalid NatSpec comment style
NatSpec must begin with `///`, or use `/* ... */` syntax

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

81:     // @dev Funding rate for the epoch

```
*GitHub*: [81](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L81)


### [N&#x2011;21] Consider using `delete` rather than assigning zero/false to clear values
The `delete` keyword more closely matches the semantics of what is being done, and draws more attention to the changing of state, which may lead to a more thorough audit of its associated logic

*There are 3 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

277:      reservesIndex[_assetSymbol] = 0;

776:        optionsOwned[optionIds[i]] = false;

```
*GitHub*: [277](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L277), [776](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L776)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

343:        optionPositions[optionIds[i]].strike = 0;

```
*GitHub*: [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L343)


### [N&#x2011;22] Contracts should have full test coverage
While 100% code coverage does not guarantee that there are no bugs, it often will catch easy-to-find bugs, and will ensure that there are fewer regressions when the code invariably has to be modified. Furthermore, in order to get full coverage, code authors will often have to re-organize their code so that it is more modular, so that each component can be tested separately, which reduces interdependencies between modules and layers, and makes for code that is easier to reason about and audit.

*There is one instance of this issue:*

```solidity
File: Various Files


```


### [N&#x2011;23] Large or complicated code bases should implement invariant tests
Large code bases, or code with lots of inline-assembly, complicated math, or complicated interactions between multiple contracts, should implement [invariant fuzzing tests](https://medium.com/coinmonks/smart-contract-fuzzing-d9b88e0b0a05). Invariant fuzzers such as Echidna require the test writer to come up with invariants which should not be violated under any circumstances, and the fuzzer tests various inputs and function calls to ensure that the invariants always hold. Even code with 100% code coverage can still have bugs due to the order of the operations a user performs, and invariant fuzzers, with properly and extensively-written invariants, can close this testing gap significantly.

*There is one instance of this issue:*

```solidity
File: Various Files


```


### [N&#x2011;24] Consider adding formal verification proofs
Consider using formal verification to mathematically prove that your code does what is intended, and does not have any edge cases with unexpected behavior. The solidity compiler itself has this functionality [built in](https://docs.soliditylang.org/en/latest/smtchecker.html#smtchecker-and-formal-verification)

*There is one instance of this issue:*

```solidity
File: Various Files


```


### [N&#x2011;25] Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, for readability
Well-organized data structures make code reviews easier, which may lead to fewer bugs. Consider combining related mappings into mappings to structs, so it's clear what data is related

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

63      mapping(uint256 => OptionPosition) public optionPositions;
64    
65      /// @dev number of options funding has been accounted for the epoch
66      mapping(uint256 => uint256) public fundingPaymentsAccountedFor;
67    
68      /// @dev the funding accounted for the epoch and strike
69      mapping(uint256 => mapping(uint256 => uint256))
70        public fundingPaymentsAccountedForPerStrike;
71    
72      /// @dev the total funding for the epoch
73      mapping(uint256 => uint256) public totalFundingForEpoch;
74    
75      /// @dev amount of options per strike
76      mapping(uint256 => uint256) public optionsPerStrike;
77    
78      /// @dev latest funding update per strike
79      mapping(uint256 => uint256) public latestFundingPerStrike;
80    
81      // @dev Funding rate for the epoch
82:     mapping(uint256 => uint256) public fundingRates;

```
*GitHub*: [63](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L63-L82)


### [N&#x2011;26] Custom errors should be used rather than `revert()`/`require()`
Custom errors are available from solidity version 0.8.4. Custom errors are more easily processed in `try`-`catch` blocks, and are easier to re-use and maintain.

*There are 21 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

83        require(
84          _tokenA != address(0) &&
85            _tokenB != address(0) &&
86            _pair != address(0) &&
87            _rdpxV2Core != address(0) &&
88            _rdpxOracle != address(0) &&
89            _ammFactory != address(0) &&
90            _ammRouter != address(0),
91          "reLPContract: address cannot be 0"
92:       );

112       require(
113         _slippageTolerance > 0,
114         "reLPContract: slippage tolerance must be greater than 0"
115:      );

131:      require(_token != address(0), "reLPContract: token cannot be 0");

132:      require(_spender != address(0), "reLPContract: spender cannot be 0");

133:      require(_amount > 0, "reLPContract: amount must be greater than 0");

```
*GitHub*: [83](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L83-L92), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L112-L115), [131](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L131), [132](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L132), [133](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L133)

```solidity
File: contracts/core/RdpxV2Core.sol

244:      require(_asset != address(0), "RdpxV2Core: asset cannot be 0 address");

247         require(
248           reserveAsset[i].tokenAddress != _asset,
249           "RdpxV2Core: asset already exists"
250:        );

```
*GitHub*: [244](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L244), [247](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L247-L250)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

99:         require(success, "RdpxReserve: transfer failed");

120:      require(hasRole(MINTER_ROLE, msg.sender), "Caller is not a minter");

```
*GitHub*: [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L99), [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L120)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

94        require(
95          _perpetualAtlanticVault != address(0) || _rdpx != address(0),
96          "ZERO_ADDRESS"
97:       );

123:      require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");

162:      require(assets != 0, "ZERO_ASSETS");

191       require(
192         collateral.balanceOf(address(this)) >= _totalCollateral + proceeds,
193         "Not enough collateral token was sent"
194:      );

200       require(
201         collateral.balanceOf(address(this)) == _totalCollateral - loss,
202         "Not enough collateral was sent out"
203:      );

209       require(
210         IERC20WithBurn(rdpx).balanceOf(address(this)) >= _rdpxCollateral + amount,
211         "Not enough rdpx token was sent"
212:      );

287       require(
288         assets <= totalAvailableCollateral(),
289         "Not enough available assets to satisfy withdrawal"
290:      );

296       require(
297         msg.sender == address(perpetualAtlanticVault),
298         "Only the perp vault can call this function"
299:      );

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L94-L97), [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L123), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L162), [191](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L191-L194), [200](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L200-L203), [209](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L209-L212), [287](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L287-L290), [296](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L296-L299)

```solidity
File: contracts/reLP/ReLPContract.sol

93        require(
94          _reLPFactor > 0,
95          "reLPContract: reLP factor must be greater than 0"
96:       );

126       require(
127         _tokenA != address(0) &&
128           _tokenB != address(0) &&
129           _pair != address(0) &&
130           _rdpxV2Core != address(0) &&
131           _tokenAReserve != address(0) &&
132           _amo != address(0) &&
133           _rdpxOracle != address(0) &&
134           _ammFactory != address(0) &&
135           _ammRouter != address(0),
136         "reLPContract: address cannot be 0"
137:      );

174       require(
175         _liquiditySlippageTolerance > 0,
176         "reLPContract: liquidity slippage tolerance must be greater than 0"
177:      );

189       require(
190         _slippageTolerance > 0,
191         "reLPContract: slippage tolerance must be greater than 0"
192:      );

```
*GitHub*: [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L93-L96), [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L126-L137), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L174-L177), [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L189-L192)


### [N&#x2011;27] Not using the named return variables anywhere in the function is confusing
Consider changing the variable to be an unnamed one, since the variable is never assigned, nor is it returned by name. If the optimizer is not turned on, leaving the code as it is will also waste gas for the stack variable.

*There are 10 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit dpxEthPrice
1216:   function getDpxEthPrice() public view returns (uint256 dpxEthPrice) {

/// @audit ethPrice
1227:   function getEthPrice() public view returns (uint256 ethPrice) {

/// @audit delegate
/// @audit amount
/// @audit fee
/// @audit activeCollateral
1260    function getDelegatePosition(
1261      uint256 _delegateId
1262    )
1263      public
1264      view
1265      returns (
1266        address delegate,
1267        uint256 amount,
1268        uint256 fee,
1269:       uint256 activeCollateral

```
*GitHub*: [1216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1216), [1227](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1227), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit timestamp
563     function nextFundingPaymentTimestamp()
564       public
565       view
566:      returns (uint256 timestamp)

```
*GitHub*: [563](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L563-L566)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit assets
/// @audit rdpxAmount
218     function _convertToAssets(
219       uint256 shares
220:    ) internal view virtual returns (uint256 assets, uint256 rdpxAmount) {

/// @audit shares
274     function convertToShares(
275       uint256 assets
276:    ) public view returns (uint256 shares) {

```
*GitHub*: [218](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L218-L220), [218](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L218-L220), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L274-L276)


### [N&#x2011;28] Consider using `AccessControlDefaultAdminRules` rather than `AccessControl`
`AccessControlDefaultAdminRules` implements multiple [security best practices](https://docs.openzeppelin.com/contracts/4.x/api/access#AccessControlDefaultAdminRules) on top of the normal `AccessControl` rules, so consider using it instead

*There are 8 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

22:  contract UniV2LiquidityAMO is AccessControl {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L22-L22)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

28:  contract UniV3LiquidityAMO is AccessControl, ERC721Holder {

```
*GitHub*: [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L28-L28)

```solidity
File: contracts/core/RdpxV2Bond.sol

15:    AccessControl,

```
*GitHub*: [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L15-L15)

```solidity
File: contracts/core/RdpxV2Core.sol

35:    AccessControl,

```
*GitHub*: [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L35-L35)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

23:    AccessControl

```
*GitHub*: [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L23-L23)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

16:    AccessControl,

```
*GitHub*: [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L16-L16)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

35:    AccessControl,

```
*GitHub*: [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L35-L35)

```solidity
File: contracts/reLP/ReLPContract.sol

25:  contract ReLPContract is AccessControl {

```
*GitHub*: [25](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L25-L25)

</details>

### [N&#x2011;29] Array indicies should be referenced via `enum`s rather than via numeric literals


*There are 25 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

332:     path[0] = token1;

333:     path[1] = token2;

```
*GitHub*: [332](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L332-L332), [333](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L333-L333)

```solidity
File: contracts/core/RdpxV2Core.sol

486:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= premium;

570:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= _amount / 2;

572:     IDpxEthToken(reserveAsset[reservesIndex["DPXETH"]].tokenAddress).mint(

653:       IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)

657:       IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress).burn(

662:       IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)

681:       reserveAsset[reservesIndex["RDPX"]].tokenBalance +=

650:       reserveAsset[reservesIndex["RDPX"]].tokenBalance += _rdpxAmount;

711:     reserveAsset[reservesIndex["WETH"]].tokenBalance += wethRequired;

779:     reserveAsset[reservesIndex["WETH"]].tokenBalance += amountOfWeth;

780:     reserveAsset[reservesIndex["RDPX"]].tokenBalance -= rdpxAmount;

803:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= fundingAmount;

916:     reserveAsset[reservesIndex["WETH"]].tokenBalance += wethRequired;

1059:    IDpxEthToken(reserveAsset[reservesIndex["DPXETH"]].tokenAddress).mint(

1067:    reserveAsset[reservesIndex["WETH"]].tokenBalance += wethReceived;

1094:      path[0] = reserveAsset[reservesIndex["RDPX"]].tokenAddress;

1095:      path[1] = weth;

1106:      reserveAsset[reservesIndex["RDPX"]].tokenBalance -= _rdpxAmount;

1110:    reserveAsset[reservesIndex["WETH"]].tokenBalance -= _wethAmount;

1119:    IDpxEthToken(reserveAsset[reservesIndex["DPXETH"]].tokenAddress).burn(

```
*GitHub*: [486](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L486-L486), [570](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L570-L570), [572](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L572-L572), [653](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L653-L653), [657](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L657-L657), [662](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L662-L662), [681](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L681-L681), [650](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L650-L650), [711](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L711-L711), [779](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L779-L779), [780](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L780-L780), [803](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L803-L803), [916](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L916-L916), [1059](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1059-L1059), [1067](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1067-L1067), [1094](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1094-L1094), [1094](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1094-L1094), [1095](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1095-L1095), [1106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1106-L1106), [1110](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1110-L1110), [1119](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1119-L1119)

```solidity
File: contracts/reLP/ReLPContract.sol

269:     path[0] = addresses.tokenB;

270:     path[1] = addresses.tokenA;

```
*GitHub*: [269](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L269-L269), [270](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L270-L270)


### [N&#x2011;30] Event names should use CamelCase
According to the Solidity [style guide](https://docs.soliditylang.org/en/latest/style-guide.html#event-names) event names should be in `CapWords style` (CamelCase)

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

379:   event log(uint);

```
*GitHub*: [379](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L379-L379)


### [N&#x2011;31] Events are missing sender information
When an action is triggered based on a user's action, not being able to filter based on who triggered the action makes event processing a lot more cumbersome. Including the `msg.sender` the events of these types of action will make events much more useful to end users, especially when `msg.sender` is not `tx.origin`.

*There are 30 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

268:     emit log(positions_array.length);

269:     emit log(positions_mapping[pos.token_id].token_id);

321:     emit RecoveredERC20(tokenAddress, tokenAmount);

335:     emit RecoveredERC721(tokenAddress, token_id);

```
*GitHub*: [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L268-L268), [269](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L269-L269), [321](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L321-L321), [335](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L335-L335)

```solidity
File: contracts/core/RdpxV2Core.sol

185:     emit LogSetRdpxBurnPercentage(_rdpxBurnPercentage);

198:     emit LogSetRdpxFeePercentage(_rdpxFeePercentage);

208:     emit LogSetIsReLPActive(_isReLPActive);

220:     emit LogSetputOptionsRequired(_putOptionsRequired);

233:     emit LogSetBondMaturity(_bondMaturity);

263:     emit LogAssetAddedTotokenReserves(_asset, _assetSymbol);

289:     emit LogAssetRemovedFromtokenReserves(_assetSymbol, index);

349:     emit LogSetAddresses(addresses);

370:     emit LogSetPricingOracleAddresses(pricingOracleAddresses);

447:     emit LogSetBondDiscountFactor(_bondDiscountFactor);

461:     emit LogSetSlippageTolerance(_slippageTolerance);

782:     emit LogSettle(optionIds);

807:     emit LogProvideFunding(pointer, fundingAmount);

875      emit LogBondWithDelegate(
876        _to,
877        _delegateIds,
878        _amounts,
879        rdpxBondId,
880        receiptTokenAmount,
881        delegateReceiptTokenAmounts
882:     );

932:     emit LogBond(rdpxRequired, wethRequired, receiptTokenAmount);

966:     emit LogAddToDelegate(_amount, _fee, delegates.length - 1);

989:     emit LogDelegateWithdraw(delegateId, amountWithdrawn);

1007:    emit LogSync();

1041:    emit LogRedeem(to, receiptTokenAmount);

1069:    emit LogUpperDepeg(_amount, wethReceived);

1123:    emit LogLowerDepeg(_rdpxAmount, _wethAmount, dpxEthReceived);

```
*GitHub*: [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L185-L185), [198](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L198-L198), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L208-L208), [220](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L220-L220), [233](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L233-L233), [263](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L263-L263), [289](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L289-L289), [349](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L349-L349), [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L370-L370), [447](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L447-L447), [461](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L461-L461), [782](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L782-L782), [807](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L807-L807), [875](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L875-L882), [932](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L932-L932), [966](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L966-L966), [989](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L989-L989), [1007](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1007-L1007), [1041](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1041-L1041), [1069](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1069-L1069), [1123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1123-L1123)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

124:     emit BondMinted(to, bondId, expiry, rdpxAmount);

```
*GitHub*: [124](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L124-L124)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

211:     emit AddressesSet(addresses);

368:     emit Settle(ethAmount, rdpxAmount, optionIds);

494:       emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);

```
*GitHub*: [211](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L211-L211), [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L368-L368), [494](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L494-L494)

```solidity
File: contracts/reLP/ReLPContract.sol

99:      emit LogSetReLpFactor(_reLPFactor);

```
*GitHub*: [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L99-L99)


### [N&#x2011;32] `internal` functions not called by the contract should be removed
All unused code should be removed

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

45     function _beforeTokenTransfer(
46       address from,
47       address to,
48       uint256 tokenId,
49       uint256 batchSize
50:    ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L45-L50)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

162    function _beforeTokenTransfer(
163      address from,
164      address to,
165      uint256 tokenId,
166      uint256 batchSize
167:   ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L162-L167)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

55     function _beforeTokenTransfer(
56       address from,
57       address to,
58       uint256 amount
59:    ) internal override {

```
*GitHub*: [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L55-L59)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

635    function _beforeTokenTransfer(
636      address from,
637      address to,
638      uint256 tokenId,
639      uint256 batchSize
640:   ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L640)


### [N&#x2011;33] `address`s shouldn't be hard-coded
It is often better to declare `address`es as `immutable`, and assign them via constructor arguments. This allows the code to remain the same across deployments on different networks, and avoids recompilation when addresses need to change.

*There are 3 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

83:        0x1F98431c8aD98523631AE4a59f267346ea31F984

86:        0xC36442b4a4522E871399CD717aBDD847Ab11FE88

88:      univ3_router = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);

```
*GitHub*: [83](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L83-L83), [86](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L86-L86), [88](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L88-L88)


### [N&#x2011;34] High cyclomatic complexity
Consider breaking down these blocks into more manageable units, by splitting things into utility functions, by reducing nesting, and by using early returns

*There is one instance of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

520    ) internal returns (uint256 amountOut) {
521      IStableSwap dpxEthCurvePool = IStableSwap(addresses.dpxEthCurvePool);
522  
523      // First compute a reverse swapping of dpxETH to ETH to compute the amount of ETH required
524      address coin0 = dpxEthCurvePool.coins(0);
525      (uint256 a, uint256 b) = coin0 == weth ? (0, 1) : (1, 0);
526  
527      // validate the swap for peg functions
528      if (validate) {
529        uint256 ethBalance = IStableSwap(addresses.dpxEthCurvePool).balances(a);
530        uint256 dpxEthBalance = IStableSwap(addresses.dpxEthCurvePool).balances(
531          b
532        );
533        _ethToDpxEth
534          ? _validate(
535            ethBalance + _amount <= (ethBalance + dpxEthBalance) / 2,
536            14
537          )
538          : _validate(
539            dpxEthBalance + _amount <= (ethBalance + dpxEthBalance) / 2,
540            14
541          );
542      }
543  
544      // calculate minimum amount out
545      uint256 minOut = _ethToDpxEth
546        ? (((_amount * getDpxEthPrice()) / 1e8) -
547          (((_amount * getDpxEthPrice()) * slippageTolerance) / 1e16))
548        : (((_amount * getEthPrice()) / 1e8) -
549          (((_amount * getEthPrice()) * slippageTolerance) / 1e16));
550  
551      // Swap the tokens
552      amountOut = dpxEthCurvePool.exchange(
553        _ethToDpxEth ? int128(int256(a)) : int128(int256(b)),
554        _ethToDpxEth ? int128(int256(b)) : int128(int256(a)),
555        _amount,
556        minAmount > 0 ? minAmount : minOut
557      );
558:   }

```
*GitHub*: [520](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L520-L558)


### [N&#x2011;35] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*There are 19 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

147:     for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L147-L147)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

120:     for (uint i = 0; i < positions_array.length; i++) {

```
*GitHub*: [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120-L120)

```solidity
File: contracts/core/RdpxV2Core.sol

167:     for (uint256 i = 0; i < tokens.length; i++) {

775:     for (uint256 i = 0; i < optionIds.length; i++) {

836:     for (uint256 i = 0; i < _amounts.length; i++) {

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167-L167), [775](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L775-L775), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836-L836)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103:     for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103-L103)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

89:    uint256 public latestFundingPaymentPointer = 0;

225:     for (uint256 i = 0; i < tokens.length; i++) {

328:     for (uint256 i = 0; i < optionIds.length; i++) {

413:     for (uint256 i = 0; i < strikes.length; i++) {

```
*GitHub*: [89](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L89-L89), [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225-L225), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328-L328), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413-L413)

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

147:     for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L147-L147)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

120:     for (uint i = 0; i < positions_array.length; i++) {

```
*GitHub*: [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120-L120)

```solidity
File: contracts/core/RdpxV2Core.sol

167:     for (uint256 i = 0; i < tokens.length; i++) {

775:     for (uint256 i = 0; i < optionIds.length; i++) {

836:     for (uint256 i = 0; i < _amounts.length; i++) {

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167-L167), [775](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L775-L775), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836-L836)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103:     for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103-L103)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

225:     for (uint256 i = 0; i < tokens.length; i++) {

328:     for (uint256 i = 0; i < optionIds.length; i++) {

413:     for (uint256 i = 0; i < strikes.length; i++) {

```
*GitHub*: [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225-L225), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328-L328), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413-L413)


### [N&#x2011;36] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/a/145555) to make it easier to understand the purpose of each mapping

*There are 14 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

66:    mapping(uint256 => Position) public positions_mapping;

```
*GitHub*: [66](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L66-L66)

```solidity
File: contracts/core/RdpxV2Core.sol

73:    mapping(string => uint256) public reservesIndex;

76:    mapping(uint256 => Bond) public bonds;

79:    mapping(uint256 => bool) public optionsOwned;

82:    mapping(uint256 => bool) public fundingPaidFor;

```
*GitHub*: [73](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L73-L73), [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L76-L76), [79](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L79-L79), [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L82-L82)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

37:    mapping(uint256 => Bond) public bonds;

```
*GitHub*: [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L37-L37)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

63:    mapping(uint256 => OptionPosition) public optionPositions;

66:    mapping(uint256 => uint256) public fundingPaymentsAccountedFor;

69:    mapping(uint256 => mapping(uint256 => uint256))

73:    mapping(uint256 => uint256) public totalFundingForEpoch;

76:    mapping(uint256 => uint256) public optionsPerStrike;

79:    mapping(uint256 => uint256) public latestFundingPerStrike;

82:    mapping(uint256 => uint256) public fundingRates;

```
*GitHub*: [63](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L63-L63), [66](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L66-L66), [69](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L69-L69), [69](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L69-L69), [73](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L73-L73), [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L76-L76), [79](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L79-L79), [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L82-L82)


### [N&#x2011;37] Contract uses both `require()`/`revert()` as well as custom errors
Consider using just one method in a single file

*There is one instance of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

33   contract RdpxV2Core is
34     IRdpxV2Core,
35     AccessControl,
36     ContractWhitelist,
37     ERC721Holder,
38     Pausable
39:  {

```
*GitHub*: [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L33-L39)


### [N&#x2011;38] Consider adding a block/deny-list
Doing so will significantly increase centralization, but will help to prevent hackers from using stolen tokens

*There are 10 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

22:  contract UniV2LiquidityAMO is AccessControl {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L22-L22)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

22:  abstract contract OracleLike {

28:  contract UniV3LiquidityAMO is AccessControl, ERC721Holder {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L22-L22), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L28-L28)

```solidity
File: contracts/core/RdpxV2Bond.sol

11   contract RdpxV2Bond is
12     ERC721,
13     ERC721Enumerable,
14     Pausable,
15     AccessControl,
16     ERC721Burnable
17:  {

```
*GitHub*: [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L11-L17)

```solidity
File: contracts/core/RdpxV2Core.sol

33   contract RdpxV2Core is
34     IRdpxV2Core,
35     AccessControl,
36     ContractWhitelist,
37     ERC721Holder,
38     Pausable
39:  {

```
*GitHub*: [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L33-L39)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

18   contract RdpxDecayingBonds is
19     ERC721,
20     ERC721Enumerable,
21     ERC721Burnable,
22     Pausable,
23     AccessControl
24:  {

```
*GitHub*: [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L18-L24)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

12   contract DpxEthToken is
13     ERC20,
14     ERC20Burnable,
15     Pausable,
16     AccessControl,
17     IDpxEthToken
18:  {

```
*GitHub*: [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L12-L18)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

28   contract PerpetualAtlanticVault is
29     IPerpetualAtlanticVault,
30     ReentrancyGuard,
31     Pausable,
32     ERC721,
33     ERC721Enumerable,
34     ERC721Burnable,
35     AccessControl,
36     ContractWhitelist
37:  {

```
*GitHub*: [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L28-L37)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

21:  contract PerpetualAtlanticVaultLP is ERC20, IPerpetualAtlanticVaultLP {

```
*GitHub*: [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L21-L21)

```solidity
File: contracts/reLP/ReLPContract.sol

25:  contract ReLPContract is AccessControl {

```
*GitHub*: [25](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L25-L25)

</details>

### [N&#x2011;39] Non-`external`/`public` function names should begin with an underscore
According to the Solidity Style Guide, non-`external`/`public` function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

286:   function beforeWithdraw(uint256 assets, uint256 /*shares*/) internal {

```
*GitHub*: [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L286-L286)


### [N&#x2011;40] Use of `override` is unnecessary
Starting with Solidity version [0.8.8](https://docs.soliditylang.org/en/v0.8.20/contracts.html#function-overriding), using the `override` keyword when the function solely overrides an interface function, and the function doesn't exist in multiple base contracts, is unnecessary.

*There are 9 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

45     function _beforeTokenTransfer(
46       address from,
47       address to,
48       uint256 tokenId,
49       uint256 batchSize
50:    ) internal override(ERC721, ERC721Enumerable) {

57     function supportsInterface(
58       bytes4 interfaceId
59     )
60       public
61       view
62       override(ERC721, ERC721Enumerable, AccessControl)
63       returns (bool)
64:    {

```
*GitHub*: [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L45-L50), [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L57-L64)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

162    function _beforeTokenTransfer(
163      address from,
164      address to,
165      uint256 tokenId,
166      uint256 batchSize
167:   ) internal override(ERC721, ERC721Enumerable) {

174    function supportsInterface(
175      bytes4 interfaceId
176    )
177      public
178      view
179      override(ERC721, ERC721Enumerable, AccessControl)
180      returns (bool)
181:   {

```
*GitHub*: [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L162-L167), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L181)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

41     function burn(
42       uint256 _amount
43:    ) public override(ERC20Burnable, IDpxEthToken) onlyRole(BURNER_ROLE) {

47     function burnFrom(
48       address account,
49       uint256 amount
50:    ) public override onlyRole(BURNER_ROLE) {

55     function _beforeTokenTransfer(
56       address from,
57       address to,
58       uint256 amount
59:    ) internal override {

```
*GitHub*: [41](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L41-L43), [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L47-L50), [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L55-L59)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

635    function _beforeTokenTransfer(
636      address from,
637      address to,
638      uint256 tokenId,
639      uint256 batchSize
640:   ) internal override(ERC721, ERC721Enumerable) {

645    function supportsInterface(
646      bytes4 interfaceId
647    )
648      public
649      view
650      override(ERC721, ERC721Enumerable, AccessControl)
651      returns (bool)
652:   {

```
*GitHub*: [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L640), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L652)


### [N&#x2011;41] Array is `push()`ed but not `pop()`ed
Array entries are added but are never removed. Consider whether this should be the case, or whether there should be a maximum, or whether old entries should be removed. Cases where there are specific potential problems will be flagged separately under a different issue.

*There are 5 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

134:     reserveAsset.push(zeroAsset);

258:     reserveAsset.push(asset);

259:     reserveTokens.push(_assetSymbol);

380:     amoAddresses.push(_addr);

961:     delegates.push(delegatePosition);

```
*GitHub*: [134](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L134-L134), [258](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L258-L258), [259](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L259-L259), [380](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L380-L380), [961](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L961-L961)


### [N&#x2011;42] Consider using `SafeTransferLib.safeTransferETH()` or `Address.sendValue()` for clearer semantic meaning
These Functions indicate their purpose with their name more clearly than using low-level calls.

*There is one instance of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

98:        (bool success, ) = to.call{ value: amount, gas: gas }("");

```
*GitHub*: [98](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L98-L98)


### [N&#x2011;43] Large numeric literals should use underscores for readability


*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

295:         2105300114, // Expiration: a long time from now

```
*GitHub*: [295](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L295-L295)


### [N&#x2011;44] Unused `event` definition
Note that there may be cases where an event superficially appears to be used, but this is only because there are multiple definitions of the event in different files. In such cases, the event definition should be moved into a separate file. The instances below are the unused definitions.

*There is one instance of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

53:    event EmergencyWithdraw(address sender);

```
*GitHub*: [53](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L53-L53)


### [N&#x2011;45] Unused function parameter
Comment out the variable name to suppress compiler warnings

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit from
232:     address from,

```
*GitHub*: [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L232-L232)


### [N&#x2011;46] Unused import
The identifier is imported but never used within the file

*There are 5 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit IUniswapV2Pair
12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

/// @audit IRdpxV2Core
14:  import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

/// @audit Math
17:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L12-L12), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L14-L14), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L17-L17)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit ERC4626
12:  import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L12-L12)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit Strings
10:  import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L10-L10)


### [N&#x2011;47] Consider using descriptive `constant`s when passing zero as a function argument
Passing zero as a function argument can sometimes result in a security issue (e.g. passing zero as the slippage parameter). Consider using a `constant` variable with a descriptive name, so it's clear that the argument is intentionally being used, and for the right reasons.

*There are 5 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

524:     address coin0 = dpxEthCurvePool.coins(0);

1196       wethRequired += IPerpetualAtlanticVault(addresses.perpetualAtlanticVault)
1197:        .calculatePremium(strike, rdpxRequired, timeToExpiry, 0);

```
*GitHub*: [524](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L524-L524), [1196](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1196-L1197)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

249:       : collateralToken.approve(addresses.perpetualAtlanticVaultLP, 0);

286:     premium = calculatePremium(strike, amount, timeToExpiry, 0);

```
*GitHub*: [249](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L249-L249), [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L286-L286)

```solidity
File: contracts/reLP/ReLPContract.sol

286      (, , uint256 lp) = IUniswapV2Router(addresses.ammRouter).addLiquidity(
287        addresses.tokenA,
288        addresses.tokenB,
289        tokenAAmountOut,
290        amountB / 2,
291        0,
292        0,
293        address(this),
294        block.timestamp + 10
295:     );

```
*GitHub*: [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L286-L295)


### [N&#x2011;48] Constants in comparisons should appear on the left side
Doing so will prevent [typo bugs](https://www.moserware.com/2008/01/constants-on-left-are-better-but-this.html)

*There are 14 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

274:     _validate(index != 0, 18);

630:     if (_bondId != 0) {

798:     _validate(fundingPaidFor[pointer] == false, 16);

951:     _validate(_fee >= 1e8, 8);

1091:    if (_rdpxAmount != 0) {

1162:    if (_rdpxBondId == 0) {

```
*GitHub*: [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L274-L274), [630](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L630-L630), [798](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L798-L798), [951](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L951-L951), [1091](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1091-L1091), [1162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1162-L1162)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

467:         uint256 startTime = lastUpdateTime == 0

505:     uint256 startTime = lastUpdateTime == 0

578:     if (remainder == 0) {

595:     if (fundingRates[latestFundingPaymentPointer] == 0) {

```
*GitHub*: [467](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L467-L467), [505](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L505-L505), [578](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L578-L578), [595](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L595-L595)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

123:     require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");

162:     require(assets != 0, "ZERO_ASSETS");

223:       (supply == 0)

283:       supply == 0 ? assets : assets.mulDivDown(supply, totalVaultCollateral);

```
*GitHub*: [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L123-L123), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L162-L162), [223](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L223-L223), [283](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L283-L283)


### [N&#x2011;49] Expressions for constant values should use `immutable` rather than `constant`
While it does not save gas for some simple binary expressions because the compiler knows that developers often make this mistake, it's still best to use the right tool for the task at hand. There is a difference between `constant` variables and `immutable` variables, and they should each be used in their appropriate contexts. `constants` should be used for literal values written into the code, and `immutable` variables should be used for expressions, or values calculated in, or passed into the constructor.

*There are 11 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

22:    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L22-L22)

```solidity
File: contracts/core/RdpxV2Core.sol

88:    uint256 public constant RDPX_RATIO_PERCENTAGE = 25 * DEFAULT_PRECISION;

91:    uint256 public constant ETH_RATIO_PERCENTAGE = 75 * DEFAULT_PRECISION;

```
*GitHub*: [88](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L88-L88), [91](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L91-L91)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

31:    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

34:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [31](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L31-L31), [34](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L34-L34)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

19:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

20:    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

21:    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

```
*GitHub*: [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L19-L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L20-L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L21-L21)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

45:    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

48:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L45-L45), [48](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L48-L48)

```solidity
File: contracts/reLP/ReLPContract.sol

70:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L70-L70)


### [N&#x2011;50] Error messages should descriptive, rather that cryptic


*There are 3 instances of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

94       require(
95         _perpetualAtlanticVault != address(0) || _rdpx != address(0),
96         "ZERO_ADDRESS"
97:      );

123:     require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");

162:     require(assets != 0, "ZERO_ASSETS");

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L94-L97), [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L123-L123), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L162-L162)


### [N&#x2011;51] `else`-block not required
One level of nesting can be removed by not having an `else` block when the `if`-block returns, and `if (foo) { return 1; } else { return 2; }` becomes `if (foo) { return 1; } return 2;`

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

578      if (remainder == 0) {
579        return _strike;
580      } else {
581        return _strike - remainder + roundingPrecision;
582:     }

```
*GitHub*: [578](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L578-L582)


### [N&#x2011;52] Cast to `bytes` or `bytes32` for clearer semantic meaning
Using a [cast](https://ethereum.stackexchange.com/questions/30912/how-to-compare-strings-in-solidity#answer-82739) on a single argument, rather than `abi.encodePacked()` makes the intended operation more clear, leading to less reviewer confusion.

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

1141:      keccak256(abi.encodePacked(asset.tokenSymbol)) ==

1142:        keccak256(abi.encodePacked(_token)),

```
*GitHub*: [1141](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1141-L1141), [1142](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1142-L1142)


### [N&#x2011;53] Use `string.concat()` on strings instead of `abi.encodePacked()` for clearer semantic meaning
Starting with version 0.8.12, Solidity has the `string.concat()` function, which allows one to concatenate a list of strings, without extra padding. Using this function rather than `abi.encodePacked()` makes the intended operation more clear, leading to less reviewer confusion.

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

1141:      keccak256(abi.encodePacked(asset.tokenSymbol)) ==

1142:        keccak256(abi.encodePacked(_token)),

```
*GitHub*: [1141](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1141-L1141), [1142](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1142-L1142)


### [N&#x2011;54] Events may be emitted out of order due to reentrancy
Ensure that events follow the best practice of check-effects-interaction, and are emitted before external calls

*There are 28 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit safeTransfer() prior to emission
152:     emit LogEmergencyWithdraw(msg.sender, tokens);

/// @audit safeTransfer() prior to emission
177:     emit LogAssetsTransfered(msg.sender, tokenABalance, tokenBBalance);

/// @audit safeTransfer() prior to emission
240      emit LogAddLiquidity(
241        msg.sender,
242        tokenAAmount,
243        tokenBAmount,
244        tokenAAmountMin,
245        tokenBAmountMin,
246        tokenAUsed,
247        tokenBUsed,
248        lpReceived
249:     );

/// @audit safeTransfer() prior to emission
288      emit LogRemoveLiquidity(
289        msg.sender,
290        lpAmount,
291        tokenAAmountMin,
292        tokenBAmountMin,
293        tokenAReceived,
294        tokenBReceived
295:     );

/// @audit safeTransferFrom() prior to emission
348      emit LogSwap(
349        msg.sender,
350        token1Amount,
351        token2AmountOutMin,
352        swapTokenAForTokenB,
353        token2Amount
354:     );

```
*GitHub*: [152](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L152-L152), [177](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L177-L177), [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L240-L249), [288](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L288-L295), [348](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L348-L354)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit safeTransferFrom() prior to emission
335:     emit RecoveredERC721(tokenAddress, token_id);

/// @audit balanceOf() prior to emission
363:     emit LogAssetsTransfered(tokenABalance, tokenBBalance, tokenA, tokenB);

```
*GitHub*: [335](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L335-L335), [363](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L363-L363)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit safeTransfer() prior to emission
172:     emit LogEmergencyWithdraw(msg.sender, tokens);

/// @audit approve() prior to emission
349:     emit LogSetAddresses(addresses);

/// @audit safeTransfer() prior to emission
782:     emit LogSettle(optionIds);

/// @audit safeTransfer() prior to emission
807:     emit LogProvideFunding(pointer, fundingAmount);

/// @audit safeTransfer() prior to emission
875      emit LogBondWithDelegate(
876        _to,
877        _delegateIds,
878        _amounts,
879        rdpxBondId,
880        receiptTokenAmount,
881        delegateReceiptTokenAmounts
882:     );

/// @audit safeTransferFrom() prior to emission
932:     emit LogBond(rdpxRequired, wethRequired, receiptTokenAmount);

/// @audit safeTransferFrom() prior to emission
966:     emit LogAddToDelegate(_amount, _fee, delegates.length - 1);

/// @audit safeTransfer() prior to emission
989:     emit LogDelegateWithdraw(delegateId, amountWithdrawn);

/// @audit safeTransfer() prior to emission
1007:    emit LogSync();

/// @audit safeTransfer() prior to emission
1041:    emit LogRedeem(to, receiptTokenAmount);

/// @audit safeTransfer() prior to emission
1069:    emit LogUpperDepeg(_amount, wethReceived);

/// @audit safeTransfer() prior to emission
1123:    emit LogLowerDepeg(_rdpxAmount, _wethAmount, dpxEthReceived);

```
*GitHub*: [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L172-L172), [349](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L349-L349), [782](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L782-L782), [807](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L807-L807), [875](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L875-L882), [932](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L932-L932), [966](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L966-L966), [989](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L989-L989), [1007](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1007-L1007), [1041](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1041-L1041), [1069](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1069-L1069), [1123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1123-L1123)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit safeApprove() prior to emission
211:     emit AddressesSet(addresses);

/// @audit safeTransfer() prior to emission
230:     emit EmergencyWithdraw(msg.sender, tokens);

/// @audit totalAvailableCollateral() prior to emission
311:     emit Purchase(strike, amount, premium, to, msg.sender);

/// @audit safeTransferFrom() prior to emission
368:     emit Settle(ethAmount, rdpxAmount, optionIds);

/// @audit safeTransferFrom() prior to emission
389      emit PayFunding(
390        msg.sender,
391        totalFundingForEpoch[latestFundingPaymentPointer],
392        latestFundingPaymentPointer
393:     );

/// @audit safeTransfer() prior to emission
485          emit FundingPaid(
486            msg.sender,
487            ((currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
488              1e18),
489            latestFundingPaymentPointer
490:         );

/// @audit safeTransfer() prior to emission
494:       emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);

/// @audit safeTransfer() prior to emission
519      emit FundingPaid(
520        msg.sender,
521        ((currentFundingRate * (block.timestamp - startTime)) / 1e18),
522        latestFundingPaymentPointer
523:     );

```
*GitHub*: [211](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L211-L211), [230](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L230-L230), [311](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L311-L311), [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L368-L368), [389](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L389-L393), [485](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L485-L490), [494](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L494-L494), [519](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L519-L523)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit updateFunding() prior to emission
174:     emit Withdraw(msg.sender, receiver, owner, assets, shares);

```
*GitHub*: [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L174-L174)


### [N&#x2011;55] Function names should use lowerCamelCase
According to the Solidity [style guide](https://docs.soliditylang.org/en/latest/style-guide.html#function-names) function names should be in `mixedCase` (lowerCamelCase)

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

378:   function addAMOAddress(address _addr) external onlyRole(DEFAULT_ADMIN_ROLE) {

388    function removeAMOAddress(
389      uint256 _index
390:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

```
*GitHub*: [378](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L378-L378), [388](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L388-L390)


### [N&#x2011;56] Consider bounding input array length
The functions below take in an unbounded array, and make function calls for entries in the array. While the function will revert if it eventually runs out of gas, it may be a nicer user experience to `require()` that the length of the array is below some reasonable maximum, so that the user doesn't have to use up a full transaction's gas only to see that the transaction reverts.

*There are 7 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

147      for (uint256 i = 0; i < tokens.length; i++) {
148        token = IERC20WithBurn(tokens[i]);
149        token.safeTransfer(msg.sender, token.balanceOf(address(this)));
150:     }

```
*GitHub*: [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L147-L150)

```solidity
File: contracts/core/RdpxV2Core.sol

167      for (uint256 i = 0; i < tokens.length; i++) {
168        token = IERC20WithBurn(tokens[i]);
169        token.safeTransfer(msg.sender, token.balanceOf(address(this)));
170:     }

836      for (uint256 i = 0; i < _amounts.length; i++) {
837        // Validate amount
838        _validate(_amounts[i] > 0, 4);
839  
840        BondWithDelegateReturnValue
841          memory returnValues = BondWithDelegateReturnValue(0, 0, 0, 0);
842  
843        returnValues = _bondWithDelegate(
844          _amounts[i],
845          rdpxBondId,
846          _delegateIds[i]
847        );
848  
849        delegateReceiptTokenAmounts[i] = returnValues.delegateReceiptTokenAmount;
850  
851        userTotalBondAmount += returnValues.bondAmountForUser;
852        totalBondAmount += _amounts[i];
853  
854        // purchase options
855        uint256 premium;
856        if (putOptionsRequired) {
857          premium = _purchaseOptions(returnValues.rdpxRequired);
858        }
859  
860        // transfer the required rdpx
861        _transfer(
862          returnValues.rdpxRequired,
863          returnValues.wethRequired - premium,
864          _amounts[i],
865          rdpxBondId
866        );
867:     }

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167-L170), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836-L867)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103      for (uint256 i = 0; i < tokens.length; i++) {
104        token = IERC20WithBurn(tokens[i]);
105        token.safeTransfer(msg.sender, token.balanceOf(address(this)));
106:     }

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103-L106)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

225      for (uint256 i = 0; i < tokens.length; i++) {
226        token = IERC20WithBurn(tokens[i]);
227        token.safeTransfer(msg.sender, token.balanceOf(address(this)));
228:     }

328      for (uint256 i = 0; i < optionIds.length; i++) {
329        uint256 strike = optionPositions[optionIds[i]].strike;
330        uint256 amount = optionPositions[optionIds[i]].amount;
331  
332        // check if strike is ITM
333        _validate(strike >= getUnderlyingPrice(), 7);
334  
335        ethAmount += (amount * strike) / 1e8;
336        rdpxAmount += amount;
337        optionsPerStrike[strike] -= amount;
338        totalActiveOptions -= amount;
339  
340        // Burn option tokens from user
341        _burn(optionIds[i]);
342  
343        optionPositions[optionIds[i]].strike = 0;
344:     }

413      for (uint256 i = 0; i < strikes.length; i++) {
414        _validate(optionsPerStrike[strikes[i]] > 0, 4);
415        _validate(
416          latestFundingPerStrike[strikes[i]] != latestFundingPaymentPointer,
417          5
418        );
419        uint256 strike = strikes[i];
420  
421        uint256 amount = optionsPerStrike[strike] -
422          fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
423            strike
424          ];
425  
426        uint256 timeToExpiry = nextFundingPaymentTimestamp() -
427          (genesis + ((latestFundingPaymentPointer - 1) * fundingDuration));
428  
429        uint256 premium = calculatePremium(
430          strike,
431          amount,
432          timeToExpiry,
433          getUnderlyingPrice()
434        );
435  
436        latestFundingPerStrike[strike] = latestFundingPaymentPointer;
437        fundingAmount += premium;
438  
439        // Record number of options that funding payments were accounted for, for this epoch
440        fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;
441  
442        // record the number of options funding has been accounted for the epoch and strike
443        fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
444          strike
445        ] += amount;
446  
447        // Record total funding for this epoch
448        // This does not need to be done in purchase() since it's already accounted for using `addProceeds()`
449        totalFundingForEpoch[latestFundingPaymentPointer] += premium;
450  
451        emit CalculateFunding(
452          msg.sender,
453          amount,
454          strike,
455          premium,
456          latestFundingPaymentPointer
457        );
458:     }

```
*GitHub*: [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225-L228), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328-L344), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413-L458)


### [N&#x2011;57] `if`-statement can be converted to a ternary
The code can be made more compact while also increasing readability by converting the following `if`-statements to ternaries (e.g. `foo += (x > y) ? a : b`)

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

597        if (lastUpdateTime > nextFundingPaymentTimestamp() - fundingDuration) {
598          startTime = lastUpdateTime;
599        } else {
600          startTime = nextFundingPaymentTimestamp() - fundingDuration;
601:       }

```
*GitHub*: [597](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L597-L601)


### [N&#x2011;58] Consider splitting long calculations
The longer a string of operations is, the harder it is to understand it. Consider splitting the full calculation into more steps, with more descriptive temporary variable names, and add extensive comments.

*There are 5 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

1180       rdpxRequired =
1181         (RDPX_RATIO_PERCENTAGE * _amount * DEFAULT_PRECISION) /
1182:        (DEFAULT_PRECISION * rdpxPrice * 1e2);

1169       rdpxRequired =
1170         ((RDPX_RATIO_PERCENTAGE - (bondDiscount / 2)) *
1171           _amount *
1172           DEFAULT_PRECISION) /
1173:        (DEFAULT_PRECISION * rdpxPrice * 1e2);

1175       wethRequired =
1176         ((ETH_RATIO_PERCENTAGE - (bondDiscount / 2)) * _amount) /
1177:        (DEFAULT_PRECISION * 1e2);

```
*GitHub*: [1180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1180-L1182), [1169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1169-L1173), [1175](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1175-L1177)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

610        fundingRates[latestFundingPaymentPointer] =
611          fundingRates[latestFundingPaymentPointer] +
612:         ((amount * 1e18) / (endTime - startTime));

```
*GitHub*: [610](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L610-L612)

```solidity
File: contracts/reLP/ReLPContract.sol

273      mintokenAAmount =
274        (((amountB / 2) * tokenAInfo.tokenAPrice) / 1e8) -
275:       (((amountB / 2) * tokenAInfo.tokenAPrice * slippageTolerance) / 1e16);

```
*GitHub*: [273](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L273-L275)


### [N&#x2011;59] Contract declarations should have NatSpec descriptions
e.g. `@dev` or `@notice`, and it must appear above the contract definition braces in order to be identified by the compiler as NatSpec

*There are 4 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

22:  abstract contract OracleLike {

28:  contract UniV3LiquidityAMO is AccessControl, ERC721Holder {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L22-L22), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L28-L28)

```solidity
File: contracts/core/RdpxV2Bond.sol

11   contract RdpxV2Bond is
12     ERC721,
13     ERC721Enumerable,
14     Pausable,
15     AccessControl,
16     ERC721Burnable
17:  {

```
*GitHub*: [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L11-L17)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

18   contract RdpxDecayingBonds is
19     ERC721,
20     ERC721Enumerable,
21     ERC721Burnable,
22     Pausable,
23     AccessControl
24:  {

```
*GitHub*: [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L18-L24)


### [N&#x2011;60] Contract declarations should have NatSpec `@author` annotations


*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

22:  abstract contract OracleLike {

28:  contract UniV3LiquidityAMO is AccessControl, ERC721Holder {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L22-L22), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L28-L28)

```solidity
File: contracts/core/RdpxV2Bond.sol

11   contract RdpxV2Bond is
12     ERC721,
13     ERC721Enumerable,
14     Pausable,
15     AccessControl,
16     ERC721Burnable
17:  {

```
*GitHub*: [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L11-L17)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

18   contract RdpxDecayingBonds is
19     ERC721,
20     ERC721Enumerable,
21     ERC721Burnable,
22     Pausable,
23     AccessControl
24:  {

```
*GitHub*: [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L18-L24)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

28   contract PerpetualAtlanticVault is
29     IPerpetualAtlanticVault,
30     ReentrancyGuard,
31     Pausable,
32     ERC721,
33     ERC721Enumerable,
34     ERC721Burnable,
35     AccessControl,
36     ContractWhitelist
37:  {

```
*GitHub*: [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L28-L37)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

21:  contract PerpetualAtlanticVaultLP is ERC20, IPerpetualAtlanticVaultLP {

```
*GitHub*: [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L21-L21)


### [N&#x2011;61] Contract declarations should have NatSpec `@title` annotations


*There are 4 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

22:  abstract contract OracleLike {

28:  contract UniV3LiquidityAMO is AccessControl, ERC721Holder {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L22-L22), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L28-L28)

```solidity
File: contracts/core/RdpxV2Bond.sol

11   contract RdpxV2Bond is
12     ERC721,
13     ERC721Enumerable,
14     Pausable,
15     AccessControl,
16     ERC721Burnable
17:  {

```
*GitHub*: [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L11-L17)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

18   contract RdpxDecayingBonds is
19     ERC721,
20     ERC721Enumerable,
21     ERC721Burnable,
22     Pausable,
23     AccessControl
24:  {

```
*GitHub*: [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L18-L24)


### [N&#x2011;62] Event declarations should have NatSpec descriptions


*There are 14 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

387    event LogAddLiquidity(
388      address indexed sender,
389      uint256 tokenAAmount,
390      uint256 tokenBAmount,
391      uint256 tokenAAmountMin,
392      uint256 tokenBAmountMin,
393      uint256 tokenAUsed,
394      uint256 tokenBUsed,
395      uint256 lpReceived
396:   );

398    event LogRemoveLiquidity(
399      address indexed sender,
400      uint256 lpAmount,
401      uint256 tokenAAmountMin,
402      uint256 tokenBAmountMin,
403      uint256 tokenAReceived,
404      uint256 tokenBReceived
405:   );

407    event LogSwap(
408      address indexed sender,
409      uint256 token1Amount,
410      uint256 token2AmountOutMin,
411      bool swapTokenAForTokenB,
412      uint256 token2Amount
413:   );

415    event LogAssetsTransfered(
416      address indexed sender,
417      uint256 tokenAAmount,
418      uint256 tokenBAmount
419:   );

421:   event LogEmergencyWithdraw(address sender, address[] tokens);

```
*GitHub*: [387](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L387-L396), [398](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L398-L405), [407](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L407-L413), [415](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L415-L419), [421](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L421-L421)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

368:   event RecoveredERC20(address token, uint256 amount);

369:   event RecoveredERC721(address token, uint256 id);

370    event LogAssetsTransfered(
371      uint256 tokenAAmount,
372      uint256 tokenBAmount,
373      address tokenAAddress,
374      address tokenBAddress
375:   );

379:   event log(uint);

```
*GitHub*: [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L368-L368), [369](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L369-L369), [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L370-L375), [379](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L379-L379)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

46     event BondMinted(
47       address to,
48       uint256 bondId,
49       uint256 expiry,
50       uint256 rdpxAmount
51:    );

53:    event EmergencyWithdraw(address sender);

```
*GitHub*: [46](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L46-L51), [53](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L53-L53)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

28     event Deposit(
29       address indexed caller,
30       address indexed owner,
31       uint256 assets,
32       uint256 shares
33:    );

35     event Withdraw(
36       address indexed caller,
37       address indexed receiver,
38       address indexed owner,
39       uint256 assets,
40       uint256 shares
41:    );

```
*GitHub*: [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L28-L33), [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L35-L41)

```solidity
File: contracts/reLP/ReLPContract.sol

311:   event LogSetReLpFactor(uint256 _reLPFactor);

```
*GitHub*: [311](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L311-L311)


### [N&#x2011;63] Missing event and or timelock for critical parameter change
Events help non-contract tools to track changes, and timelocks prevent users from being surprised by changes

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

116:     slippageTolerance = _slippageTolerance;

```
*GitHub*: [116](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L116-L116)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

240:     fundingDuration = _fundingDuration;

```
*GitHub*: [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L240-L240)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

195:     _totalCollateral += proceeds;

213:     _rdpxCollateral += amount;

```
*GitHub*: [195](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L195-L195), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L213-L213)

```solidity
File: contracts/reLP/ReLPContract.sol

178:     liquiditySlippageTolerance = _liquiditySlippageTolerance;

193:     slippageTolerance = _slippageTolerance;

```
*GitHub*: [178](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L178-L178), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L193-L193)


### [N&#x2011;64] Function declarations should have NatSpec descriptions


*There are 31 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

57:    constructor() {

```
*GitHub*: [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L57-L57)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

23:    function read() external view virtual returns (uint);

25:    function uniswapPool() external view virtual returns (address);

76:    constructor(address _rdpx, address _rdpxV2Core) {

94     function liquidityInPool(
95       address _collateral_address,
96       int24 _tickLower,
97       int24 _tickUpper,
98       uint24 _fee
99:    ) public view returns (uint128) {

112:   function numPositions() public view returns (uint256) {

119:   function collectFees() external onlyRole(DEFAULT_ADMIN_ROLE) {

139    function approveTarget(
140      address _target,
141      address _token,
142      uint256 _amount,
143      bool use_safe_approve
144:   ) public onlyRole(DEFAULT_ADMIN_ROLE) {

155    function addLiquidity(
156      AddLiquidityParams memory params
157:   ) public onlyRole(DEFAULT_ADMIN_ROLE) {

213    function removeLiquidity(
214      uint256 positionIndex,
215      uint256 minAmount0,
216      uint256 minAmount1
217:   ) public onlyRole(DEFAULT_ADMIN_ROLE) {

274    function swap(
275      address _tokenA,
276      address _tokenB,
277      uint24 _fee_tier,
278      uint256 _amountAtoB,
279      uint256 _amountOutMinimum,
280      uint160 _sqrtPriceLimitX96
281:   ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {

313    function recoverERC20(
314      address tokenAddress,
315      uint256 tokenAmount
316:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

324    function recoverERC721(
325      address tokenAddress,
326      uint256 token_id
327:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

339    function execute(
340      address _to,
341      uint256 _value,
342      bytes calldata _data
343:   ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (bool, bytes memory) {

```
*GitHub*: [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L23-L23), [25](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L25-L25), [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L76-L76), [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L94-L99), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L112-L112), [119](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L119-L119), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L139-L144), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L157), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L217), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L281), [313](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L313-L316), [324](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L324-L327), [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L339-L343)

```solidity
File: contracts/core/RdpxV2Bond.sol

24:    constructor() ERC721("rDPX V2 Bond", "rDPXV2Bond") {

29:    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {

33:    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {

37     function mint(
38       address to
39:    ) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {

57     function supportsInterface(
58       bytes4 interfaceId
59     )
60       public
61       view
62       override(ERC721, ERC721Enumerable, AccessControl)
63       returns (bool)
64:    {

```
*GitHub*: [24](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L24-L24), [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L29-L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L33-L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L39), [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L57-L64)

```solidity
File: contracts/core/RdpxV2Core.sol

124:   constructor(address _weth) {

```
*GitHub*: [124](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L124-L124)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

56     constructor(
57       string memory _name,
58       string memory _symbol
59:    ) ERC721(_name, _symbol) {

174    function supportsInterface(
175      bytes4 interfaceId
176    )
177      public
178      view
179      override(ERC721, ERC721Enumerable, AccessControl)
180      returns (bool)
181:   {

```
*GitHub*: [56](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L56-L59), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L181)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

23:    constructor() ERC20("Dopex Synthetic ETH", "dpxETH") {

29:    function pause() public onlyRole(PAUSER_ROLE) {

33:    function unpause() public onlyRole(PAUSER_ROLE) {

37:    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {

41     function burn(
42       uint256 _amount
43:    ) public override(ERC20Burnable, IDpxEthToken) onlyRole(BURNER_ROLE) {

47     function burnFrom(
48       address account,
49       uint256 amount
50:    ) public override onlyRole(BURNER_ROLE) {

```
*GitHub*: [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L23-L23), [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L29-L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L33-L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L37-L37), [41](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L41-L43), [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L47-L50)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

243:   function setLpAllowance(bool increase) external onlyRole(DEFAULT_ADMIN_ROLE) {

645    function supportsInterface(
646      bytes4 interfaceId
647    )
648      public
649      view
650      override(ERC721, ERC721Enumerable, AccessControl)
651      returns (bool)
652:   {

```
*GitHub*: [243](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L243-L243), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L652)

```solidity
File: contracts/reLP/ReLPContract.sol

79:    constructor() {

```
*GitHub*: [79](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L79-L79)

</details>

### [N&#x2011;65] Consider moving `msg.sender` checks to a common authorization `modifier`


*There are 3 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

638          IRdpxDecayingBonds(addresses.rdpxDecayingBonds).ownerOf(_bondId) ==
639:           msg.sender,

981:     _validate(delegate.owner == msg.sender, 9);

1026:      msg.sender == RdpxV2Bond(addresses.receiptTokenBonds).ownerOf(id),

```
*GitHub*: [638](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L638-L639), [981](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L981-L981), [1026](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1026-L1026)


### [N&#x2011;66] Setters should prevent re-setting of the same value
This especially problematic when the setter also emits the same value, which may be confusing to offline parsers

*There are 16 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

109    function setSlippageTolerance(
110      uint256 _slippageTolerance
111    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
112      require(
113        _slippageTolerance > 0,
114        "reLPContract: slippage tolerance must be greater than 0"
115      );
116      slippageTolerance = _slippageTolerance;
117:   }

258    function removeLiquidity(
259      uint256 lpAmount,
260      uint256 tokenAAmountMin,
261      uint256 tokenBAmountMin
262    )
263      external
264      onlyRole(DEFAULT_ADMIN_ROLE)
265      returns (uint256 tokenAReceived, uint256 tokenBReceived)
266    {
267      // approve the AMM Router
268      IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);
269  
270      // remove liquidity
271      (tokenAReceived, tokenBReceived) = IUniswapV2Router(addresses.ammRouter)
272        .removeLiquidity(
273          addresses.tokenA,
274          addresses.tokenB,
275          lpAmount,
276          tokenAAmountMin,
277          tokenBAmountMin,
278          address(this),
279          block.timestamp + 1
280        );
281  
282      // update LP token Balance
283      lpTokenBalance -= lpAmount;
284  
285      // send unused token A and token B back to rdpxV2Core
286      _sendTokensToRdpxV2Core();
287  
288      emit LogRemoveLiquidity(
289        msg.sender,
290        lpAmount,
291        tokenAAmountMin,
292        tokenBAmountMin,
293        tokenAReceived,
294        tokenBReceived
295      );
296:   }

```
*GitHub*: [109](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L109-L117), [258](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L258-L296)

```solidity
File: contracts/core/RdpxV2Core.sol

180    function setRdpxBurnPercentage(
181      uint256 _rdpxBurnPercentage
182    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
183      _validate(_rdpxBurnPercentage > 0, 3);
184      rdpxBurnPercentage = _rdpxBurnPercentage;
185      emit LogSetRdpxBurnPercentage(_rdpxBurnPercentage);
186:   }

193    function setRdpxFeePercentage(
194      uint256 _rdpxFeePercentage
195    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
196      _validate(_rdpxFeePercentage > 0, 3);
197      rdpxFeePercentage = _rdpxFeePercentage;
198      emit LogSetRdpxFeePercentage(_rdpxFeePercentage);
199:   }

206    function setIsreLP(bool _isReLPActive) external onlyRole(DEFAULT_ADMIN_ROLE) {
207      isReLPActive = _isReLPActive;
208      emit LogSetIsReLPActive(_isReLPActive);
209:   }

216    function setPutOptionsRequired(
217      bool _putOptionsRequired
218    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
219      putOptionsRequired = _putOptionsRequired;
220      emit LogSetputOptionsRequired(_putOptionsRequired);
221:   }

228    function setBondMaturity(
229      uint256 _bondMaturity
230    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
231      _validate(_bondMaturity > 0, 3);
232      bondMaturity = _bondMaturity;
233      emit LogSetBondMaturity(_bondMaturity);
234:   }

441    function setBondDiscount(
442      uint256 _bondDiscountFactor
443    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
444      _validate(_bondDiscountFactor > 0, 3);
445      bondDiscountFactor = _bondDiscountFactor;
446  
447      emit LogSetBondDiscountFactor(_bondDiscountFactor);
448:   }

455    function setSlippageTolerance(
456      uint256 _slippageTolerance
457    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
458      _validate(_slippageTolerance > 0, 3);
459      slippageTolerance = _slippageTolerance;
460  
461      emit LogSetSlippageTolerance(_slippageTolerance);
462:   }

941    function addToDelegate(
942      uint256 _amount,
943      uint256 _fee
944    ) external returns (uint256) {
945      _whenNotPaused();
946      // fee less than 100%
947      _validate(_fee < 100e8, 8);
948      // amount greater than 0.01 WETH
949      _validate(_amount > 1e16, 4);
950      // fee greater than 1%
951      _validate(_fee >= 1e8, 8);
952  
953      IERC20WithBurn(weth).safeTransferFrom(msg.sender, address(this), _amount);
954  
955      Delegate memory delegatePosition = Delegate({
956        amount: _amount,
957        fee: _fee,
958        owner: msg.sender,
959        activeCollateral: 0
960      });
961      delegates.push(delegatePosition);
962  
963      // add amount to total weth delegated
964      totalWethDelegated += _amount;
965  
966      emit LogAddToDelegate(_amount, _fee, delegates.length - 1);
967      return (delegates.length - 1);
968:   }

```
*GitHub*: [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L180-L186), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L193-L199), [206](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L206-L209), [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L216-L221), [228](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L228-L234), [441](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L441-L448), [455](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L455-L462), [941](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L941-L968)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

237    function updateFundingDuration(
238      uint256 _fundingDuration
239    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
240      fundingDuration = _fundingDuration;
241:   }

```
*GitHub*: [237](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L237-L241)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

190    function addProceeds(uint256 proceeds) public onlyPerpVault {
191      require(
192        collateral.balanceOf(address(this)) >= _totalCollateral + proceeds,
193        "Not enough collateral token was sent"
194      );
195      _totalCollateral += proceeds;
196:   }

208    function addRdpx(uint256 amount) public onlyPerpVault {
209      require(
210        IERC20WithBurn(rdpx).balanceOf(address(this)) >= _rdpxCollateral + amount,
211        "Not enough rdpx token was sent"
212      );
213      _rdpxCollateral += amount;
214:   }

```
*GitHub*: [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L190-L196), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L208-L214)

```solidity
File: contracts/reLP/ReLPContract.sol

90     function setreLpFactor(
91       uint256 _reLPFactor
92     ) external onlyRole(DEFAULT_ADMIN_ROLE) {
93       require(
94         _reLPFactor > 0,
95         "reLPContract: reLP factor must be greater than 0"
96       );
97       reLPFactor = _reLPFactor;
98   
99       emit LogSetReLpFactor(_reLPFactor);
100:   }

171    function setLiquiditySlippageTolerance(
172      uint256 _liquiditySlippageTolerance
173    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
174      require(
175        _liquiditySlippageTolerance > 0,
176        "reLPContract: liquidity slippage tolerance must be greater than 0"
177      );
178      liquiditySlippageTolerance = _liquiditySlippageTolerance;
179:   }

186    function setSlippageTolerance(
187      uint256 _slippageTolerance
188    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
189      require(
190        _slippageTolerance > 0,
191        "reLPContract: slippage tolerance must be greater than 0"
192      );
193      slippageTolerance = _slippageTolerance;
194:   }

```
*GitHub*: [90](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L90-L100), [171](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L171-L179), [186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L186-L194)


### [N&#x2011;67] Imports could be organized more systematically
The contract's interface should be imported first, followed by each of the interfaces it uses, followed by all other files. The examples below do not follow this layout.

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

15:  import "../uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

```
*GitHub*: [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L15-L15)


### [N&#x2011;68] Complex casting
Consider whether the number of casts is really necessary, or whether using a different type would be more appropriate. Alternatively, add comments to explain in detail why the casts are necessary, and any implicit reasons why the cast does not introduce an overflow.

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

552      amountOut = dpxEthCurvePool.exchange(
553:       _ethToDpxEth ? int128(int256(a)) : int128(int256(b)),

553        _ethToDpxEth ? int128(int256(a)) : int128(int256(b)),
554:       _ethToDpxEth ? int128(int256(b)) : int128(int256(a)),

```
*GitHub*: [552](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L552-L553), [552](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L552-L553), [553](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L553-L554), [553](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L553-L554)


### [N&#x2011;69] Mixed usage of `int`/`uint` with `int256`/`uint256`
`int256`/`uint256` are the preferred type names (they're what are used for function signatures), so they should be used consistently

*There are 3 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

23:    function read() external view virtual returns (uint);

120:     for (uint i = 0; i < positions_array.length; i++) {

379:   event log(uint);

```
*GitHub*: [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L23-L23), [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120-L120), [379](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L379-L379)


### [N&#x2011;70] Public variable declarations should have NatSpec descriptions
e.g. `@dev` or `@notice`

*There are 15 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

35:    IUniswapV3Factory public univ3_factory;

36:    INonfungiblePositionManager public univ3_positions;

37:    ISwapRouter public univ3_router;

63:    Position[] public positions_array;

66:    mapping(uint256 => Position) public positions_mapping;

69:    address public rdpx;

72:    address public rdpxV2Core;

```
*GitHub*: [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L35-L35), [36](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L36-L36), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L37-L37), [63](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L63-L63), [66](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L66-L66), [69](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L69-L69), [72](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L72-L72)

```solidity
File: contracts/core/RdpxV2Bond.sol

22:    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L22-L22)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

31:    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

34:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

37:    mapping(uint256 => Bond) public bonds;

```
*GitHub*: [31](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L31-L31), [34](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L34-L34), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L37-L37)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

19:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

20:    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

21:    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

```
*GitHub*: [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L19-L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L20-L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L21-L21)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

82:    mapping(uint256 => uint256) public fundingRates;

```
*GitHub*: [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L82-L82)

## Gas Optimizations


### [G&#x2011;01] Enable IR-based code generation
By using `--via-ir` or `{"viaIR": true}`, the compiler is able to use more advanced [multi-function optimizations](https://docs.soliditylang.org/en/v0.8.17/ir-breaking-changes.html#solidity-ir-based-codegen-changes), for extra gas savings.

*There is one instance of this issue:*

```solidity
File: Various Files


```


### [G&#x2011;02] Remove or replace unused state variables
Saves a storage slot. If the variable is assigned a non-zero value, saves Gsset (**20000 gas**). If it's assigned a zero value, saves Gsreset (**2900 gas**). If the variable remains unassigned, there is no gas savings unless the variable is `public`, in which case the compiler-generated non-payable getter deployment cost is saved. If the state variable is overriding an interface's public function, mark the variable as `constant` or `immutable` so that it does not use a storage slot

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

103:    uint256 public liquiditySlippageTolerance = 5e5; // 0.5%

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L103)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

52:     string public underlyingSymbol;

```
*GitHub*: [52](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L52)


### [G&#x2011;03] Multiple `address`/ID mappings can be combined into a single `mapping` of an `address`/ID to a `struct`, where appropriate
Saves a storage slot for the mapping. Depending on the circumstances and sizes of types, can avoid a Gsset (**20000 gas**) per mapping combined. Reads and subsequent writes can also be cheaper when a function requires both values and they both fit in the same storage slot. Finally, if both fields are accessed in the same function, can save **~42 gas per access** due to [not having to recalculate the key's keccak256 hash](https://gist.github.com/IllIllI000/ec23a57daa30a8f8ca8b9681c8ccefb0) (Gkeccak256 - 30 gas) and that calculation's associated stack operations.

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

63      mapping(uint256 => OptionPosition) public optionPositions;
64    
65      /// @dev number of options funding has been accounted for the epoch
66      mapping(uint256 => uint256) public fundingPaymentsAccountedFor;
67    
68      /// @dev the funding accounted for the epoch and strike
69      mapping(uint256 => mapping(uint256 => uint256))
70        public fundingPaymentsAccountedForPerStrike;
71    
72      /// @dev the total funding for the epoch
73      mapping(uint256 => uint256) public totalFundingForEpoch;
74    
75      /// @dev amount of options per strike
76      mapping(uint256 => uint256) public optionsPerStrike;
77    
78      /// @dev latest funding update per strike
79      mapping(uint256 => uint256) public latestFundingPerStrike;
80    
81      // @dev Funding rate for the epoch
82:     mapping(uint256 => uint256) public fundingRates;

```
*GitHub*: [63](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L63-L82)


### [G&#x2011;04] State variables only set in the constructor should be declared `immutable`
Avoids a Gsset (**20000 gas**) in the constructor, and replaces the first access in each transaction (Gcoldsload - **2100 gas**) and each access thereafter (Gwarmacces - **100 gas**) with a `PUSH32` (**3 gas**). 

While `string`s are not value types, and therefore cannot be `immutable`/`constant` if not hard-coded outside of the constructor, the same behavior can be achieved by making the current contract `abstract` with `virtual` functions for the `string` accessors, and having a child contract override the functions with the hard-coded implementation-specific values.

*There are 11 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit univ3_factory (constructor)
82:       univ3_factory = IUniswapV3Factory(

/// @audit univ3_positions (constructor)
85:       univ3_positions = INonfungiblePositionManager(

/// @audit univ3_router (constructor)
88:       univ3_router = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);

```
*GitHub*: [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L82), [85](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L85), [88](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L88)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit weth (constructor)
126:      weth = _weth;

```
*GitHub*: [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L126)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit underlyingSymbol (constructor)
122:      underlyingSymbol = collateralToken.symbol();

/// @audit collateralToken (constructor)
121:      collateralToken = IERC20WithBurn(_collateralToken);

/// @audit collateralPrecision (constructor)
123:      collateralPrecision = 10 ** collateralToken.decimals();

/// @audit genesis (constructor)
124:      genesis = _gensis;

```
*GitHub*: [122](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L122), [121](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L121), [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L123), [124](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L124)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit collateral (constructor)
102:      collateral = ERC20(_collateral);

/// @audit collateralSymbol (constructor)
100:      collateralSymbol = _collateralSymbol;

/// @audit rdpxRdpxV2Core (constructor)
99:       rdpxRdpxV2Core = _rdpxRdpxV2Core;

```
*GitHub*: [102](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L102), [100](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L100), [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L99)


### [G&#x2011;05] State variables can be packed into fewer storage slots
If variables occupying the same slot are both written the same function or by the constructor, avoids a separate Gsset (**20000 gas**). Reads of the variables can also be cheaper

*There is one instance of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit Variable ordering with 18 slots instead of the current 19:
///           user-defined(32):addresses, user-defined[](32):reserveAsset, address[](32):amoAddresses, string[](32):reserveTokens, mapping(32):reservesIndex, mapping(32):bonds, mapping(32):optionsOwned, mapping(32):fundingPaidFor, uint256(32):rdpxBurnPercentage, uint256(32):rdpxFeePercentage, uint256(32):slippageTolerance, uint256(32):liquiditySlippageTolerance, uint256(32):bondMaturity, uint256(32):bondDiscountFactor, uint256(32):totalWethDelegated, user-defined[](32):delegates, user-defined(20):pricingOracleAddresses, bool(1):isReLPActive, bool(1):putOptionsRequired, address(20):weth
47:     Addresses public addresses;

```
*GitHub*: [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L47)


### [G&#x2011;06] State variables can be packed into fewer storage slots by truncating timestamp bytes
By using a `uint32` rather than a larger type for variables that track timestamps, one can save gas by using fewer storage slots per struct, at the expense of the protocol breaking after the year 2106 (when `uint32` wraps). If this is an acceptable tradeoff, if variables occupying the same slot are both written the same function or by the constructor, avoids a separate Gsset (**20000 gas**). Reads of the variables can also be cheaper

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit Variable ordering with 18 slots instead of the current 19:
///           user-defined(32):addresses, user-defined[](32):reserveAsset, address[](32):amoAddresses, string[](32):reserveTokens, mapping(32):reservesIndex, mapping(32):bonds, mapping(32):optionsOwned, mapping(32):fundingPaidFor, uint256(32):rdpxBurnPercentage, uint256(32):rdpxFeePercentage, uint256(32):slippageTolerance, uint256(32):liquiditySlippageTolerance, uint256(32):bondMaturity, uint256(32):bondDiscountFactor, uint256(32):totalWethDelegated, user-defined[](32):delegates, user-defined(20):pricingOracleAddresses, bool(1):isReLPActive, bool(1):putOptionsRequired, address(20):weth
47:     Addresses public addresses;

```
*GitHub*: [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L47)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit Variable ordering with 17 slots instead of the current 18:
///           string(32):underlyingSymbol, user-defined(32):addresses, uint256(32):collateralPrecision, mapping(32):optionPositions, mapping(32):fundingPaymentsAccountedFor, mapping(32):fundingPaymentsAccountedForPerStrike, mapping(32):totalFundingForEpoch, mapping(32):optionsPerStrike, mapping(32):latestFundingPerStrike, mapping(32):fundingRates, uint256(32):latestFundingPaymentPointer, uint256(32):totalActiveOptions, uint256(32):genesis, uint256(32):fundingDuration, uint256(32):roundingPrecision, user-defined(20):_tokenIdCounter, uint32(4):lastUpdateTime, user-defined(20):collateralToken
42:     Counters.Counter private _tokenIdCounter;

```
*GitHub*: [42](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L42)


### [G&#x2011;07] Using `storage` instead of `memory` for structs/arrays saves gas
When fetching data from a storage location, assigning the data to a `memory` variable causes all fields of the struct/array to be read from storage, which incurs a Gcoldsload (**2100 gas**) for *each* field of the struct/array. If the fields are read from the new memory variable, they incur an additional `MLOAD` rather than a cheap stack read. Instead of declearing the variable with the `memory` keyword, declaring the variable with the `storage` keyword and caching any fields that need to be re-read in stack variables, will be much cheaper, only incuring the Gcoldsload for the fields actually read. The only time it makes sense to read the whole struct/array into a `memory` variable, is if the full struct/array is being returned by the function, is being passed to a function that requires `memory`, or if the array/struct is being read from another `memory` array/struct

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

121:        Position memory current_position = positions_array[i];

```
*GitHub*: [121](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L121)


### [G&#x2011;08] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (**100 gas**) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*There are 16 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit univ3_positions on line 174
193:      (uint256 tokenId, uint128 amountLiquidity, , ) = univ3_positions.mint(

/// @audit univ3_positions on line 240
253:      univ3_positions.decreaseLiquidity(decreaseLiquidityParams);

/// @audit univ3_positions on line 253
255:      univ3_positions.collect(collect_params);

/// @audit univ3_positions on line 255
257:      univ3_positions.burn(pos.token_id);

/// @audit univ3_router on line 302
304:      uint256 amountOut = univ3_router.exactInputSingle(swap_params);

/// @audit rdpxV2Core on line 159
164:        rdpxV2Core,

/// @audit rdpxV2Core on line 357
358:      IERC20WithBurn(tokenB).safeTransfer(rdpxV2Core, tokenBBalance);

/// @audit rdpxV2Core on line 358
361:      IRdpxV2Core(rdpxV2Core).sync();

```
*GitHub*: [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L193), [253](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L253), [255](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L255), [257](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L257), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L304), [164](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L164), [358](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L358), [361](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L361)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit pricingOracleAddresses on line 365
370:      emit LogSetPricingOracleAddresses(pricingOracleAddresses);

/// @audit weth on line 339
343:      IERC20WithBurn(weth).approve(addresses.dopexAMMRouter, type(uint256).max);

/// @audit weth on line 343
344:      IERC20WithBurn(weth).approve(addresses.dpxEthCurvePool, type(uint256).max);

/// @audit weth on line 344
345:      IERC20WithBurn(weth).approve(

/// @audit slippageTolerance on line 547
549:          (((_amount * getEthPrice()) * slippageTolerance) / 1e16));

```
*GitHub*: [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L370), [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L343), [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L344), [345](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L345), [549](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L549)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit collateralToken on line 121
122:      underlyingSymbol = collateralToken.symbol();

/// @audit collateralToken on line 122
123:      collateralPrecision = 10 ** collateralToken.decimals();

/// @audit collateralToken on line 245
249:        : collateralToken.approve(addresses.perpetualAtlanticVaultLP, 0);

```
*GitHub*: [122](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L122), [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L123), [249](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L249)


### [G&#x2011;09] Multiple accesses of a mapping/array should use a local variable cache
The instances below point to the second+ access of a value inside a mapping/array, within a function. Caching a mapping's value in a local `storage` or `calldata` variable when the value is accessed [multiple times](https://gist.github.com/IllIllI000/ec23a57daa30a8f8ca8b9681c8ccefb0), saves **~42 gas per access** due to not having to recalculate the key's keccak256 hash (Gkeccak256 - **30 gas**) and that calculation's associated stack operations. Caching an array's struct avoids recalculating the array offsets into memory/calldata

*There are 12 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit reserveAsset[<etc>] on line 662
681:        reserveAsset[reservesIndex["RDPX"]].tokenBalance +=

/// @audit reserveAsset[<etc>] on line 779
780:      reserveAsset[reservesIndex["RDPX"]].tokenBalance -= rdpxAmount;

/// @audit reserveAsset[i] on line 997
1001:       if (weth == reserveAsset[i].tokenAddress) {

/// @audit reserveAsset[i] on line 1001
1004:       reserveAsset[i].tokenBalance = balance;

/// @audit bonds[id] on line 1021
1023:     _validate(block.timestamp > bonds[id].maturity, 7);

/// @audit bonds[id] on line 1023
1035:     receiptTokenAmount = bonds[id].amount;

/// @audit reserveAsset[<etc>] on line 1059
1067:     reserveAsset[reservesIndex["WETH"]].tokenBalance += wethReceived;

/// @audit reserveAsset[<etc>] on line 1094
1106:       reserveAsset[reservesIndex["RDPX"]].tokenBalance -= _rdpxAmount;

/// @audit reserveAsset[<etc>] on line 1106
1110:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= _wethAmount;

/// @audit reserveAsset[<etc>] on line 1110
1119:     IDpxEthToken(reserveAsset[reservesIndex["DPXETH"]].tokenAddress).burn(

```
*GitHub*: [681](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L681), [780](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L780), [1001](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1001), [1004](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1004), [1023](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1023), [1035](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1035), [1067](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1067), [1106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1106), [1110](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1110), [1119](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1119)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit optionPositions[<etc>] on line 329
330:        uint256 amount = optionPositions[optionIds[i]].amount;

/// @audit optionPositions[<etc>] on line 330
343:        optionPositions[optionIds[i]].strike = 0;

```
*GitHub*: [330](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L330), [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L343)


### [G&#x2011;10] `internal` functions only called once can be inlined to save gas
Not inlining costs **20 to 40 gas** because of two extra `JUMP` instructions and additional stack operations needed for function calls.

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

495     function _issueBond(
496       address _to,
497       uint256 _amount
498:    ) internal returns (uint256 bondId) {

598     function _calculateAmounts(
599       uint256 _wethRequired,
600       uint256 _rdpxRequired,
601       uint256 _amount,
602       uint256 _delegateFee
603:    ) internal view returns (uint256 amount1, uint256 amount2) {

699     function _bondWithDelegate(
700       uint256 _amount,
701       uint256 rdpxBondId,
702       uint256 delegateId
703:    ) internal returns (BondWithDelegateReturnValue memory returnValues) {

```
*GitHub*: [495](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L495-L498), [598](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L598-L603), [699](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L699-L703)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

286:    function beforeWithdraw(uint256 assets, uint256 /*shares*/) internal {

```
*GitHub*: [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L286)


### [G&#x2011;11] `<array>.length` should not be looked up in every loop of a `for`-loop
The overheads outlined below are _PER LOOP_, excluding the first loop
* storage arrays incur a Gwarmaccess (**100 gas**)
* memory arrays use `MLOAD` (**3 gas**)
* calldata arrays use `CALLDATALOAD` (**3 gas**)

Caching the length changes each of these to a `DUP<N>` (**3 gas**), and gets rid of the extra `DUP<N>` needed to store the stack offset

*There are 11 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

147:      for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L147)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

120:      for (uint i = 0; i < positions_array.length; i++) {

```
*GitHub*: [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120)

```solidity
File: contracts/core/RdpxV2Core.sol

167:      for (uint256 i = 0; i < tokens.length; i++) {

246:      for (uint256 i = 1; i < reserveAsset.length; i++) {

775:      for (uint256 i = 0; i < optionIds.length; i++) {

836:      for (uint256 i = 0; i < _amounts.length; i++) {

996:      for (uint256 i = 1; i < reserveAsset.length; i++) {

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167), [246](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L246), [775](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L775), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836), [996](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L996)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103:      for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

225:      for (uint256 i = 0; i < tokens.length; i++) {

328:      for (uint256 i = 0; i < optionIds.length; i++) {

413:      for (uint256 i = 0; i < strikes.length; i++) {

```
*GitHub*: [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413)


### [G&#x2011;12] `++i`/`i++` should be `unchecked{++i}`/`unchecked{i++}` when it is not possible for them to overflow, as is the case when used in `for`- and `while`-loops
The `unchecked` keyword is new in solidity version 0.8.0, so this only applies to that version or higher, which these instances are. This saves **30-40 gas [per loop](https://gist.github.com/hrkrshnn/ee8fabd532058307229d65dcd5836ddc#the-increment-in-for-loop-post-condition-can-be-made-unchecked)**

*There are 12 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

147:      for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L147)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

120:      for (uint i = 0; i < positions_array.length; i++) {

```
*GitHub*: [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120)

```solidity
File: contracts/core/RdpxV2Core.sol

167:      for (uint256 i = 0; i < tokens.length; i++) {

246:      for (uint256 i = 1; i < reserveAsset.length; i++) {

775:      for (uint256 i = 0; i < optionIds.length; i++) {

836:      for (uint256 i = 0; i < _amounts.length; i++) {

996:      for (uint256 i = 1; i < reserveAsset.length; i++) {

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167), [246](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L246), [775](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L775), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836), [996](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L996)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103:      for (uint256 i = 0; i < tokens.length; i++) {

156:      for (uint256 i; i < ownerTokenCount; i++) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103), [156](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L156)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

225:      for (uint256 i = 0; i < tokens.length; i++) {

328:      for (uint256 i = 0; i < optionIds.length; i++) {

413:      for (uint256 i = 0; i < strikes.length; i++) {

```
*GitHub*: [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413)


### [G&#x2011;13] `require()`/`revert()` strings longer than 32 bytes cost extra gas
Each extra memory word of bytes past the original 32 [incurs an MSTORE](https://gist.github.com/hrkrshnn/ee8fabd532058307229d65dcd5836ddc#consider-having-short-revert-strings) which costs **3 gas**

*There are 13 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

83        require(
84          _tokenA != address(0) &&
85            _tokenB != address(0) &&
86            _pair != address(0) &&
87            _rdpxV2Core != address(0) &&
88            _rdpxOracle != address(0) &&
89            _ammFactory != address(0) &&
90            _ammRouter != address(0),
91          "reLPContract: address cannot be 0"
92:       );

112       require(
113         _slippageTolerance > 0,
114         "reLPContract: slippage tolerance must be greater than 0"
115:      );

132:      require(_spender != address(0), "reLPContract: spender cannot be 0");

133:      require(_amount > 0, "reLPContract: amount must be greater than 0");

```
*GitHub*: [83](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L83-L92), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L112-L115), [132](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L132), [133](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L133)

```solidity
File: contracts/core/RdpxV2Core.sol

244:      require(_asset != address(0), "RdpxV2Core: asset cannot be 0 address");

```
*GitHub*: [244](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L244)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

191       require(
192         collateral.balanceOf(address(this)) >= _totalCollateral + proceeds,
193         "Not enough collateral token was sent"
194:      );

200       require(
201         collateral.balanceOf(address(this)) == _totalCollateral - loss,
202         "Not enough collateral was sent out"
203:      );

287       require(
288         assets <= totalAvailableCollateral(),
289         "Not enough available assets to satisfy withdrawal"
290:      );

296       require(
297         msg.sender == address(perpetualAtlanticVault),
298         "Only the perp vault can call this function"
299:      );

```
*GitHub*: [191](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L191-L194), [200](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L200-L203), [287](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L287-L290), [296](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L296-L299)

```solidity
File: contracts/reLP/ReLPContract.sol

93        require(
94          _reLPFactor > 0,
95          "reLPContract: reLP factor must be greater than 0"
96:       );

126       require(
127         _tokenA != address(0) &&
128           _tokenB != address(0) &&
129           _pair != address(0) &&
130           _rdpxV2Core != address(0) &&
131           _tokenAReserve != address(0) &&
132           _amo != address(0) &&
133           _rdpxOracle != address(0) &&
134           _ammFactory != address(0) &&
135           _ammRouter != address(0),
136         "reLPContract: address cannot be 0"
137:      );

174       require(
175         _liquiditySlippageTolerance > 0,
176         "reLPContract: liquidity slippage tolerance must be greater than 0"
177:      );

189       require(
190         _slippageTolerance > 0,
191         "reLPContract: slippage tolerance must be greater than 0"
192:      );

```
*GitHub*: [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L93-L96), [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L126-L137), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L174-L177), [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L189-L192)


### [G&#x2011;14] Optimize names to save gas
`public`/`external` function names and `public` member variable names can be optimized to save gas. See [this](https://gist.github.com/IllIllI000/a5d8b486a8259f9f77891a919febd1a9) link for an example of how it works. Below are the interfaces/abstract contracts that can be optimized so that the most frequently-called functions use the least amount of gas possible during method lookup. Method IDs that have two leading zero bytes can save **128 gas** each during deployment, and renaming functions to have lower method IDs will save **22 gas** per call, [per sorted position shifted](https://medium.com/joyso/solidity-how-does-function-name-affect-gas-consumption-in-smart-contract-47d270d8ac92)

*There are 8 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit setAddresses(), setSlippageTolerance(), approveContractToSpend(), emergencyWithdraw(), addLiquidity(), removeLiquidity(), swap(), sync(), getLpTokenBalanceInWeth(), getLpPrice()
22:   contract UniV2LiquidityAMO is AccessControl {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L22)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit read(), uniswapPool()
22:   abstract contract OracleLike {

/// @audit liquidityInPool(), numPositions(), collectFees(), approveTarget(), addLiquidity(), removeLiquidity(), swap(), recoverERC721(), execute()
28:   contract UniV3LiquidityAMO is AccessControl, ERC721Holder {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L22), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L28)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit emergencyWithdraw(), setRdpxBurnPercentage(), setRdpxFeePercentage(), setIsreLP(), setPutOptionsRequired(), setBondMaturity(), addAssetTotokenReserves(), removeAssetFromtokenReserves(), setAddresses(), setPricingOracleAddresses(), addAMOAddress(), removeAMOAddress(), approveContractToSpend(), addToContractWhitelist(), removeFromContractWhitelist(), setBondDiscount(), setSlippageTolerance(), settle(), provideFunding(), bondWithDelegate(), bond(), addToDelegate(), sync(), redeem(), upperDepeg(), lowerDepeg(), getReserveTokenInfo(), calculateBondCost(), getLpPrice(), getDpxEthPrice(), getEthPrice(), getRdpxPrice(), getDelegatesLength(), getDelegatePosition()
33:   contract RdpxV2Core is

```
*GitHub*: [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L33)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit emergencyWithdraw(), decreaseAmount(), getBondsOwned()
18:   contract RdpxDecayingBonds is

```
*GitHub*: [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L18)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit addToContractWhitelist(), removeFromContractWhitelist(), setAddresses(), emergencyWithdraw(), updateFundingDuration(), setLpAllowance(), purchase(), settle(), payFunding(), calculateFunding(), updateFundingPaymentPointer(), updateFunding(), getUnderlyingPrice(), getVolatility(), calculatePremium(), calculatePnl(), nextFundingPaymentTimestamp(), roundUp()
28:   contract PerpetualAtlanticVault is

```
*GitHub*: [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L28)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit lockCollateral(), unlockLiquidity(), addProceeds(), subtractLoss(), addRdpx(), activeCollateral(), totalCollateral(), rdpxCollateral(), totalAvailableCollateral(), redeemPreview()
21:   contract PerpetualAtlanticVaultLP is ERC20, IPerpetualAtlanticVaultLP {

```
*GitHub*: [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L21)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit setreLpFactor(), setAddresses(), setLiquiditySlippageTolerance(), setSlippageTolerance(), reLP()
25:   contract ReLPContract is AccessControl {

```
*GitHub*: [25](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L25)

</details>

### [G&#x2011;15] `++i` costs less gas than `i++`, especially when it's used in `for`-loops (`--i`/`i--` too)
Saves **5 gas per loop**

*There are 12 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

147:      for (uint256 i = 0; i < tokens.length; i++) {

```
*GitHub*: [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L147)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

120:      for (uint i = 0; i < positions_array.length; i++) {

```
*GitHub*: [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120)

```solidity
File: contracts/core/RdpxV2Core.sol

167:      for (uint256 i = 0; i < tokens.length; i++) {

246:      for (uint256 i = 1; i < reserveAsset.length; i++) {

775:      for (uint256 i = 0; i < optionIds.length; i++) {

836:      for (uint256 i = 0; i < _amounts.length; i++) {

996:      for (uint256 i = 1; i < reserveAsset.length; i++) {

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167), [246](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L246), [775](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L775), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836), [996](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L996)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103:      for (uint256 i = 0; i < tokens.length; i++) {

156:      for (uint256 i; i < ownerTokenCount; i++) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103), [156](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L156)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

225:      for (uint256 i = 0; i < tokens.length; i++) {

328:      for (uint256 i = 0; i < optionIds.length; i++) {

413:      for (uint256 i = 0; i < strikes.length; i++) {

```
*GitHub*: [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413)


### [G&#x2011;16] Splitting `require()` statements that use `&&` saves gas
See [this issue](https://github.com/code-423n4/2022-01-xdefi-findings/issues/128) which describes the fact that there is a larger deployment gas cost, but with enough runtime calls, the change ends up being cheaper by **3 gas**

*There are 2 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

83        require(
84          _tokenA != address(0) &&
85            _tokenB != address(0) &&
86            _pair != address(0) &&
87            _rdpxV2Core != address(0) &&
88            _rdpxOracle != address(0) &&
89            _ammFactory != address(0) &&
90            _ammRouter != address(0),
91          "reLPContract: address cannot be 0"
92:       );

```
*GitHub*: [83](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L83-L92)

```solidity
File: contracts/reLP/ReLPContract.sol

126       require(
127         _tokenA != address(0) &&
128           _tokenB != address(0) &&
129           _pair != address(0) &&
130           _rdpxV2Core != address(0) &&
131           _tokenAReserve != address(0) &&
132           _amo != address(0) &&
133           _rdpxOracle != address(0) &&
134           _ammFactory != address(0) &&
135           _ammRouter != address(0),
136         "reLPContract: address cannot be 0"
137:      );

```
*GitHub*: [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L126-L137)


### [G&#x2011;17] Using `private` rather than `public` for constants, saves gas
If needed, the values can be read from the verified contract source code, or if there are multiple values there can be a single getter function that [returns a tuple](https://github.com/code-423n4/2022-08-frax/blob/90f55a9ce4e25bceed3a74290b854341d8de6afa/src/contracts/FraxlendPair.sol#L156-L178) of the values of all currently-public constants. Saves **3406-3606 gas** in deployment gas due to the compiler not having to create non-payable getter functions for deployment calldata, not having to store the bytes of the value outside of where it's used, and not adding another entry to the method ID table

*There are 14 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

48:     uint256 public constant DEFAULT_PRECISION = 1e8;

```
*GitHub*: [48](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L48)

```solidity
File: contracts/core/RdpxV2Bond.sol

22:     bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L22)

```solidity
File: contracts/core/RdpxV2Core.sol

85:     uint256 public constant DEFAULT_PRECISION = 1e8;

88:     uint256 public constant RDPX_RATIO_PERCENTAGE = 25 * DEFAULT_PRECISION;

91:     uint256 public constant ETH_RATIO_PERCENTAGE = 75 * DEFAULT_PRECISION;

```
*GitHub*: [85](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L85), [88](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L88), [91](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L91)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

31:     bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

34:     bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [31](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L31), [34](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L34)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

19:     bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

20:     bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

21:     bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

```
*GitHub*: [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L21)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

45:     bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

48:     bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L45), [48](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L48)

```solidity
File: contracts/reLP/ReLPContract.sol

67:     uint256 public constant DEFAULT_PRECISION = 1e8;

70:     bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [67](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L67), [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L70)

</details>

### [G&#x2011;18] Don't compare boolean expressions to boolean literals
`if (<x> == true)` => `if (<x>)`, `if (<x> == false)` => `if (!<x>)`

*There is one instance of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

798:      _validate(fundingPaidFor[pointer] == false, 16);

```
*GitHub*: [798](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L798)


### [G&#x2011;19] Don't use `SafeMath` once the solidity version is 0.8.0 or greater
Version 0.8.0 introduces internal overflow checks, so using `SafeMath` is redundant and adds overhead

*There are 3 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

6:    import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

```
*GitHub*: [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L6)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

7:    import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

```
*GitHub*: [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L7)

```solidity
File: contracts/reLP/ReLPContract.sol

6:    import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

```
*GitHub*: [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L6)


### [G&#x2011;20] Use custom errors rather than `revert()`/`require()` strings to save gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

*There are 21 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

83        require(
84          _tokenA != address(0) &&
85            _tokenB != address(0) &&
86            _pair != address(0) &&
87            _rdpxV2Core != address(0) &&
88            _rdpxOracle != address(0) &&
89            _ammFactory != address(0) &&
90            _ammRouter != address(0),
91          "reLPContract: address cannot be 0"
92:       );

112       require(
113         _slippageTolerance > 0,
114         "reLPContract: slippage tolerance must be greater than 0"
115:      );

131:      require(_token != address(0), "reLPContract: token cannot be 0");

132:      require(_spender != address(0), "reLPContract: spender cannot be 0");

133:      require(_amount > 0, "reLPContract: amount must be greater than 0");

```
*GitHub*: [83](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L83-L92), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L112-L115), [131](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L131), [132](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L132), [133](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L133)

```solidity
File: contracts/core/RdpxV2Core.sol

244:      require(_asset != address(0), "RdpxV2Core: asset cannot be 0 address");

247         require(
248           reserveAsset[i].tokenAddress != _asset,
249           "RdpxV2Core: asset already exists"
250:        );

```
*GitHub*: [244](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L244), [247](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L247-L250)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

99:         require(success, "RdpxReserve: transfer failed");

120:      require(hasRole(MINTER_ROLE, msg.sender), "Caller is not a minter");

```
*GitHub*: [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L99), [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L120)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

94        require(
95          _perpetualAtlanticVault != address(0) || _rdpx != address(0),
96          "ZERO_ADDRESS"
97:       );

123:      require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");

162:      require(assets != 0, "ZERO_ASSETS");

191       require(
192         collateral.balanceOf(address(this)) >= _totalCollateral + proceeds,
193         "Not enough collateral token was sent"
194:      );

200       require(
201         collateral.balanceOf(address(this)) == _totalCollateral - loss,
202         "Not enough collateral was sent out"
203:      );

209       require(
210         IERC20WithBurn(rdpx).balanceOf(address(this)) >= _rdpxCollateral + amount,
211         "Not enough rdpx token was sent"
212:      );

287       require(
288         assets <= totalAvailableCollateral(),
289         "Not enough available assets to satisfy withdrawal"
290:      );

296       require(
297         msg.sender == address(perpetualAtlanticVault),
298         "Only the perp vault can call this function"
299:      );

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L94-L97), [123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L123), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L162), [191](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L191-L194), [200](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L200-L203), [209](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L209-L212), [287](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L287-L290), [296](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L296-L299)

```solidity
File: contracts/reLP/ReLPContract.sol

93        require(
94          _reLPFactor > 0,
95          "reLPContract: reLP factor must be greater than 0"
96:       );

126       require(
127         _tokenA != address(0) &&
128           _tokenB != address(0) &&
129           _pair != address(0) &&
130           _rdpxV2Core != address(0) &&
131           _tokenAReserve != address(0) &&
132           _amo != address(0) &&
133           _rdpxOracle != address(0) &&
134           _ammFactory != address(0) &&
135           _ammRouter != address(0),
136         "reLPContract: address cannot be 0"
137:      );

174       require(
175         _liquiditySlippageTolerance > 0,
176         "reLPContract: liquidity slippage tolerance must be greater than 0"
177:      );

189       require(
190         _slippageTolerance > 0,
191         "reLPContract: slippage tolerance must be greater than 0"
192:      );

```
*GitHub*: [93](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L93-L96), [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L126-L137), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L174-L177), [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L189-L192)


### [G&#x2011;21] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided. The extra opcodes avoided are 
`CALLVALUE`(2),`DUP1`(3),`ISZERO`(3),`PUSH2`(3),`JUMPI`(10),`PUSH1`(3),`DUP1`(3),`REVERT`(0),`JUMPDEST`(1),`POP`(2), which costs an average of about **21 gas per call** to the function, in addition to the extra deployment cost

*There are 72 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

74      function setAddresses(
75        address _tokenA,
76        address _tokenB,
77        address _pair,
78        address _rdpxV2Core,
79        address _rdpxOracle,
80        address _ammFactory,
81        address _ammRouter
82:     ) external onlyRole(DEFAULT_ADMIN_ROLE) {

109     function setSlippageTolerance(
110       uint256 _slippageTolerance
111:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

126     function approveContractToSpend(
127       address _token,
128       address _spender,
129       uint256 _amount
130:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

142     function emergencyWithdraw(
143       address[] calldata tokens
144:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

189     function addLiquidity(
190       uint256 tokenAAmount,
191       uint256 tokenBAmount,
192       uint256 tokenAAmountMin,
193       uint256 tokenBAmountMin
194     )
195       external
196       onlyRole(DEFAULT_ADMIN_ROLE)
197:      returns (uint256 tokenAUsed, uint256 tokenBUsed, uint256 lpReceived)

258     function removeLiquidity(
259       uint256 lpAmount,
260       uint256 tokenAAmountMin,
261       uint256 tokenBAmountMin
262     )
263       external
264       onlyRole(DEFAULT_ADMIN_ROLE)
265:      returns (uint256 tokenAReceived, uint256 tokenBReceived)

304     function swap(
305       uint256 token1Amount,
306       uint256 token2AmountOutMin,
307       bool swapTokenAForTokenB
308:    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 token2Amount) {

```
*GitHub*: [74](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L74-L82), [109](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L109-L111), [126](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L126-L130), [142](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L142-L144), [189](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L189-L197), [258](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L258-L265), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L304-L308)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

119:    function collectFees() external onlyRole(DEFAULT_ADMIN_ROLE) {

139     function approveTarget(
140       address _target,
141       address _token,
142       uint256 _amount,
143       bool use_safe_approve
144:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

155     function addLiquidity(
156       AddLiquidityParams memory params
157:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

213     function removeLiquidity(
214       uint256 positionIndex,
215       uint256 minAmount0,
216       uint256 minAmount1
217:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

274     function swap(
275       address _tokenA,
276       address _tokenB,
277       uint24 _fee_tier,
278       uint256 _amountAtoB,
279       uint256 _amountOutMinimum,
280       uint160 _sqrtPriceLimitX96
281:    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {

313     function recoverERC20(
314       address tokenAddress,
315       uint256 tokenAmount
316:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

324     function recoverERC721(
325       address tokenAddress,
326       uint256 token_id
327:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

339     function execute(
340       address _to,
341       uint256 _value,
342       bytes calldata _data
343:    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (bool, bytes memory) {

```
*GitHub*: [119](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L119), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L139-L144), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L157), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L217), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L281), [313](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L313-L316), [324](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L324-L327), [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L339-L343)

```solidity
File: contracts/core/RdpxV2Bond.sol

29:     function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {

33:     function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {

37      function mint(
38        address to
39:     ) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L39)

```solidity
File: contracts/core/RdpxV2Core.sol

144:    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {

152:    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {

161     function emergencyWithdraw(
162       address[] calldata tokens
163:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

180     function setRdpxBurnPercentage(
181       uint256 _rdpxBurnPercentage
182:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

193     function setRdpxFeePercentage(
194       uint256 _rdpxFeePercentage
195:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

206:    function setIsreLP(bool _isReLPActive) external onlyRole(DEFAULT_ADMIN_ROLE) {

216     function setPutOptionsRequired(
217       bool _putOptionsRequired
218:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

228     function setBondMaturity(
229       uint256 _bondMaturity
230:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

240     function addAssetTotokenReserves(
241       address _asset,
242       string memory _assetSymbol
243:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

270     function removeAssetFromtokenReserves(
271       string memory _assetSymbol
272:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

304     function setAddresses(
305       address _dopexAMMRouter,
306       address _dpxEthCurvePool,
307       address _rdpxDecayingBonds,
308       address _perpetualAtlanticVault,
309       address _perpetualAtlanticVaultLP,
310       address _rdpxReserve,
311       address _rdpxV2ReceiptToken,
312       address _feeDistributor,
313       address _reLPContract,
314       address _receiptTokenBonds
315:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

358     function setPricingOracleAddresses(
359       address _rdpxPriceOracle,
360       address _dpxEthPriceOracle
361:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

378:    function addAMOAddress(address _addr) external onlyRole(DEFAULT_ADMIN_ROLE) {

388     function removeAMOAddress(
389       uint256 _index
390:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

403     function approveContractToSpend(
404       address _token,
405       address _spender,
406       uint256 _amount
407:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

419     function addToContractWhitelist(
420       address _addr
421:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

430     function removeFromContractWhitelist(
431       address _addr
432:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

441     function setBondDiscount(
442       uint256 _bondDiscountFactor
443:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

455     function setSlippageTolerance(
456       uint256 _slippageTolerance
457:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

764     function settle(
765       uint256[] memory optionIds
766     )
767       external
768       onlyRole(DEFAULT_ADMIN_ROLE)
769:      returns (uint256 amountOfWeth, uint256 rdpxAmount)

790     function provideFunding()
791       external
792       onlyRole(DEFAULT_ADMIN_ROLE)
793:      returns (uint256 fundingAmount)

1051    function upperDepeg(
1052      uint256 _amount,
1053      uint256 minOut
1054:   ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 wethReceived) {

1080    function lowerDepeg(
1081      uint256 _rdpxAmount,
1082      uint256 _wethAmount,
1083      uint256 minamountOfWeth,
1084      uint256 minOut
1085:   ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256 dpxEthReceived) {

```
*GitHub*: [144](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L144), [152](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L152), [161](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L161-L163), [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L180-L182), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L193-L195), [206](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L206), [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L216-L218), [228](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L228-L230), [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L240-L243), [270](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L270-L272), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L304-L315), [358](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L358-L361), [378](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L378), [388](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L388-L390), [403](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L403-L407), [419](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L419-L421), [430](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L430-L432), [441](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L441-L443), [455](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L455-L457), [764](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L764-L769), [790](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L790-L793), [1051](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1051-L1054), [1080](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1080-L1085)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

70:     function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {

76:     function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {

89      function emergencyWithdraw(
90        address[] calldata tokens,
91        bool transferNative,
92        address payable to,
93        uint256 amount,
94        uint256 gas
95:     ) external onlyRole(DEFAULT_ADMIN_ROLE) {

114     function mint(
115       address to,
116       uint256 expiry,
117       uint256 rdpxAmount
118:    ) external onlyRole(MINTER_ROLE) {

139     function decreaseAmount(
140       uint256 bondId,
141       uint256 amount
142:    ) public onlyRole(RDPXV2CORE_ROLE) {

```
*GitHub*: [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L70), [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L76), [89](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L89-L95), [114](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L114-L118), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L139-L142)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

29:     function pause() public onlyRole(PAUSER_ROLE) {

33:     function unpause() public onlyRole(PAUSER_ROLE) {

37:     function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {

41      function burn(
42        uint256 _amount
43:     ) public override(ERC20Burnable, IDpxEthToken) onlyRole(BURNER_ROLE) {

47      function burnFrom(
48        address account,
49        uint256 amount
50:     ) public override onlyRole(BURNER_ROLE) {

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L37), [41](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L41-L43), [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L47-L50)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

136:    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {

144:    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {

153     function addToContractWhitelist(
154       address _contract
155:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

164     function removeFromContractWhitelist(
165       address _contract
166:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

181     function setAddresses(
182       address _optionPricing,
183       address _assetPriceOracle,
184       address _volatilityOracle,
185       address _feeDistributor,
186       address _rdpx,
187       address _perpetualAtlanticVaultLP,
188       address _rdpxV2Core
189:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

219     function emergencyWithdraw(
220       address[] calldata tokens
221:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

237     function updateFundingDuration(
238       uint256 _fundingDuration
239:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

243:    function setLpAllowance(bool increase) external onlyRole(DEFAULT_ADMIN_ROLE) {

255     function purchase(
256       uint256 amount,
257       address to
258     )
259       external
260       nonReentrant
261       onlyRole(RDPXV2CORE_ROLE)
262:      returns (uint256 premium, uint256 tokenId)

315     function settle(
316       uint256[] memory optionIds
317     )
318       external
319       nonReentrant
320       onlyRole(RDPXV2CORE_ROLE)
321:      returns (uint256 ethAmount, uint256 rdpxAmount)

372:    function payFunding() external onlyRole(RDPXV2CORE_ROLE) returns (uint256) {

```
*GitHub*: [136](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L136), [144](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L144), [153](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L153-L155), [164](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L164-L166), [181](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L181-L189), [219](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L219-L221), [237](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L237-L239), [243](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L243), [255](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L255-L262), [315](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L315-L321), [372](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L372)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

180:    function lockCollateral(uint256 amount) public onlyPerpVault {

185:    function unlockLiquidity(uint256 amount) public onlyPerpVault {

190:    function addProceeds(uint256 proceeds) public onlyPerpVault {

199:    function subtractLoss(uint256 loss) public onlyPerpVault {

208:    function addRdpx(uint256 amount) public onlyPerpVault {

```
*GitHub*: [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L180), [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L185), [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L190), [199](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L199), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L208)

```solidity
File: contracts/reLP/ReLPContract.sol

90      function setreLpFactor(
91        uint256 _reLPFactor
92:     ) external onlyRole(DEFAULT_ADMIN_ROLE) {

115     function setAddresses(
116       address _tokenA,
117       address _tokenB,
118       address _pair,
119       address _rdpxV2Core,
120       address _tokenAReserve,
121       address _amo,
122       address _rdpxOracle,
123       address _ammFactory,
124       address _ammRouter
125:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

171     function setLiquiditySlippageTolerance(
172       uint256 _liquiditySlippageTolerance
173:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

186     function setSlippageTolerance(
187       uint256 _slippageTolerance
188:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {

202:    function reLP(uint256 _amount) external onlyRole(RDPXV2CORE_ROLE) {

```
*GitHub*: [90](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L90-L92), [115](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L115-L125), [171](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L171-L173), [186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L186-L188), [202](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L202)

</details>

### [G&#x2011;22] Constructors can be marked `payable`
Payable functions cost less gas to execute, since the compiler does not have to add extra checks to ensure that a payment wasn't provided. A constructor can safely be marked as payable, since only the deployer would be able to pass funds, and the project itself would not pass any funds.

*There are 9 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

57      constructor() {
58:       _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

```
*GitHub*: [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L57-L58)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

76:     constructor(address _rdpx, address _rdpxV2Core) {

```
*GitHub*: [76](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L76)

```solidity
File: contracts/core/RdpxV2Bond.sol

24:     constructor() ERC721("rDPX V2 Bond", "rDPXV2Bond") {

```
*GitHub*: [24](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L24)

```solidity
File: contracts/core/RdpxV2Core.sol

124:    constructor(address _weth) {

```
*GitHub*: [124](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L124)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

56      constructor(
57        string memory _name,
58        string memory _symbol
59:     ) ERC721(_name, _symbol) {

```
*GitHub*: [56](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L56-L59)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

23:     constructor() ERC20("Dopex Synthetic ETH", "dpxETH") {

```
*GitHub*: [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L23)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

113     constructor(
114       string memory _name,
115       string memory _symbol,
116       address _collateralToken,
117       uint256 _gensis
118:    ) ERC721(_name, _symbol) {

```
*GitHub*: [113](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L113-L118)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

81      constructor(
82        address _perpetualAtlanticVault,
83        address _rdpxRdpxV2Core,
84        address _collateral,
85        address _rdpx,
86        string memory _collateralSymbol
87      )
88        ERC20(
89          "PerpetualAtlanticVault LP Token",
90          _collateralSymbol,
91          ERC20(_collateral).decimals()
92:       )

```
*GitHub*: [81](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L81-L92)

```solidity
File: contracts/reLP/ReLPContract.sol

79      constructor() {
80:       _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

```
*GitHub*: [79](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L79-L80)

</details>

### [G&#x2011;23] Don't use `_msgSender()` if not supporting EIP-2771
Use `msg.sender` if the code does not implement [EIP-2771 trusted forwarder](https://eips.ethereum.org/EIPS/eip-2771) support

*There are 2 instances of this issue:*

```solidity
File: contracts/dpxETH/DpxEthToken.sol

44:       _burn(_msgSender(), _amount);

51:       _spendAllowance(account, _msgSender(), amount);

```
*GitHub*: [44](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L44), [51](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L51)


### [G&#x2011;24] Use assembly to emit events, in order to save gas
Using the [scratch space](https://github.com/Vectorized/solady/blob/30558f5402f02351b96eeb6eaf32bcea29773841/src/tokens/ERC1155.sol#L501-L504) for event arguments (two words or fewer) will save gas over needing Solidity's full abi memory expansion used for emitting normally.

*There are 26 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

152:     emit LogEmergencyWithdraw(msg.sender, tokens);

```
*GitHub*: [152](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L152-L152)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

268:     emit log(positions_array.length);

269:     emit log(positions_mapping[pos.token_id].token_id);

321:     emit RecoveredERC20(tokenAddress, tokenAmount);

335:     emit RecoveredERC721(tokenAddress, token_id);

```
*GitHub*: [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L268-L268), [269](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L269-L269), [321](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L321-L321), [335](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L335-L335)

```solidity
File: contracts/core/RdpxV2Core.sol

172:     emit LogEmergencyWithdraw(msg.sender, tokens);

185:     emit LogSetRdpxBurnPercentage(_rdpxBurnPercentage);

198:     emit LogSetRdpxFeePercentage(_rdpxFeePercentage);

208:     emit LogSetIsReLPActive(_isReLPActive);

220:     emit LogSetputOptionsRequired(_putOptionsRequired);

233:     emit LogSetBondMaturity(_bondMaturity);

263:     emit LogAssetAddedTotokenReserves(_asset, _assetSymbol);

289:     emit LogAssetRemovedFromtokenReserves(_assetSymbol, index);

349:     emit LogSetAddresses(addresses);

370:     emit LogSetPricingOracleAddresses(pricingOracleAddresses);

447:     emit LogSetBondDiscountFactor(_bondDiscountFactor);

461:     emit LogSetSlippageTolerance(_slippageTolerance);

782:     emit LogSettle(optionIds);

807:     emit LogProvideFunding(pointer, fundingAmount);

989:     emit LogDelegateWithdraw(delegateId, amountWithdrawn);

1041:    emit LogRedeem(to, receiptTokenAmount);

1069:    emit LogUpperDepeg(_amount, wethReceived);

```
*GitHub*: [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L172-L172), [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L185-L185), [198](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L198-L198), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L208-L208), [220](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L220-L220), [233](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L233-L233), [263](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L263-L263), [289](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L289-L289), [349](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L349-L349), [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L370-L370), [447](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L447-L447), [461](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L461-L461), [782](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L782-L782), [807](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L807-L807), [989](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L989-L989), [1041](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1041-L1041), [1069](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1069-L1069)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

211:     emit AddressesSet(addresses);

230:     emit EmergencyWithdraw(msg.sender, tokens);

494:       emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);

```
*GitHub*: [211](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L211-L211), [230](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L230-L230), [494](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L494-L494)

```solidity
File: contracts/reLP/ReLPContract.sol

99:      emit LogSetReLpFactor(_reLPFactor);

```
*GitHub*: [99](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L99-L99)


### [G&#x2011;25] Use assembly for small keccak256 hashes, in order to save gas
If the arguments to the encode call can fit into the scratch space (two words or fewer), then it's more efficient to use assembly to generate the hash (**80 gas**):
`keccak256(abi.encodePacked(x, y))` -> `assembly {mstore(0x00, a); mstore(0x20, b); let hash := keccak256(0x00, 0x40); }`

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

1141:      keccak256(abi.encodePacked(asset.tokenSymbol)) ==

1142:        keccak256(abi.encodePacked(_token)),

```
*GitHub*: [1141](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1141-L1141), [1142](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1142-L1142)


### [G&#x2011;26] Avoid fetching a low-level call's return data by using assembly
Even if you don't assign the call's second return value, it still gets copied to memory. Use assembly instead to prevent this and save **159 [gas](https://gist.github.com/IllIllI000/0e18a40f3afb0b83f9a347b10ee89ad2)**:

`(bool success,) = payable(receiver).call{gas: gas, value: value}("");` -> `bool success; assembly { success := call(gas, receiver, value, 0, 0, 0, 0) }`

*There is one instance of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

98:        (bool success, ) = to.call{ value: amount, gas: gas }("");

```
*GitHub*: [98](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L98-L98)


### [G&#x2011;27] Division by powers of two should use bit shifting
`<x> / 2` is the same as `<x> >> 1`. While the compiler uses the `SHR` opcode to accomplish both, the version that uses division incurs an overhead of [**20 gas**](https://gist.github.com/IllIllI000/ec0e4e6c4f52a6bca158f137a3afd4ff) due to `JUMP`s to and from a compiler utility function that introduces checks which can be avoided by using `unchecked {}` around the division by two.

*There are 13 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

539:           dpxEthBalance + _amount <= (ethBalance + dpxEthBalance) / 2,

535:           ethBalance + _amount <= (ethBalance + dpxEthBalance) / 2,

570:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= _amount / 2;

574:       _amount / 2

579:       .deposit(_amount / 2);

1170:        ((RDPX_RATIO_PERCENTAGE - (bondDiscount / 2)) *

1176:        ((ETH_RATIO_PERCENTAGE - (bondDiscount / 2)) * _amount) /

1190:      .roundUp(rdpxPrice - (rdpxPrice / 4)); // 25% below the current price

```
*GitHub*: [539](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L539-L539), [535](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L535-L535), [570](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L570-L570), [574](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L574-L574), [579](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L579-L579), [1170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1170-L1170), [1176](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1176-L1176), [1190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1190-L1190)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

270:     uint256 strike = roundUp(currentPrice - (currentPrice / 4)); // 25% below the current price

```
*GitHub*: [270](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L270-L270)

```solidity
File: contracts/reLP/ReLPContract.sol

274:       (((amountB / 2) * tokenAInfo.tokenAPrice) / 1e8) -

275:       (((amountB / 2) * tokenAInfo.tokenAPrice * slippageTolerance) / 1e16);

279:         amountB / 2,

290:       amountB / 2,

```
*GitHub*: [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L274-L274), [275](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L275-L275), [279](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L279-L279), [290](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L290-L290)


### [G&#x2011;28] Events should be emitted outside of loops
Emitting an event has an overhead of **375 gas**, which will be incurred on every iteration of the loop. It is cheaper to `emit` only [once](https://github.com/ethereum/EIPs/blob/adad5968fd6de29902174e0cb51c8fc3dceb9ab5/EIPS/eip-1155.md?plain=1#L68) after the loop has finished.

*There are 3 instances of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

451        emit CalculateFunding(
452          msg.sender,
453          amount,
454          strike,
455          premium,
456          latestFundingPaymentPointer
457:       );

485          emit FundingPaid(
486            msg.sender,
487            ((currentFundingRate * (nextFundingPaymentTimestamp() - startTime)) /
488              1e18),
489            latestFundingPaymentPointer
490:         );

494:       emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);

```
*GitHub*: [451](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L451-L457), [485](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L485-L490), [494](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L494-L494)


### [G&#x2011;29] `internal` functions not called by the contract should be removed to save deployment gas
If the functions are required by an interface, the contract should inherit from that interface and use the `override` keyword

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

45     function _beforeTokenTransfer(
46       address from,
47       address to,
48       uint256 tokenId,
49       uint256 batchSize
50:    ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [45](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L45-L50)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

162    function _beforeTokenTransfer(
163      address from,
164      address to,
165      uint256 tokenId,
166      uint256 batchSize
167:   ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L162-L167)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

55     function _beforeTokenTransfer(
56       address from,
57       address to,
58       uint256 amount
59:    ) internal override {

```
*GitHub*: [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L55-L59)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

635    function _beforeTokenTransfer(
636      address from,
637      address to,
638      uint256 tokenId,
639      uint256 batchSize
640:   ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L640)


### [G&#x2011;30] `>=` costs less gas than `>`
The compiler uses opcodes `GT` and `ISZERO` for solidity code that uses `>`, but only requires `LT` for `>=`, [which saves **3 gas**](https://gist.github.com/IllIllI000/3dc79d25acccfa16dee4e83ffdc6ffde). If `<` is being used, the condition can be inverted.

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

556:       minAmount > 0 ? minAmount : minOut

```
*GitHub*: [556](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L556-L556)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

547:       _price > 0 ? _price : getUnderlyingPrice(),

559:     return strike > price ? ((strike - price) * amount) / 1e8 : 0;

597:       if (lastUpdateTime > nextFundingPaymentTimestamp() - fundingDuration) {

```
*GitHub*: [547](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L547-L547), [559](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L559-L559), [597](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L597-L597)


### [G&#x2011;31] Avoid updating storage when the value hasn't changed
If the old value is equal to the new value, not re-storing the value will avoid a Gsreset (**2900 gas**), potentially at the expense of a Gcoldsload (**2100 gas**) or a Gwarmaccess (**100 gas**)

*There are 16 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

109    function setSlippageTolerance(
110      uint256 _slippageTolerance
111    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
112      require(
113        _slippageTolerance > 0,
114        "reLPContract: slippage tolerance must be greater than 0"
115      );
116      slippageTolerance = _slippageTolerance;
117:   }

258    function removeLiquidity(
259      uint256 lpAmount,
260      uint256 tokenAAmountMin,
261      uint256 tokenBAmountMin
262    )
263      external
264      onlyRole(DEFAULT_ADMIN_ROLE)
265      returns (uint256 tokenAReceived, uint256 tokenBReceived)
266    {
267      // approve the AMM Router
268      IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);
269  
270      // remove liquidity
271      (tokenAReceived, tokenBReceived) = IUniswapV2Router(addresses.ammRouter)
272        .removeLiquidity(
273          addresses.tokenA,
274          addresses.tokenB,
275          lpAmount,
276          tokenAAmountMin,
277          tokenBAmountMin,
278          address(this),
279          block.timestamp + 1
280        );
281  
282      // update LP token Balance
283      lpTokenBalance -= lpAmount;
284  
285      // send unused token A and token B back to rdpxV2Core
286      _sendTokensToRdpxV2Core();
287  
288      emit LogRemoveLiquidity(
289        msg.sender,
290        lpAmount,
291        tokenAAmountMin,
292        tokenBAmountMin,
293        tokenAReceived,
294        tokenBReceived
295      );
296:   }

```
*GitHub*: [109](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L109-L117), [258](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L258-L296)

```solidity
File: contracts/core/RdpxV2Core.sol

180    function setRdpxBurnPercentage(
181      uint256 _rdpxBurnPercentage
182    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
183      _validate(_rdpxBurnPercentage > 0, 3);
184      rdpxBurnPercentage = _rdpxBurnPercentage;
185      emit LogSetRdpxBurnPercentage(_rdpxBurnPercentage);
186:   }

193    function setRdpxFeePercentage(
194      uint256 _rdpxFeePercentage
195    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
196      _validate(_rdpxFeePercentage > 0, 3);
197      rdpxFeePercentage = _rdpxFeePercentage;
198      emit LogSetRdpxFeePercentage(_rdpxFeePercentage);
199:   }

206    function setIsreLP(bool _isReLPActive) external onlyRole(DEFAULT_ADMIN_ROLE) {
207      isReLPActive = _isReLPActive;
208      emit LogSetIsReLPActive(_isReLPActive);
209:   }

216    function setPutOptionsRequired(
217      bool _putOptionsRequired
218    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
219      putOptionsRequired = _putOptionsRequired;
220      emit LogSetputOptionsRequired(_putOptionsRequired);
221:   }

228    function setBondMaturity(
229      uint256 _bondMaturity
230    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
231      _validate(_bondMaturity > 0, 3);
232      bondMaturity = _bondMaturity;
233      emit LogSetBondMaturity(_bondMaturity);
234:   }

441    function setBondDiscount(
442      uint256 _bondDiscountFactor
443    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
444      _validate(_bondDiscountFactor > 0, 3);
445      bondDiscountFactor = _bondDiscountFactor;
446  
447      emit LogSetBondDiscountFactor(_bondDiscountFactor);
448:   }

455    function setSlippageTolerance(
456      uint256 _slippageTolerance
457    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
458      _validate(_slippageTolerance > 0, 3);
459      slippageTolerance = _slippageTolerance;
460  
461      emit LogSetSlippageTolerance(_slippageTolerance);
462:   }

941    function addToDelegate(
942      uint256 _amount,
943      uint256 _fee
944    ) external returns (uint256) {
945      _whenNotPaused();
946      // fee less than 100%
947      _validate(_fee < 100e8, 8);
948      // amount greater than 0.01 WETH
949      _validate(_amount > 1e16, 4);
950      // fee greater than 1%
951      _validate(_fee >= 1e8, 8);
952  
953      IERC20WithBurn(weth).safeTransferFrom(msg.sender, address(this), _amount);
954  
955      Delegate memory delegatePosition = Delegate({
956        amount: _amount,
957        fee: _fee,
958        owner: msg.sender,
959        activeCollateral: 0
960      });
961      delegates.push(delegatePosition);
962  
963      // add amount to total weth delegated
964      totalWethDelegated += _amount;
965  
966      emit LogAddToDelegate(_amount, _fee, delegates.length - 1);
967      return (delegates.length - 1);
968:   }

```
*GitHub*: [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L180-L186), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L193-L199), [206](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L206-L209), [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L216-L221), [228](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L228-L234), [441](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L441-L448), [455](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L455-L462), [941](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L941-L968)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

237    function updateFundingDuration(
238      uint256 _fundingDuration
239    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
240      fundingDuration = _fundingDuration;
241:   }

```
*GitHub*: [237](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L237-L241)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

190    function addProceeds(uint256 proceeds) public onlyPerpVault {
191      require(
192        collateral.balanceOf(address(this)) >= _totalCollateral + proceeds,
193        "Not enough collateral token was sent"
194      );
195      _totalCollateral += proceeds;
196:   }

208    function addRdpx(uint256 amount) public onlyPerpVault {
209      require(
210        IERC20WithBurn(rdpx).balanceOf(address(this)) >= _rdpxCollateral + amount,
211        "Not enough rdpx token was sent"
212      );
213      _rdpxCollateral += amount;
214:   }

```
*GitHub*: [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L190-L196), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L208-L214)

```solidity
File: contracts/reLP/ReLPContract.sol

90     function setreLpFactor(
91       uint256 _reLPFactor
92     ) external onlyRole(DEFAULT_ADMIN_ROLE) {
93       require(
94         _reLPFactor > 0,
95         "reLPContract: reLP factor must be greater than 0"
96       );
97       reLPFactor = _reLPFactor;
98   
99       emit LogSetReLpFactor(_reLPFactor);
100:   }

171    function setLiquiditySlippageTolerance(
172      uint256 _liquiditySlippageTolerance
173    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
174      require(
175        _liquiditySlippageTolerance > 0,
176        "reLPContract: liquidity slippage tolerance must be greater than 0"
177      );
178      liquiditySlippageTolerance = _liquiditySlippageTolerance;
179:   }

186    function setSlippageTolerance(
187      uint256 _slippageTolerance
188    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
189      require(
190        _slippageTolerance > 0,
191        "reLPContract: slippage tolerance must be greater than 0"
192      );
193      slippageTolerance = _slippageTolerance;
194:   }

```
*GitHub*: [90](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L90-L100), [171](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L171-L179), [186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L186-L194)


### [G&#x2011;32] `<x> += <y>` costs more gas than `<x> = <x> + <y>` for state variables
Using the addition operator instead of plus-equals saves **[113 gas](https://gist.github.com/IllIllI000/cbbfb267425b898e5be734d4008d4fe8)**

*There are 35 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

235:     lpTokenBalance += lpReceived;

283:     lpTokenBalance -= lpAmount;

```
*GitHub*: [235](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L235-L235), [283](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L283-L283)

```solidity
File: contracts/core/RdpxV2Core.sol

486:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= premium;

570:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= _amount / 2;

681        reserveAsset[reservesIndex["RDPX"]].tokenBalance +=
682          _rdpxAmount +
683:         extraRdpxToWithdraw;

650:       reserveAsset[reservesIndex["RDPX"]].tokenBalance += _rdpxAmount;

711:     reserveAsset[reservesIndex["WETH"]].tokenBalance += wethRequired;

717:     delegate.activeCollateral += wethRequired;

720:     totalWethDelegated -= wethRequired;

779:     reserveAsset[reservesIndex["WETH"]].tokenBalance += amountOfWeth;

780:     reserveAsset[reservesIndex["RDPX"]].tokenBalance -= rdpxAmount;

803:     reserveAsset[reservesIndex["WETH"]].tokenBalance -= fundingAmount;

916:     reserveAsset[reservesIndex["WETH"]].tokenBalance += wethRequired;

964:     totalWethDelegated += _amount;

1067:    reserveAsset[reservesIndex["WETH"]].tokenBalance += wethReceived;

1106:      reserveAsset[reservesIndex["RDPX"]].tokenBalance -= _rdpxAmount;

1110:    reserveAsset[reservesIndex["WETH"]].tokenBalance -= _wethAmount;

```
*GitHub*: [486](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L486-L486), [570](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L570-L570), [681](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L681-L683), [650](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L650-L650), [711](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L711-L711), [717](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L717-L717), [720](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L720-L720), [779](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L779-L779), [780](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L780-L780), [803](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L803-L803), [916](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L916-L916), [964](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L964-L964), [1067](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1067-L1067), [1106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1106-L1106), [1110](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1110-L1110)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

302:     totalActiveOptions += amount;

303:     fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;

304:     optionsPerStrike[strike] += amount;

307      fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
308        strike
309:     ] += amount;

337:       optionsPerStrike[strike] -= amount;

338:       totalActiveOptions -= amount;

440:       fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;

443        fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
444          strike
445:       ] += amount;

449:       totalFundingForEpoch[latestFundingPaymentPointer] += premium;

493:       latestFundingPaymentPointer += 1;

```
*GitHub*: [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L302-L302), [303](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L303-L303), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L304-L304), [307](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L307-L309), [337](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L337-L337), [338](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L338-L338), [440](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L440-L440), [443](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L443-L445), [449](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L449-L449), [493](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L493-L493)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

132:     _totalCollateral += assets;

164:     _rdpxCollateral -= rdpxAmount;

181:     _activeCollateral += amount;

186:     _activeCollateral -= amount;

195:     _totalCollateral += proceeds;

204:     _totalCollateral -= loss;

213:     _rdpxCollateral += amount;

291:     _totalCollateral -= assets;

```
*GitHub*: [132](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L132-L132), [164](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L164-L164), [181](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L181-L181), [186](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L186-L186), [195](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L195-L195), [204](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L204-L204), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L213-L213), [291](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L291-L291)


### [G&#x2011;33] State variable read in a loop
The state variable should be cached in a local variable rather than reading it on every iteration of the for-loop, which will replace each Gwarmaccess (**100 gas**) with a much cheaper stack read.

*There are 20 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit rdpxV2Core
125:           rdpxV2Core,

/// @audit positions_array
120:     for (uint i = 0; i < positions_array.length; i++) {

```
*GitHub*: [125](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L125-L125), [120](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L120-L120)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit reserveAsset
246:     for (uint256 i = 1; i < reserveAsset.length; i++) {

/// @audit putOptionsRequired
856:       if (putOptionsRequired) {

/// @audit weth
1001:      if (weth == reserveAsset[i].tokenAddress) {

/// @audit totalWethDelegated
1002:        balance = balance - totalWethDelegated;

/// @audit reserveAsset
996:     for (uint256 i = 1; i < reserveAsset.length; i++) {

```
*GitHub*: [246](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L246-L246), [856](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L856-L856), [1001](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1001-L1001), [1002](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1002-L1002), [996](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L996-L996)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit latestFundingPaymentPointer
416:         latestFundingPerStrike[strikes[i]] != latestFundingPaymentPointer,

/// @audit genesis
/// @audit latestFundingPaymentPointer
/// @audit fundingDuration
427:         (genesis + ((latestFundingPaymentPointer - 1) * fundingDuration));

/// @audit latestFundingPaymentPointer
456:         latestFundingPaymentPointer

/// @audit lastUpdateTime
464:       if (lastUpdateTime < nextFundingPaymentTimestamp()) {

/// @audit lastUpdateTime
467:         uint256 startTime = lastUpdateTime == 0

/// @audit lastUpdateTime
469:           : lastUpdateTime;

/// @audit fundingDuration
468:           ? (nextFundingPaymentTimestamp() - fundingDuration)

/// @audit addresses
474:           addresses.perpetualAtlanticVaultLP,

/// @audit addresses
479:         IPerpetualAtlanticVaultLP(addresses.perpetualAtlanticVaultLP)

/// @audit latestFundingPaymentPointer
489:           latestFundingPaymentPointer

/// @audit latestFundingPaymentPointer
494:       emit FundingPaymentPointerUpdated(latestFundingPaymentPointer);

```
*GitHub*: [416](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L416-L416), [427](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L427-L427), [427](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L427-L427), [427](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L427-L427), [456](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L456-L456), [464](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L464-L464), [467](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L467-L467), [469](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L469-L469), [468](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L468-L468), [474](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L474-L474), [479](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L479-L479), [489](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L489-L489), [494](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L494-L494)


### [G&#x2011;34] Using `bool`s for storage incurs overhead
```solidity
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.
```
https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27
Use `uint256(0)` and `uint256(1)` for true/false to avoid a Gwarmaccess (**[100 gas](https://gist.github.com/IllIllI000/1b70014db712f8572a72378321250058)**) for the extra SLOAD

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

79:    mapping(uint256 => bool) public optionsOwned;

82:    mapping(uint256 => bool) public fundingPaidFor;

115:   bool public isReLPActive;

118:   bool public putOptionsRequired;

```
*GitHub*: [79](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L79-L79), [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L82-L82), [115](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L115-L115), [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L118-L118)


### [G&#x2011;35] Use `uint256(1)`/`uint256(2)` instead of `true`/`false` to save gas for changes
Avoids a Gsset (**20000 gas**) when changing from `false` to `true`, after having been `true` in the past

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

79:    mapping(uint256 => bool) public optionsOwned;

82:    mapping(uint256 => bool) public fundingPaidFor;

115:   bool public isReLPActive;

118:   bool public putOptionsRequired;

```
*GitHub*: [79](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L79-L79), [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L82-L82), [115](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L115-L115), [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L118-L118)


### [G&#x2011;36] `unchecked {}`  can be used on the division of two `uint`s in order to save gas
The division cannot overflow, since both the numerator and the denominator are non-negative

*There are 13 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

608      amount1 = ((rdpxRequiredInWeth * _amount) /
609:       (rdpxRequiredInWeth + _wethRequired));

673        uint256 extraRdpxToWithdraw = (discountReceivedInWeth * 1e8) /
674:         getRdpxPrice();

1181         (RDPX_RATIO_PERCENTAGE * _amount * DEFAULT_PRECISION) /
1182:        (DEFAULT_PRECISION * rdpxPrice * 1e2);

1185         (ETH_RATIO_PERCENTAGE * _amount) /
1186:        (DEFAULT_PRECISION * 1e2);

1163       uint256 bondDiscount = (bondDiscountFactor *
1164         Math.sqrt(IRdpxReserve(addresses.rdpxReserve).rdpxReserve()) *
1165:        1e2) / (Math.sqrt(1e18)); // 1e8 precision

1170         ((RDPX_RATIO_PERCENTAGE - (bondDiscount / 2)) *
1171           _amount *
1172           DEFAULT_PRECISION) /
1173:        (DEFAULT_PRECISION * rdpxPrice * 1e2);

1176         ((ETH_RATIO_PERCENTAGE - (bondDiscount / 2)) * _amount) /
1177:        (DEFAULT_PRECISION * 1e2);

```
*GitHub*: [608](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L608-L609), [673](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L673-L674), [1181](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1181-L1182), [1185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1185-L1186), [1163](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1163-L1165), [1170](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1170-L1173), [1176](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1176-L1177)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

612:         ((amount * 1e18) / (endTime - startTime));

604          (amount * 1e18) /
605:         (endTime - startTime);

```
*GitHub*: [612](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L612-L612), [604](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L604-L605)

```solidity
File: contracts/reLP/ReLPContract.sol

228      uint256 baseReLpRatio = (reLPFactor *
229        Math.sqrt(tokenAInfo.tokenAReserve) *
230:       1e2) / (Math.sqrt(1e18)); // 1e6 precision

232      uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /
233        tokenAInfo.tokenAReserve) *
234        tokenAInfo.tokenALpReserve *
235:       baseReLpRatio) / (1e18 * DEFAULT_PRECISION * 1e2);

232      uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /
233:       tokenAInfo.tokenAReserve) *

239      uint256 lpToRemove = (tokenAToRemove * totalLpSupply) /
240:       tokenAInfo.tokenALpReserve;

```
*GitHub*: [228](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L228-L230), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L235), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L233), [239](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L239-L240)

## Disputed Issues

The issues below may be reported by other bots/wardens, but can be penalized/ignored since either the rule or the specified instances are invalid


### [D&#x2011;01] ~~`mint()`/`burn()` missing access control~~
The general rule is valid, but the instances below are invalid

*There are 2 instances of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

118    function deposit(
119      uint256 assets,
120      address receiver
121    ) public virtual returns (uint256 shares) {
122      // Check for rounding error since we round down in previewDeposit.
123      require((shares = previewDeposit(assets)) != 0, "ZERO_SHARES");
124  
125      perpetualAtlanticVault.updateFunding();
126  
127      // Need to transfer before minting or ERC777s could reenter.
128      collateral.transferFrom(msg.sender, address(this), assets);
129  
130      _mint(receiver, shares);
131  
132      _totalCollateral += assets;
133  
134      emit Deposit(msg.sender, receiver, assets, shares);
135:   }

145    function redeem(
146      uint256 shares,
147      address receiver,
148      address owner
149    ) public returns (uint256 assets, uint256 rdpxAmount) {
150      perpetualAtlanticVault.updateFunding();
151  
152      if (msg.sender != owner) {
153        uint256 allowed = allowance[owner][msg.sender]; // Saves gas for limited approvals.
154  
155        if (allowed != type(uint256).max) {
156          allowance[owner][msg.sender] = allowed - shares;
157        }
158      }
159      (assets, rdpxAmount) = redeemPreview(shares);
160  
161      // Check for rounding error since we round down in previewRedeem.
162      require(assets != 0, "ZERO_ASSETS");
163  
164      _rdpxCollateral -= rdpxAmount;
165  
166      beforeWithdraw(assets, shares);
167  
168      _burn(owner, shares);
169  
170      collateral.transfer(receiver, assets);
171  
172      IERC20WithBurn(rdpx).safeTransfer(receiver, rdpxAmount);
173  
174      emit Withdraw(msg.sender, receiver, owner, assets, shares);
175:   }

```
*GitHub*: [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L118-L135), [145](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L145-L175)


### [D&#x2011;02] ~~Return values of `approve()` not checked~~
The general rule is valid, but the instances below are invalid

*There are 8 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

339      IERC20WithBurn(weth).approve(
340        addresses.perpetualAtlanticVault,
341        type(uint256).max
342:     );

343:     IERC20WithBurn(weth).approve(addresses.dopexAMMRouter, type(uint256).max);

344:     IERC20WithBurn(weth).approve(addresses.dpxEthCurvePool, type(uint256).max);

345      IERC20WithBurn(weth).approve(
346        addresses.rdpxV2ReceiptToken,
347        type(uint256).max
348:     );

```
*GitHub*: [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L339-L342), [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L343-L343), [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L344-L344), [345](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L345-L348)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

249:       : collateralToken.approve(addresses.perpetualAtlanticVaultLP, 0);

245        ? collateralToken.approve(
246          addresses.perpetualAtlanticVaultLP,
247          type(uint256).max
248:       )

```
*GitHub*: [249](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L249-L249), [245](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L245-L248)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

106:     collateral.approve(_perpetualAtlanticVault, type(uint256).max);

107:     ERC20(rdpx).approve(_perpetualAtlanticVault, type(uint256).max);

```
*GitHub*: [106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L106-L106), [107](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L107-L107)


### [D&#x2011;03] ~~Some tokens may revert when zero value transfers are made~~
The general rule is valid, but the instances below are invalid

*There are 5 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

906        rdpxBondId
907      );
908  
909      IERC20WithBurn(weth).safeTransferFrom(
910        msg.sender,
911        address(this),
912        wethRequired
913:     );

950      // fee greater than 1%
951      _validate(_fee >= 1e8, 8);
952  
953:     IERC20WithBurn(weth).safeTransferFrom(msg.sender, address(this), _amount);

984      _validate(amountWithdrawn > 0, 15);
985      delegate.amount = delegate.activeCollateral;
986  
987:     IERC20WithBurn(weth).safeTransfer(msg.sender, amountWithdrawn);

```
*GitHub*: [906](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L906-L913), [950](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L950-L953), [984](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L984-L987)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

350        ethAmount
351      );
352      // Transfer rdpx from rdpx rdpxV2Core to perpetual vault
353      IERC20WithBurn(addresses.rdpx).safeTransferFrom(
354        addresses.rdpxV2Core,
355        addresses.perpetualAtlanticVaultLP,
356        rdpxAmount
357:     );

```
*GitHub*: [350](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L350-L357)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

169  
170      collateral.transfer(receiver, assets);
171  
172:     IERC20WithBurn(rdpx).safeTransfer(receiver, rdpxAmount);

```
*GitHub*: [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L169-L172)


### [D&#x2011;04] ~~`approve()`/`safeApprove()` may revert if the current approval is not zero~~
The general rule is valid, but the instances below are invalid

*There are 3 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

343:     IERC20WithBurn(weth).approve(addresses.dopexAMMRouter, type(uint256).max);

344:     IERC20WithBurn(weth).approve(addresses.dpxEthCurvePool, type(uint256).max);

```
*GitHub*: [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L343-L343), [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L344-L344)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

107:     ERC20(rdpx).approve(_perpetualAtlanticVault, type(uint256).max);

```
*GitHub*: [107](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L107-L107)


### [D&#x2011;05] ~~Some tokens may not consider `type(uint256).max` as an infinite approval~~
The general rule is valid, but the instances below are invalid

*There are 5 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

339      IERC20WithBurn(weth).approve(
340        addresses.perpetualAtlanticVault,
341        type(uint256).max
342:     );

343:     IERC20WithBurn(weth).approve(addresses.dopexAMMRouter, type(uint256).max);

344:     IERC20WithBurn(weth).approve(addresses.dpxEthCurvePool, type(uint256).max);

345      IERC20WithBurn(weth).approve(
346        addresses.rdpxV2ReceiptToken,
347        type(uint256).max
348:     );

```
*GitHub*: [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L339-L342), [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L343-L343), [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L344-L344), [345](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L345-L348)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

107:     ERC20(rdpx).approve(_perpetualAtlanticVault, type(uint256).max);

```
*GitHub*: [107](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L107-L107)


### [D&#x2011;06] ~~State variables should be cached in stack variables rather than re-reading them from storage~~
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (**100 gas**) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*There are 23 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit addresses on line 161
164:      uint256 tokenBBalance = IERC20WithBurn(addresses.tokenB).balanceOf(

/// @audit addresses on line 164
168:      IERC20WithBurn(addresses.tokenA).safeTransfer(

/// @audit addresses on line 168
169:        addresses.rdpxV2Core,

/// @audit addresses on line 169
172:      IERC20WithBurn(addresses.tokenB).safeTransfer(

/// @audit addresses on line 172
173:        addresses.rdpxV2Core,

/// @audit addresses on line 200
201:        addresses.ammRouter,

/// @audit addresses on line 201
204:      IERC20WithBurn(addresses.tokenB).safeApprove(

/// @audit addresses on line 204
205:        addresses.ammRouter,

/// @audit addresses on line 205
210:      IERC20WithBurn(addresses.tokenA).safeTransferFrom(

/// @audit addresses on line 210
211:        addresses.rdpxV2Core,

/// @audit addresses on line 211
215:      IERC20WithBurn(addresses.tokenB).safeTransferFrom(

/// @audit addresses on line 215
216:        addresses.rdpxV2Core,

/// @audit addresses on line 216
222:      (tokenAUsed, tokenBUsed, lpReceived) = IUniswapV2Router(addresses.ammRouter)

/// @audit addresses on line 222
224:          addresses.tokenA,

/// @audit addresses on line 224
225:          addresses.tokenB,

/// @audit addresses on line 268
268:      IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);

/// @audit addresses on line 268
271:      (tokenAReceived, tokenBReceived) = IUniswapV2Router(addresses.ammRouter)

/// @audit addresses on line 271
273:          addresses.tokenA,

/// @audit addresses on line 273
274:          addresses.tokenB,

/// @audit addresses on line 314
315:        token2 = addresses.tokenB;

/// @audit addresses on line 315
317:        token1 = addresses.tokenB;

/// @audit addresses on line 317
318:        token2 = addresses.tokenA;

/// @audit addresses on line 318
322:        addresses.rdpxV2Core,

```
*GitHub*: [164](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L164), [168](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L168), [169](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L169), [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L172), [173](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L173), [201](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L201), [204](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L204), [205](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L205), [210](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L210), [211](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L211), [215](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L215), [216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L216), [222](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L222), [224](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L224), [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L225), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L268), [271](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L271), [273](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L273), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L274), [315](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L315), [317](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L317), [318](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L318), [322](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L322)


### [D&#x2011;07] ~~`abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()`~~
The cases below do not have consecutive `bytes`/`string` arguments

*There are 3 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

106:        keccak256(abi.encodePacked(address(this), _tickLower, _tickUpper))

```
*GitHub*: [106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L106)

```solidity
File: contracts/core/RdpxV2Core.sol

1141:       keccak256(abi.encodePacked(asset.tokenSymbol)) ==

1142:         keccak256(abi.encodePacked(_token)),

```
*GitHub*: [1141](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1141), [1142](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1142)


### [D&#x2011;08] ~~SPDX identifier should be the in the first line of a solidity file~~
It's already on the first line

*There are 9 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

1:    //SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L1)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

1:    // SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L1)

```solidity
File: contracts/core/RdpxV2Bond.sol

1:    // SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L1)

```solidity
File: contracts/core/RdpxV2Core.sol

1:    //SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

1:    //SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L1)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

1:    // SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L1)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

1:    //SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L1)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

1:    // SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L1)

```solidity
File: contracts/reLP/ReLPContract.sol

1:    //SPDX-License-Identifier: UNLICENSED

```
*GitHub*: [1](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L1)

</details>

### [D&#x2011;09] ~~Overly complicated arithmetic~~
At least one bot is incorrectly flagging code comments as 'complicated arithmetic'

*There are 14 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

32:     /* ========== STATE VARIABLES ========== */

74:     /* ========== CONSTRUCTOR ========== */

91:     /* ========== VIEWS ========== */

116:    /* ========== RESTRICTED FUNCTIONS, BUT CUSTODIAN CAN CALL ========== */

135:    /* ---------------------------------------------------- */

136:    /* ---------------------- Uni v3 ---------------------- */

137:    /* ---------------------------------------------------- */

310:    /* ========== OWNER / GOVERNANCE FUNCTIONS ONLY ========== */

348:    /* ========== INTERNAL ========== */

366:    /* ========== EVENTS ========== */

```
*GitHub*: [32](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L32), [74](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L74), [91](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L91), [116](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L116), [135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L135), [136](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L136), [137](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L137), [310](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L310), [348](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L348), [366](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L366)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

55:     /*==== CONSTRUCTOR ====*/

66:     /*============ ADMIN FUNCTIONS ============*/

147:    /*============ VIEW FUNCTIONS ============*/

```
*GitHub*: [55](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L55), [66](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L66), [147](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L147)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

286:    function beforeWithdraw(uint256 assets, uint256 /*shares*/) internal {

```
*GitHub*: [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L286)


### [D&#x2011;10] ~~Public functions not used internally can be marked as external to save gas~~
After Solidity version 0.6.9 both `public` and `external` functions save the [same amount of gas](https://ethereum.stackexchange.com/a/107939), and since these files are >0.6.9, these findings are invalid

*There are 33 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

94      function liquidityInPool(
95        address _collateral_address,
96        int24 _tickLower,
97        int24 _tickUpper,
98        uint24 _fee
99:     ) public view returns (uint128) {

112:    function numPositions() public view returns (uint256) {

139     function approveTarget(
140       address _target,
141       address _token,
142       uint256 _amount,
143       bool use_safe_approve
144:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

155     function addLiquidity(
156       AddLiquidityParams memory params
157:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

213     function removeLiquidity(
214       uint256 positionIndex,
215       uint256 minAmount0,
216       uint256 minAmount1
217:    ) public onlyRole(DEFAULT_ADMIN_ROLE) {

274     function swap(
275       address _tokenA,
276       address _tokenB,
277       uint24 _fee_tier,
278       uint256 _amountAtoB,
279       uint256 _amountOutMinimum,
280       uint160 _sqrtPriceLimitX96
281:    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint256) {

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L94-L99), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L112), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L139-L144), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L157), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L217), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L281)

```solidity
File: contracts/core/RdpxV2Bond.sol

29:     function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {

33:     function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {

37      function mint(
38        address to
39:     ) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {

57      function supportsInterface(
58        bytes4 interfaceId
59      )
60        public
61        view
62        override(ERC721, ERC721Enumerable, AccessControl)
63:       returns (bool)

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L39), [57](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L57-L63)

```solidity
File: contracts/core/RdpxV2Core.sol

819     function bondWithDelegate(
820       address _to,
821       uint256[] memory _amounts,
822       uint256[] memory _delegateIds,
823       uint256 rdpxBondId
824:    ) public returns (uint256 receiptTokenAmount, uint256[] memory) {

894     function bond(
895       uint256 _amount,
896       uint256 rdpxBondId,
897       address _to
898:    ) public returns (uint256 receiptTokenAmount) {

1135    function getReserveTokenInfo(
1136      string memory _token
1137:   ) public view returns (address, uint256, string memory) {

1206:   function getLpPrice() public view returns (uint256) {

1260    function getDelegatePosition(
1261      uint256 _delegateId
1262    )
1263      public
1264      view
1265      returns (
1266        address delegate,
1267        uint256 amount,
1268        uint256 fee,
1269:       uint256 activeCollateral

```
*GitHub*: [819](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L819-L824), [894](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L894-L898), [1135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1135-L1137), [1206](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1206), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

139     function decreaseAmount(
140       uint256 bondId,
141       uint256 amount
142:    ) public onlyRole(RDPXV2CORE_ROLE) {

174     function supportsInterface(
175       bytes4 interfaceId
176     )
177       public
178       view
179       override(ERC721, ERC721Enumerable, AccessControl)
180:      returns (bool)

```
*GitHub*: [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L139-L142), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L174-L180)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

29:     function pause() public onlyRole(PAUSER_ROLE) {

33:     function unpause() public onlyRole(PAUSER_ROLE) {

37:     function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {

41      function burn(
42        uint256 _amount
43:     ) public override(ERC20Burnable, IDpxEthToken) onlyRole(BURNER_ROLE) {

47      function burnFrom(
48        address account,
49        uint256 amount
50:     ) public override onlyRole(BURNER_ROLE) {

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L37), [41](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L41-L43), [47](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L47-L50)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

554     function calculatePnl(
555       uint256 price,
556       uint256 strike,
557       uint256 amount
558:    ) public pure returns (uint256) {

645     function supportsInterface(
646       bytes4 interfaceId
647     )
648       public
649       view
650       override(ERC721, ERC721Enumerable, AccessControl)
651:      returns (bool)

```
*GitHub*: [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L554-L558), [645](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L645-L651)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

118     function deposit(
119       uint256 assets,
120       address receiver
121:    ) public virtual returns (uint256 shares) {

145     function redeem(
146       uint256 shares,
147       address receiver,
148       address owner
149:    ) public returns (uint256 assets, uint256 rdpxAmount) {

180:    function lockCollateral(uint256 amount) public onlyPerpVault {

185:    function unlockLiquidity(uint256 amount) public onlyPerpVault {

190:    function addProceeds(uint256 proceeds) public onlyPerpVault {

199:    function subtractLoss(uint256 loss) public onlyPerpVault {

208:    function addRdpx(uint256 amount) public onlyPerpVault {

240:    function activeCollateral() public view returns (uint256) {

250:    function rdpxCollateral() public view returns (uint256) {

```
*GitHub*: [118](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L118-L121), [145](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L145-L149), [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L180), [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L185), [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L190), [199](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L199), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L208), [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L240), [250](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L250)

</details>

### [D&#x2011;11] ~~Unused named return variables without optimizer waste gas~~
Suggestions that only apply when the optimizer is _off_ are not useful to sponsors. Why would they pay for gas optimizations if they don't have the optimizer on, and don't plan to turn it on? Only a [small minority](https://github.com/search?q=org%3Acode-423n4+%22optimizer+%3D+false%22&type=code) have the optimizer off; the majority have it set to more than [200](https://github.com/search?q=org%3Acode-423n4+optimizer_runs&type=code) runs

*There are 10 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit dpxEthPrice
1216:   function getDpxEthPrice() public view returns (uint256 dpxEthPrice) {

/// @audit ethPrice
1227:   function getEthPrice() public view returns (uint256 ethPrice) {

/// @audit delegate
/// @audit amount
/// @audit fee
/// @audit activeCollateral
1260    function getDelegatePosition(
1261      uint256 _delegateId
1262    )
1263      public
1264      view
1265      returns (
1266        address delegate,
1267        uint256 amount,
1268        uint256 fee,
1269:       uint256 activeCollateral

```
*GitHub*: [1216](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1216), [1227](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1227), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1269)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit timestamp
563     function nextFundingPaymentTimestamp()
564       public
565       view
566:      returns (uint256 timestamp)

```
*GitHub*: [563](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L563-L566)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit assets
/// @audit rdpxAmount
218     function _convertToAssets(
219       uint256 shares
220:    ) internal view virtual returns (uint256 assets, uint256 rdpxAmount) {

/// @audit shares
274     function convertToShares(
275       uint256 assets
276:    ) public view returns (uint256 shares) {

```
*GitHub*: [218](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L218-L220), [218](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L218-L220), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L274-L276)


### [D&#x2011;12] ~~Must approve or increase allowance first~~
The bot is just flagging `transferFrom()` calls without a prior approval. Many projects require you to approve their contract before using it, so this suggestion is not helpful, and certainly is not 'Low' severity, since that's the design and no funds are lost. There is no way for the project to address this issue other than by requiring that the caller send the tokens themselves, which has its own risks.

*There are 16 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

210      IERC20WithBurn(addresses.tokenA).safeTransferFrom(
211        addresses.rdpxV2Core,
212        address(this),
213        tokenAAmount
214:     );

215      IERC20WithBurn(addresses.tokenB).safeTransferFrom(
216        addresses.rdpxV2Core,
217        address(this),
218        tokenBAmount
219:     );

321      IERC20WithBurn(token1).safeTransferFrom(
322        addresses.rdpxV2Core,
323        address(this),
324        token1Amount
325:     );

```
*GitHub*: [210](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L210-L214), [215](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L215-L219), [321](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L321-L325)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

158      IERC20WithBurn(params._tokenA).transferFrom(
159        rdpxV2Core,
160        address(this),
161        params._amount0Desired
162:     );

163      IERC20WithBurn(params._tokenB).transferFrom(
164        rdpxV2Core,
165        address(this),
166        params._amount1Desired
167:     );

283      IERC20WithBurn(_tokenA).transferFrom(
284        rdpxV2Core,
285        address(this),
286        _amountAtoB
287:     );

330      INonfungiblePositionManager(tokenAddress).safeTransferFrom(
331        address(this),
332        rdpxV2Core,
333        token_id
334:     );

```
*GitHub*: [158](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L15