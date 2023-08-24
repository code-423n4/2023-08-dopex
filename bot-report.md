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

*GitHub*: [158](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L158-L162), [163](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L163-L167), [283](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L283-L287), [330](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L330-L334)

```solidity
File: contracts/core/RdpxV2Core.sol

653        IERC20WithBurn(reserveAsset[reservesIndex["RDPX"]].tokenAddress)
654:         .safeTransferFrom(msg.sender, address(this), _rdpxAmount);

909      IERC20WithBurn(weth).safeTransferFrom(
910        msg.sender,
911        address(this),
912        wethRequired
913:     );

953:     IERC20WithBurn(weth).safeTransferFrom(msg.sender, address(this), _amount);

```
*GitHub*: [653](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L653-L654), [909](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L909-L913), [953](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L953-L953)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

289:     collateralToken.safeTransferFrom(msg.sender, address(this), premium);

347      collateralToken.safeTransferFrom(
348        addresses.perpetualAtlanticVaultLP,
349        addresses.rdpxV2Core,
350        ethAmount
351:     );

353      IERC20WithBurn(addresses.rdpx).safeTransferFrom(
354        addresses.rdpxV2Core,
355        addresses.perpetualAtlanticVaultLP,
356        rdpxAmount
357:     );

382      collateralToken.safeTransferFrom(
383        addresses.rdpxV2Core,
384        address(this),
385        totalFundingForEpoch[latestFundingPaymentPointer]
386:     );

```
*GitHub*: [289](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L289-L289), [347](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L347-L351), [353](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L353-L357), [382](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L382-L386)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

128:     collateral.transferFrom(msg.sender, address(this), assets);

```
*GitHub*: [128](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L128-L128)

```solidity
File: contracts/reLP/ReLPContract.sol

243      IERC20WithBurn(addresses.pair).transferFrom(
244        addresses.amo,
245        address(this),
246        lpToRemove
247:     );

```
*GitHub*: [243](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L243-L247)


### [D&#x2011;13] ~~IERC20 approve() Is Deprecated~~
`approve()` itself is not deprecated, and these are already approvals to zero, not to non-zero, so they won't revert

*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

249:       : collateralToken.approve(addresses.perpetualAtlanticVaultLP, 0);

```
*GitHub*: [249](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L249-L249)


### [D&#x2011;14] ~~Large approvals may not work with some ERC20 tokens~~
These are not maximum approvals, or approvals that grow over time, so there is no broken behavior here

*There are 12 instances of this issue:*

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

411:     IERC20WithBurn(_token).approve(_spender, _amount);

```
*GitHub*: [411](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L411-L411)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

249:       : collateralToken.approve(addresses.perpetualAtlanticVaultLP, 0);

```
*GitHub*: [249](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L249-L249)


### [D&#x2011;15] ~~Shorten the array rather than copying to a new one~~
None of these examples are of filtering out entries from an array.

*There is one instance of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

155      uint256[] memory tokenIds = new uint256[](ownerTokenCount);
156      for (uint256 i; i < ownerTokenCount; i++) {
157        tokenIds[i] = tokenOfOwnerByIndex(_address, i);
158:     }

```
*GitHub*: [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L155-L158)


### [D&#x2011;16] ~~Missing contract-existence checks before low-level calls~~
The contract or caller exists, or it's a transfer of funds

*There is one instance of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

88      **/
89     function emergencyWithdraw(
90       address[] calldata tokens,
91       bool transferNative,
92       address payable to,
93       uint256 amount,
94       uint256 gas
95     ) external onlyRole(DEFAULT_ADMIN_ROLE) {
96       _whenPaused();
97       if (transferNative) {
98         (bool success, ) = to.call{ value: amount, gas: gas }("");
99         require(success, "RdpxReserve: transfer failed");
100      }
101:     IERC20WithBurn token;

```
*GitHub*: [88](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L88-L101)


### [D&#x2011;17] ~~Function result should be cached~~
Transfers are not something that can be 'cached'

*There are 2 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

158:     IERC20WithBurn(params._tokenA).transferFrom(

163:     IERC20WithBurn(params._tokenB).transferFrom(

```
*GitHub*: [158](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L158-L158), [163](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L163-L163)


### [D&#x2011;18] ~~`constant`/`immutable` variable names should use capital letters and underscore~~
These are already CONSTANT_CASE

*There are 3 instances of this issue:*

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

34:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [34](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L34-L34)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

48:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [48](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L48-L48)

```solidity
File: contracts/reLP/ReLPContract.sol

70:    bytes32 public constant RDPXV2CORE_ROLE = keccak256("RDPXV2CORE_ROLE");

```
*GitHub*: [70](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L70-L70)


### [D&#x2011;19] ~~Constant decimal values~~
These instances have nothing to do with a token's decimals, so these findings are invalid

*There are 16 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

373:     return (lpTokenBalance * getLpPrice()) / 1e8;

```
*GitHub*: [373](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L373-L373)

```solidity
File: contracts/core/RdpxV2Core.sol

548:       : (((_amount * getEthPrice()) / 1e8) -

546:       ? (((_amount * getDpxEthPrice()) / 1e8) -

605:     uint256 rdpxRequiredInWeth = (_rdpxRequired * getRdpxPrice()) / 1e8;

669:       uint256 rdpxAmountInWeth = (_rdpxAmount * getRdpxPrice()) / 1e8;

673:       uint256 extraRdpxToWithdraw = (discountReceivedInWeth * 1e8) /

951:     _validate(_fee >= 1e8, 8);

1057:    _validate(getDpxEthPrice() > 1e8, 10);

1087:    _validate(getDpxEthPrice() < 1e8, 13);

1165:        1e2) / (Math.sqrt(1e18)); // 1e8 precision

```
*GitHub*: [548](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L548-L548), [546](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L546-L546), [605](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L605-L605), [669](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L669-L669), [673](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L673-L673), [951](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L951-L951), [1057](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1057-L1057), [1087](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1087-L1087), [1165](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1165-L1165)

```solidity
File: contracts/reLP/ReLPContract.sol

230:       1e2) / (Math.sqrt(1e18)); // 1e6 precision

232:     uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /

235:       baseReLpRatio) / (1e18 * DEFAULT_PRECISION * 1e2);

251:       ((tokenAToRemove * liquiditySlippageTolerance) / 1e8);

253:       1e8) -

274:       (((amountB / 2) * tokenAInfo.tokenAPrice) / 1e8) -

```
*GitHub*: [230](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L230-L230), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L232), [235](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L235-L235), [251](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L251-L251), [253](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L253-L253), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L274-L274)


### [D&#x2011;20] ~~Functions calling contracts/addresses with transfer hooks are missing reentrancy guards~~
`_transfer()` is not an external call to a contract, so there is no CEI 'interaction' where a reentrancy can occur, so these instances are invalid.

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit `bondWithDelegate()`
861:       _transfer(

/// @audit `bond()`
924:     _transfer(rdpxRequired, wethRequired - premium, _amount, rdpxBondId);

```
*GitHub*: [861](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L861-L861), [924](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L924-L924)


### [D&#x2011;21] ~~`require()` / `revert()` statements should have descriptive reason strings~~
These are not `revert()` calls, so these findings are invalid

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

752:     if (!_clause) revert RdpxV2CoreError(_errorCode);

```
*GitHub*: [752](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L752-L752)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

622:     if (!_clause) revert PerpetualAtlanticVaultError(_errorCode);

```
*GitHub*: [622](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L622-L622)


### [D&#x2011;22] ~~Use delete instead of setting mapping/state variable to zero, to save gas~~
Using delete instead of assigning zero to state variables does not save any extra gas with the optimizer [on](https://gist.github.com/IllIllI000/ef8ec3a70aede7f12433fe63dc418515#with-the-optimizer-set-at-200-runs) (saves 5-8 gas with optimizer completely off), so this finding is invalid, especially since if they were interested in gas savings, they'd have the optimizer enabled.

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

277:     reservesIndex[_assetSymbol] = 0;

```
*GitHub*: [277](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L277-L277)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

343:       optionPositions[optionIds[i]].strike = 0;

```
*GitHub*: [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L343-L343)


### [D&#x2011;23] ~~Events that mark critical parameter changes should contain both the old and the new value~~
These are not critical parameter changes

*There are 22 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

152:     emit LogEmergencyWithdraw(msg.sender, tokens);

177:     emit LogAssetsTransfered(msg.sender, tokenABalance, tokenBBalance);

348      emit LogSwap(
349        msg.sender,
350        token1Amount,
351        token2AmountOutMin,
352        swapTokenAForTokenB,
353        token2Amount
354:     );

```
*GitHub*: [152](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L152-L152), [177](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L177-L177), [348](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L348-L354)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

321:     emit RecoveredERC20(tokenAddress, tokenAmount);

335:     emit RecoveredERC721(tokenAddress, token_id);

363:     emit LogAssetsTransfered(tokenABalance, tokenBBalance, tokenA, tokenB);

```
*GitHub*: [321](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L321-L321), [335](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L335-L335), [363](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L363-L363)

```solidity
File: contracts/core/RdpxV2Core.sol

172:     emit LogEmergencyWithdraw(msg.sender, tokens);

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

989:     emit LogDelegateWithdraw(delegateId, amountWithdrawn);

1007:    emit LogSync();

1041:    emit LogRedeem(to, receiptTokenAmount);

1069:    emit LogUpperDepeg(_amount, wethReceived);

1123:    emit LogLowerDepeg(_rdpxAmount, _wethAmount, dpxEthReceived);

```
*GitHub*: [172](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L172-L172), [807](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L807-L807), [875](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L875-L882), [932](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L932-L932), [989](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L989-L989), [1007](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1007-L1007), [1041](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1041-L1041), [1069](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1069-L1069), [1123](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1123-L1123)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

124:     emit BondMinted(to, bondId, expiry, rdpxAmount);

```
*GitHub*: [124](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L124-L124)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

230:     emit EmergencyWithdraw(msg.sender, tokens);

311:     emit Purchase(strike, amount, premium, to, msg.sender);

389      emit PayFunding(
390        msg.sender,
391        totalFundingForEpoch[latestFundingPaymentPointer],
392        latestFundingPaymentPointer
393:     );

451        emit CalculateFunding(
452          msg.sender,
453          amount,
454          strike,
455          premium,
456          latestFundingPaymentPointer
457:       );

```
*GitHub*: [230](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L230-L230), [311](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L311-L311), [389](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L389-L393), [451](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L451-L457)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

134:     emit Deposit(msg.sender, receiver, assets, shares);

174:     emit Withdraw(msg.sender, receiver, owner, assets, shares);

```
*GitHub*: [134](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L134-L134), [174](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L174-L174)


### [D&#x2011;24] ~~Cast to `bytes` or `bytes32` for clearer semantic meaning~~
These calls to `abi.encodePacked()` have more than one argument

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

106:       keccak256(abi.encodePacked(address(this), _tickLower, _tickUpper))

```
*GitHub*: [106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L106-L106)


### [D&#x2011;25] ~~Use `bytes.concat()` on bytes instead of `abi.encodePacked()` for clearer semantic meaning~~
These instances don't use only bytes/strings, so they're invalid

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

106:       keccak256(abi.encodePacked(address(this), _tickLower, _tickUpper))

```
*GitHub*: [106](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L106-L106)


### [D&#x2011;26] ~~Event names should use CamelCase~~
The instances below are already CamelCase (events are supposed to use CamelCase, not lowerCamelCase)

*There are 13 instances of this issue:*

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

```
*GitHub*: [368](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L368-L368), [369](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L369-L369), [370](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L370-L375)

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


### [D&#x2011;27] ~~Dependence on external protocols~~
There is no way to ascertain whether external monitoring is in place, and no specific vulnerabilities are identified, so this rule is not useful.

*There are 33 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

11:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

222:     (tokenAUsed, tokenBUsed, lpReceived) = IUniswapV2Router(addresses.ammRouter)

271:     (tokenAReceived, tokenBReceived) = IUniswapV2Router(addresses.ammRouter)

336:     token2Amount = IUniswapV2Router(addresses.ammRouter)

```
*GitHub*: [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L11-L11), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L12-L12), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L12-L12), [222](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L222-L222), [271](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L271-L271), [336](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L336-L336)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

12:  import "../uniswap_V3/IUniswapV3Factory.sol";

13:  import "../uniswap_V3/libraries/TickMath.sol";

14:  import "../uniswap_V3/libraries/LiquidityAmounts.sol";

15:  import "../uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

16:  import "../uniswap_V3/IUniswapV3Pool.sol";

17:  import "../uniswap_V3/ISwapRouter.sol";

25:    function uniswapPool() external view virtual returns (address);

35:    IUniswapV3Factory public univ3_factory;

82:      univ3_factory = IUniswapV3Factory(

100:     IUniswapV3Pool get_pool = IUniswapV3Pool(

```
*GitHub*: [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L16-L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L17-L17), [25](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L25-L25), [35](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L35-L35), [82](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L82-L82), [100](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L100-L100), [100](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L100-L100)

```solidity
File: contracts/core/RdpxV2Core.sol

13:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

1097:      amountOfWethOut = IUniswapV2Router(addresses.dopexAMMRouter)

```
*GitHub*: [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L13-L13), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L13-L13), [1097](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1097-L1097)

```solidity
File: contracts/reLP/ReLPContract.sol

11:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

19:  import { UniswapV2Library } from "../uniswap_V2/libraries/UniswapV2Library.sol";

204:     (address tokenASorted, address tokenBSorted) = UniswapV2Library.sortTokens(

208:     (uint256 reserveA, uint256 reserveB) = UniswapV2Library.getReserves(

237:     uint256 totalLpSupply = IUniswapV2Pair(addresses.pair).totalSupply();

257:     (, uint256 amountB) = IUniswapV2Router(addresses.ammRouter).removeLiquidity(

277:     uint256 tokenAAmountOut = IUniswapV2Router(addresses.ammRouter)

286:     (, , uint256 lp) = IUniswapV2Router(addresses.ammRouter).addLiquidity(

```
*GitHub*: [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L11-L11), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L12-L12), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L12-L12), [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L19-L19), [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L19-L19), [204](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L204-L204), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L208-L208), [237](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L237-L237), [257](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L257-L257), [277](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L277-L277), [286](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L286-L286)


### [D&#x2011;28] ~~Function Names Not in mixedCase~~
According to the Solidity Style Guide, non-`external`/`public` function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables), and all of these fall into that category

*There are 20 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

160:   function _sendTokensToRdpxV2Core() internal {

```
*GitHub*: [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L160-L160)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

353:   function _sendTokensToRdpxV2Core(address tokenA, address tokenB) internal {

```
*GitHub*: [353](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L353-L353)

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
File: contracts/core/RdpxV2Core.sol

471    function _purchaseOptions(
472      uint256 _amount
473:   ) internal returns (uint256 premium) {

495    function _issueBond(
496      address _to,
497      uint256 _amount
498:   ) internal returns (uint256 bondId) {

515    function _curveSwap(
516      uint256 _amount,
517      bool _ethToDpxEth,
518      bool validate,
519      uint256 minAmount
520:   ) internal returns (uint256 amountOut) {

566    function _stake(
567      address _to,
568      uint256 _amount
569:   ) internal returns (uint256 receiptTokenAmount) {

598    function _calculateAmounts(
599      uint256 _wethRequired,
600      uint256 _rdpxRequired,
601      uint256 _amount,
602      uint256 _delegateFee
603:   ) internal view returns (uint256 amount1, uint256 amount2) {

624    function _transfer(
625      uint256 _rdpxAmount,
626      uint256 _wethAmount,
627      uint256 _bondAmount,
628      uint256 _bondId
629:   ) internal {

699    function _bondWithDelegate(
700      uint256 _amount,
701      uint256 rdpxBondId,
702      uint256 delegateId
703:   ) internal returns (BondWithDelegateReturnValue memory returnValues) {

751:   function _validate(bool _clause, uint256 _errorCode) internal pure {

```
*GitHub*: [471](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L471-L473), [495](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L495-L498), [515](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L515-L520), [566](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L566-L569), [598](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L598-L603), [624](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L624-L629), [699](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L699-L703), [751](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L751-L751)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

129:   function _mintToken(address to) private returns (uint256 tokenId) {

162    function _beforeTokenTransfer(
163      address from,
164      address to,
165      uint256 tokenId,
166      uint256 batchSize
167:   ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [129](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L129-L129), [162](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L162-L167)

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

588:   function _mintOptionToken() private returns (uint256 tokenId) {

594:   function _updateFundingRate(uint256 amount) private {

621:   function _validate(bool _clause, uint256 _errorCode) private pure {

635    function _beforeTokenTransfer(
636      address from,
637      address to,
638      uint256 tokenId,
639      uint256 batchSize
640:   ) internal override(ERC721, ERC721Enumerable) {

```
*GitHub*: [588](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L588-L588), [594](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L594-L594), [621](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L621-L621), [635](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L635-L640)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

218    function _convertToAssets(
219      uint256 shares
220:   ) internal view virtual returns (uint256 assets, uint256 rdpxAmount) {

231    function _beforeTokenTransfer(
232      address from,
233      address,
234      uint256
235:   ) internal virtual {}

```
*GitHub*: [218](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L218-L220), [231](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L231-L235)

</details>

### [D&#x2011;29] ~~Contracts do not work with fee-on-transfer tokens~~
An ERC20 token being used, in and of itself, is not evidence of a fee-on-transfer issue; there must be other evidence that the balance accounting gets broken, and these lines do not contain such evidence.

*There are 15 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

134:     IERC20WithBurn(_token).approve(_spender, _amount);

268:     IERC20WithBurn(addresses.pair).safeApprove(addresses.ammRouter, lpAmount);

```
*GitHub*: [134](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L134-L134), [268](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L268-L268)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

150:       IERC20WithBurn(_token).approve(_target, _amount);

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L150-L150)

```solidity
File: contracts/core/RdpxV2Core.sol

339:     IERC20WithBurn(weth).approve(

343:     IERC20WithBurn(weth).approve(addresses.dopexAMMRouter, type(uint256).max);

344:     IERC20WithBurn(weth).approve(addresses.dpxEthCurvePool, type(uint256).max);

345:     IERC20WithBurn(weth).approve(

411:     IERC20WithBurn(_token).approve(_spender, _amount);

```
*GitHub*: [339](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L339-L339), [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L343-L343), [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L344-L344), [345](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L345-L345), [411](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L411-L411)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

121:     collateralToken = IERC20WithBurn(_collateralToken);

```
*GitHub*: [121](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L121-L121)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

102:     collateral = ERC20(_collateral);

107:     ERC20(rdpx).approve(_perpetualAtlanticVault, type(uint256).max);

91:        ERC20(_collateral).decimals()

```
*GitHub*: [102](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L102-L102), [107](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L107-L107), [91](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L91-L91)

```solidity
File: contracts/reLP/ReLPContract.sol

150:     IERC20WithBurn(addresses.pair).safeApprove(

155:     IERC20WithBurn(addresses.tokenA).safeApprove(

160:     IERC20WithBurn(addresses.tokenB).safeApprove(

```
*GitHub*: [150](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L150-L150), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L155-L155), [160](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L160-L160)


### [D&#x2011;30] ~~Use != 0 instead of > 0 for unsigned integer comparison~~
Only valid prior to Solidity version 0.8.13, and only for `require()` statements, and at least one of those is not true for the examples below

*There are 19 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

113:       _slippageTolerance > 0,

133:     require(_amount > 0, "reLPContract: amount must be greater than 0");

```
*GitHub*: [113](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L113-L113), [133](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L133-L133)

```solidity
File: contracts/core/RdpxV2Core.sol

183:     _validate(_rdpxBurnPercentage > 0, 3);

196:     _validate(_rdpxFeePercentage > 0, 3);

231:     _validate(_bondMaturity > 0, 3);

410:     _validate(_amount > 0, 17);

444:     _validate(_bondDiscountFactor > 0, 3);

458:     _validate(_slippageTolerance > 0, 3);

556:       minAmount > 0 ? minAmount : minOut

838:       _validate(_amounts[i] > 0, 4);

901:     _validate(_amount > 0, 4);

984:     _validate(amountWithdrawn > 0, 15);

1021:    _validate(bonds[id].timestamp > 0, 6);

```
*GitHub*: [183](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L183-L183), [196](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L196-L196), [231](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L231-L231), [410](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L410-L410), [444](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L444-L444), [458](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L458-L458), [556](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L556-L556), [838](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L838-L838), [901](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L901-L901), [984](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L984-L984), [1021](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1021-L1021)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

265:     _validate(amount > 0, 2);

414:       _validate(optionsPerStrike[strikes[i]] > 0, 4);

547:       _price > 0 ? _price : getUnderlyingPrice(),

```
*GitHub*: [265](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L265-L265), [414](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L414-L414), [547](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L547-L547)

```solidity
File: contracts/reLP/ReLPContract.sol

94:        _reLPFactor > 0,

175:       _liquiditySlippageTolerance > 0,

190:       _slippageTolerance > 0,

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L94-L94), [175](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L175-L175), [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L190-L190)


### [D&#x2011;31] ~~State variables not capped at reasonable values~~
These assignments already have the necessary checks

*There are 16 instances of this issue:*

```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

116:     slippageTolerance = _slippageTolerance;

```
*GitHub*: [116](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L116-L116)

```solidity
File: contracts/core/RdpxV2Core.sol

184:     rdpxBurnPercentage = _rdpxBurnPercentage;

197:     rdpxFeePercentage = _rdpxFeePercentage;

232:     bondMaturity = _bondMaturity;

445:     bondDiscountFactor = _bondDiscountFactor;

459:     slippageTolerance = _slippageTolerance;

964:     totalWethDelegated += _amount;

```
*GitHub*: [184](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L184-L184), [197](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L197-L197), [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L232-L232), [445](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L445-L445), [459](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L459-L459), [964](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L964-L964)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

302:     totalActiveOptions += amount;

303:     fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;

304:     optionsPerStrike[strike] += amount;

307      fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][
308        strike
309:     ] += amount;

```
*GitHub*: [302](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L302-L302), [303](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L303-L303), [304](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L304-L304), [307](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L307-L309)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

195:     _totalCollateral += proceeds;

213:     _rdpxCollateral += amount;

```
*GitHub*: [195](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L195-L195), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L213-L213)

```solidity
File: contracts/reLP/ReLPContract.sol

97:      reLPFactor = _reLPFactor;

178:     liquiditySlippageTolerance = _liquiditySlippageTolerance;

193:     slippageTolerance = _slippageTolerance;

```
*GitHub*: [97](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L97-L97), [178](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L178-L178), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L193-L193)


### [D&#x2011;32] ~~Tokens may be minted to `address(0x0)`~~
In the cases below, `_mint()` prevents minting to `address(0x0)`

*There are 4 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Bond.sol

37     function mint(
38       address to
39     ) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {
40       tokenId = _tokenIdCounter.current();
41       _tokenIdCounter.increment();
42       _mint(to, tokenId);
43:    }

```
*GitHub*: [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L43)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

129    function _mintToken(address to) private returns (uint256 tokenId) {
130      tokenId = _tokenIdCounter.current();
131      _tokenIdCounter.increment();
132      _mint(to, tokenId);
133:   }

```
*GitHub*: [129](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L129-L133)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

37     function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
38       _mint(to, amount);
39:    }

```
*GitHub*: [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L37-L39)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

588    function _mintOptionToken() private returns (uint256 tokenId) {
589      tokenId = _tokenIdCounter.current();
590      _tokenIdCounter.increment();
591      _mint(addresses.rdpxV2Core, tokenId);
592:   }

```
*GitHub*: [588](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L588-L592)


### [D&#x2011;33] ~~Multiplications of powers of can be replaced by a left shift operation to save gas~~
This is not safe to do in all cases, because there is no overflow protection with left bit shifts

*There is one instance of this issue:*

```solidity
File: contracts/reLP/ReLPContract.sol

232:     uint256 tokenAToRemove = ((((_amount * 4) * 1e18) /

```
*GitHub*: [232](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L232-L232)


### [D&#x2011;34] ~~Allowed fees/rates should be capped by smart contracts~~
There are already limits set for these functions

*There are 2 instances of this issue:*

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

```
*GitHub*: [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L180-L186), [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L193-L199)


### [D&#x2011;35] ~~Contracts are not using their OZ Upgradeable counterparts~~
The rule is true only when the contract being defined is upgradeable, which isn't the case for these invalid examples

*There are 41 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit UniV2LiquidityAMO is a non-upgradeable contract
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit UniV2LiquidityAMO is a non-upgradeable contract
6:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/// @audit UniV2LiquidityAMO is a non-upgradeable contract
7:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit UniV2LiquidityAMO is a non-upgradeable contract
17:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L7-L7), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L17-L17)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit OracleLike is a non-upgradeable contract
4:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit OracleLike is a non-upgradeable contract
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit OracleLike is a non-upgradeable contract
6:   import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

/// @audit OracleLike is a non-upgradeable contract
7:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L7-L7)

```solidity
File: contracts/core/RdpxV2Bond.sol

/// @audit RdpxV2Bond is a non-upgradeable contract
4:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @audit RdpxV2Bond is a non-upgradeable contract
5:   import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/// @audit RdpxV2Bond is a non-upgradeable contract
7:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit RdpxV2Bond is a non-upgradeable contract
8:   import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

/// @audit RdpxV2Bond is a non-upgradeable contract
9:   import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L5-L5), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L9-L9)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit RdpxV2Core is a non-upgradeable contract
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit RdpxV2Core is a non-upgradeable contract
6:   import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

/// @audit RdpxV2Core is a non-upgradeable contract
26:  import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/// @audit RdpxV2Core is a non-upgradeable contract
27:  import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit RdpxV2Core is a non-upgradeable contract
28:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L6-L6), [26](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L26-L26), [27](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L27-L27), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L28-L28)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit RdpxDecayingBonds is a non-upgradeable contract
5:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit RdpxDecayingBonds is a non-upgradeable contract
9:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @audit RdpxDecayingBonds is a non-upgradeable contract
10:  import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/// @audit RdpxDecayingBonds is a non-upgradeable contract
11:  import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

/// @audit RdpxDecayingBonds is a non-upgradeable contract
12:  import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit RdpxDecayingBonds is a non-upgradeable contract
13:  import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L5-L5), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L9-L9), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L13-L13)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

/// @audit DpxEthToken is a non-upgradeable contract
4:   import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @audit DpxEthToken is a non-upgradeable contract
5:   import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @audit DpxEthToken is a non-upgradeable contract
7:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L5-L5), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L7-L7)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
5:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
8:   import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
9:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
10:  import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
11:  import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
12:  import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
13:  import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit PerpetualAtlanticVault is a non-upgradeable contract
14:  import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L5-L5), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L9-L9), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L14-L14)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit PerpetualAtlanticVaultLP is a non-upgradeable contract
10:  import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

/// @audit PerpetualAtlanticVaultLP is a non-upgradeable contract
11:  import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

```
*GitHub*: [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L11-L11)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit ReLPContract is a non-upgradeable contract
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit ReLPContract is a non-upgradeable contract
6:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/// @audit ReLPContract is a non-upgradeable contract
7:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit ReLPContract is a non-upgradeable contract
20:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L7-L7), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L20-L20)

</details>

### [D&#x2011;36] ~~Unnecessary look up in if condition~~


*There is one instance of this issue:*

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

95:        _perpetualAtlanticVault != address(0) || _rdpx != address(0),

```
*GitHub*: [95](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L95-L95)


### [D&#x2011;37] ~~All interfaces used within a project should be imported~~
These contracts don't rely on other contracts for their definitions, so there's nothing to import

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

22:  abstract contract OracleLike {

```
*GitHub*: [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L22-L22)


### [D&#x2011;38] ~~Change `public` function visibility to `external` to save gas~~
Both `public` and `external` functions use the same amount of gas (both deployment and runtime gas), so this finding is invalid

*There are 27 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

94     function liquidityInPool(
95       address _collateral_address,
96       int24 _tickLower,
97       int24 _tickUpper,
98       uint24 _fee
99:    ) public view returns (uint128) {

112:   function numPositions() public view returns (uint256) {

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

```
*GitHub*: [94](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L94-L99), [112](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L112-L112), [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L139-L144), [155](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L155-L157), [213](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L213-L217), [274](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L274-L281)

```solidity
File: contracts/core/RdpxV2Bond.sol

29:    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {

33:    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {

37     function mint(
38       address to
39:    ) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L29-L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L33-L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L37-L39)

```solidity
File: contracts/core/RdpxV2Core.sol

819    function bondWithDelegate(
820      address _to,
821      uint256[] memory _amounts,
822      uint256[] memory _delegateIds,
823      uint256 rdpxBondId
824:   ) public returns (uint256 receiptTokenAmount, uint256[] memory) {

894    function bond(
895      uint256 _amount,
896      uint256 rdpxBondId,
897      address _to
898:   ) public returns (uint256 receiptTokenAmount) {

1135   function getReserveTokenInfo(
1136     string memory _token
1137:  ) public view returns (address, uint256, string memory) {

1206:  function getLpPrice() public view returns (uint256) {

1260   function getDelegatePosition(
1261     uint256 _delegateId
1262   )
1263     public
1264     view
1265     returns (
1266       address delegate,
1267       uint256 amount,
1268       uint256 fee,
1269       uint256 activeCollateral
1270     )
1271:  {

```
*GitHub*: [819](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L819-L824), [894](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L894-L898), [1135](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1135-L1137), [1206](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1206-L1206), [1260](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1260-L1271)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

139    function decreaseAmount(
140      uint256 bondId,
141      uint256 amount
142:   ) public onlyRole(RDPXV2CORE_ROLE) {

```
*GitHub*: [139](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L139-L142)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

29:    function pause() public onlyRole(PAUSER_ROLE) {

33:    function unpause() public onlyRole(PAUSER_ROLE) {

37:    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {

```
*GitHub*: [29](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L29-L29), [33](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L33-L33), [37](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L37-L37)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

554    function calculatePnl(
555      uint256 price,
556      uint256 strike,
557      uint256 amount
558:   ) public pure returns (uint256) {

```
*GitHub*: [554](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L554-L558)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

145    function redeem(
146      uint256 shares,
147      address receiver,
148      address owner
149:   ) public returns (uint256 assets, uint256 rdpxAmount) {

180:   function lockCollateral(uint256 amount) public onlyPerpVault {

185:   function unlockLiquidity(uint256 amount) public onlyPerpVault {

190:   function addProceeds(uint256 proceeds) public onlyPerpVault {

199:   function subtractLoss(uint256 loss) public onlyPerpVault {

208:   function addRdpx(uint256 amount) public onlyPerpVault {

240:   function activeCollateral() public view returns (uint256) {

250:   function rdpxCollateral() public view returns (uint256) {

```
*GitHub*: [145](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L145-L149), [180](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L180-L180), [185](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L185-L185), [190](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L190-L190), [199](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L199-L199), [208](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L208-L208), [240](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L240-L240), [250](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L250-L250)

</details>

### [D&#x2011;39] ~~Use replace and pop instead of the delete keyword to removing an item from an array~~
The examples below are mappings, not arrays

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

263:     delete positions_mapping[pos.token_id];

```
*GitHub*: [263](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L263-L263)


### [D&#x2011;40] ~~safeMint should be used in place of mint~~
These are not ERC721.mint() calls

*There are 3 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

193      (uint256 tokenId, uint128 amountLiquidity, , ) = univ3_positions.mint(
194        mintParams
195:     );

```
*GitHub*: [193](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L193-L195)

```solidity
File: contracts/core/RdpxV2Core.sol

572      IDpxEthToken(reserveAsset[reservesIndex["DPXETH"]].tokenAddress).mint(
573        address(this),
574        _amount / 2
575:     );

1059     IDpxEthToken(reserveAsset[reservesIndex["DPXETH"]].tokenAddress).mint(
1060       address(this),
1061       _amount
1062:    );

```
*GitHub*: [572](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L572-L575), [1059](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1059-L1062)


### [D&#x2011;41] ~~Use `_safeMint` instead of `_mint` for ERC721~~
The contract here isn't an ERC721 - it's some other token. Note that ERC1155 defines `_mint()`, not `_safeMint()`

*There are 2 instances of this issue:*

```solidity
File: contracts/dpxETH/DpxEthToken.sol

38:      _mint(to, amount);

```
*GitHub*: [38](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L38-L38)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

130:     _mint(receiver, shares);

```
*GitHub*: [130](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L130-L130)


### [D&#x2011;42] ~~It's not standard to end and begin a code object on the same line~~
These are perfectly standard

*There are 91 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

6:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

7:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

10:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

11:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

13:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

14:  import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

17:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L7-L7), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L14-L14), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L17-L17)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

4:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

6:   import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

7:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

8:   import { TransferHelper } from "../libraries/TransferHelper.sol";

9:   import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

20:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L9-L9), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L20-L20)

```solidity
File: contracts/core/RdpxV2Bond.sol

4:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

5:   import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

6:   import { Pausable } from "../helper/Pausable.sol";

7:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

8:   import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

9:   import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L9-L9)

```solidity
File: contracts/core/RdpxV2Core.sol

5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

6:   import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

7:   import { ContractWhitelist } from "../helper/ContractWhitelist.sol";

8:   import { Pausable } from "../helper/Pausable.sol";

9:   import { RdpxV2Bond } from "./RdpxV2Bond.sol";

12:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

13:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

14:  import { IStableSwap } from "../interfaces/IStableSwap.sol";

15:  import { IRdpxDecayingBonds } from "../decaying-bonds/IRdpxDecayingBonds.sol";

16:  import { IDpxEthToken } from "../dpxETH/IDpxEthToken.sol";

17:  import { IPerpetualAtlanticVault } from "../perp-vault/IPerpetualAtlanticVault.sol";

18:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

19:  import { IDpxEthOracle } from "../oracles/IDpxEthOracle.sol";

20:  import { IRdpxReserve } from "../reserve/IRdpxReserve.sol";

21:  import { IRdpxV2Core } from "./IRdpxV2Core.sol";

22:  import { IRdpxV2ReceiptToken } from "../interfaces/IRdpxV2ReceiptToken.sol";

23:  import { IReLP } from "../interfaces/IReLP.sol";

26:  import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

27:  import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

28:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L9-L9), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L16-L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L17-L17), [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L18-L18), [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L19-L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L20-L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L21-L21), [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L22-L22), [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L23-L23), [26](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L26-L26), [27](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L27-L27), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L28-L28)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

5:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

8:   import { Pausable } from "../helper/Pausable.sol";

9:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

10:  import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

11:  import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

12:  import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

13:  import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

16:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L5-L5), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L9-L9), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L13-L13), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L16-L16)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

4:   import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

5:   import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

6:   import { Pausable } from "../helper/Pausable.sol";

7:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

8:   import { IDpxEthToken } from "./IDpxEthToken.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L8-L8)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

5:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

8:   import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

9:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

10:  import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

11:  import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

12:  import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

13:  import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

14:  import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

15:  import { IPerpetualAtlanticVaultLP } from "./IPerpetualAtlanticVaultLP.sol";

16:  import { ContractWhitelist } from "../helper/ContractWhitelist.sol";

17:  import { Pausable } from "../helper/Pausable.sol";

20:  import { IPerpetualAtlanticVault } from "./IPerpetualAtlanticVault.sol";

21:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

22:  import { IOptionPricing } from "../interfaces/IOptionPricing.sol";

23:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

24:  import { IVolatilityOracle } from "../interfaces/IVolatilityOracle.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L5-L5), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L9-L9), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L16-L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L17-L17), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L20-L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L21-L21), [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L22-L22), [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L23-L23), [24](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L24-L24)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

5:   import { ERC20 } from "solmate/src/tokens/ERC20.sol";

6:   import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";

7:   import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

10:  import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

11:  import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

12:  import { SafeTransferLib } from "solmate/src/utils/SafeTransferLib.sol";

15:  import { IPerpetualAtlanticVault } from "./IPerpetualAtlanticVault.sol";

16:  import { IPerpetualAtlanticVaultLP } from "./IPerpetualAtlanticVaultLP.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L7-L7), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L12-L12), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L16-L16)

```solidity
File: contracts/reLP/ReLPContract.sol

5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

6:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

7:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

10:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

11:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

13:  import { IRdpxReserve } from "../reserve/IRdpxReserve.sol";

14:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

15:  import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

16:  import { IUniV2LiquidityAmo } from "../interfaces/IUniV2LiquidityAmo.sol";

19:  import { UniswapV2Library } from "../uniswap_V2/libraries/UniswapV2Library.sol";

20:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L7-L7), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L16-L16), [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L19-L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L20-L20)

</details>

### [D&#x2011;43] ~~State variable read in a loop~~
these references to the variable cannot be cached, or that are `constant`/`immutable`

*There are 30 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit positions_array
121:       Position memory current_position = positions_array[i];

/// @audit univ3_positions
131:       univ3_positions.collect(collect_params);

```
*GitHub*: [121](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L121-L121), [131](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L131-L131)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit reserveAsset
248:         reserveAsset[i].tokenAddress != _asset,

/// @audit optionsOwned
776:       optionsOwned[optionIds[i]] = false;

/// @audit reserveAsset
997:       uint256 balance = IERC20WithBurn(reserveAsset[i].tokenAddress).balanceOf(

/// @audit reserveAsset
1001:      if (weth == reserveAsset[i].tokenAddress) {

/// @audit reserveAsset
1004:      reserveAsset[i].tokenBalance = balance;

```
*GitHub*: [248](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L248-L248), [776](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L776-L776), [997](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L997-L997), [1001](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1001-L1001), [1004](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L1004-L1004)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit optionPositions
329:       uint256 strike = optionPositions[optionIds[i]].strike;

/// @audit optionPositions
330:       uint256 amount = optionPositions[optionIds[i]].amount;

/// @audit optionsPerStrike
337:       optionsPerStrike[strike] -= amount;

/// @audit totalActiveOptions
338:       totalActiveOptions -= amount;

/// @audit optionPositions
343:       optionPositions[optionIds[i]].strike = 0;

/// @audit optionsPerStrike
414:       _validate(optionsPerStrike[strikes[i]] > 0, 4);

/// @audit latestFundingPerStrike
416:         latestFundingPerStrike[strikes[i]] != latestFundingPaymentPointer,

/// @audit optionsPerStrike
421:       uint256 amount = optionsPerStrike[strike] -

/// @audit fundingPaymentsAccountedForPerStrike
/// @audit latestFundingPaymentPointer
422:         fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][

/// @audit latestFundingPerStrike
/// @audit latestFundingPaymentPointer
436:       latestFundingPerStrike[strike] = latestFundingPaymentPointer;

/// @audit fundingPaymentsAccountedFor
/// @audit latestFundingPaymentPointer
440:       fundingPaymentsAccountedFor[latestFundingPaymentPointer] += amount;

/// @audit fundingPaymentsAccountedForPerStrike
/// @audit latestFundingPaymentPointer
443:       fundingPaymentsAccountedForPerStrike[latestFundingPaymentPointer][

/// @audit totalFundingForEpoch
/// @audit latestFundingPaymentPointer
449:       totalFundingForEpoch[latestFundingPaymentPointer] += premium;

/// @audit fundingRates
/// @audit latestFundingPaymentPointer
465:         uint256 currentFundingRate = fundingRates[latestFundingPaymentPointer];

/// @audit lastUpdateTime
471:         lastUpdateTime = nextFundingPaymentTimestamp();

/// @audit collateralToken
473:         collateralToken.safeTransfer(

/// @audit latestFundingPaymentPointer
493:       latestFundingPaymentPointer += 1;

```
*GitHub*: [329](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L329-L329), [330](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L330-L330), [337](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L337-L337), [338](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L338-L338), [343](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L343-L343), [414](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L414-L414), [416](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L416-L416), [421](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L421-L421), [422](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L422-L422), [422](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L422-L422), [436](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L436-L436), [436](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L436-L436), [440](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L440-L440), [440](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L440-L440), [443](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L443-L443), [443](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L443-L443), [449](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L449-L449), [449](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L449-L449), [465](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L465-L465), [465](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L465-L465), [471](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L471-L471), [473](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L473-L473), [493](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L493-L493)


### [D&#x2011;44] ~~Save gas with the use of specific import statements~~
Importing whole files rather than specific identifiers [does not waste gas](https://ethereum.stackexchange.com/questions/138876/does-solidity-optimizer-eliminate-unused-internal-functions-of-libraries), so this finding is invalid

*There are 6 instances of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

12:  import "../uniswap_V3/IUniswapV3Factory.sol";

13:  import "../uniswap_V3/libraries/TickMath.sol";

14:  import "../uniswap_V3/libraries/LiquidityAmounts.sol";

15:  import "../uniswap_V3/periphery/interfaces/INonfungiblePositionManager.sol";

16:  import "../uniswap_V3/IUniswapV3Pool.sol";

17:  import "../uniswap_V3/ISwapRouter.sol";

```
*GitHub*: [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L16-L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L17-L17)


### [D&#x2011;45] ~~Unused import~~
These instances _are_ used

*There are 91 instances of this issue:*

<details>
<summary>see instances</summary>


```solidity
File: contracts/amo/UniV2LiquidityAmo.sol

/// @audit AccessControl
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit SafeMath
6:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/// @audit SafeERC20
7:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit IERC20WithBurn
10:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

/// @audit IUniswapV2Router
11:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

/// @audit IUniswapV2Pair
12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

/// @audit IRdpxEthOracle
13:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

/// @audit IRdpxV2Core
14:  import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

/// @audit Math
17:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L7-L7), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L14-L14), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV2LiquidityAmo.sol#L17-L17)

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

/// @audit SafeERC20
4:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit AccessControl
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit ERC721Holder
6:   import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

/// @audit SafeMath
7:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/// @audit TransferHelper
8:   import { TransferHelper } from "../libraries/TransferHelper.sol";

/// @audit IRdpxV2Core
9:   import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

/// @audit IERC20WithBurn
20:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L9-L9), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L20-L20)

```solidity
File: contracts/core/RdpxV2Bond.sol

/// @audit ERC721
4:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @audit ERC721Enumerable
5:   import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/// @audit Pausable
6:   import { Pausable } from "../helper/Pausable.sol";

/// @audit AccessControl
7:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit ERC721Burnable
8:   import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

/// @audit Counters
9:   import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Bond.sol#L9-L9)

```solidity
File: contracts/core/RdpxV2Core.sol

/// @audit AccessControl
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit ERC721Holder
6:   import { ERC721Holder } from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

/// @audit ContractWhitelist
7:   import { ContractWhitelist } from "../helper/ContractWhitelist.sol";

/// @audit Pausable
8:   import { Pausable } from "../helper/Pausable.sol";

/// @audit RdpxV2Bond
9:   import { RdpxV2Bond } from "./RdpxV2Bond.sol";

/// @audit IERC20WithBurn
12:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

/// @audit IUniswapV2Router
13:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

/// @audit IStableSwap
14:  import { IStableSwap } from "../interfaces/IStableSwap.sol";

/// @audit IRdpxDecayingBonds
15:  import { IRdpxDecayingBonds } from "../decaying-bonds/IRdpxDecayingBonds.sol";

/// @audit IDpxEthToken
16:  import { IDpxEthToken } from "../dpxETH/IDpxEthToken.sol";

/// @audit IPerpetualAtlanticVault
17:  import { IPerpetualAtlanticVault } from "../perp-vault/IPerpetualAtlanticVault.sol";

/// @audit IRdpxEthOracle
18:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

/// @audit IDpxEthOracle
19:  import { IDpxEthOracle } from "../oracles/IDpxEthOracle.sol";

/// @audit IRdpxReserve
20:  import { IRdpxReserve } from "../reserve/IRdpxReserve.sol";

/// @audit IRdpxV2Core
21:  import { IRdpxV2Core } from "./IRdpxV2Core.sol";

/// @audit IRdpxV2ReceiptToken
22:  import { IRdpxV2ReceiptToken } from "../interfaces/IRdpxV2ReceiptToken.sol";

/// @audit IReLP
23:  import { IReLP } from "../interfaces/IReLP.sol";

/// @audit EnumerableSet
26:  import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/// @audit SafeERC20
27:  import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit Math
28:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L9-L9), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L16-L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L17-L17), [18](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L18-L18), [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L19-L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L20-L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L21-L21), [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L22-L22), [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L23-L23), [26](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L26-L26), [27](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L27-L27), [28](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L28-L28)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

/// @audit SafeERC20
5:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit Pausable
8:   import { Pausable } from "../helper/Pausable.sol";

/// @audit ERC721
9:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @audit ERC721Enumerable
10:  import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/// @audit ERC721Burnable
11:  import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

/// @audit AccessControl
12:  import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit Counters
13:  import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

/// @audit IERC20WithBurn
16:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L5-L5), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L9-L9), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L13-L13), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L16-L16)

```solidity
File: contracts/dpxETH/DpxEthToken.sol

/// @audit ERC20
4:   import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @audit ERC20Burnable
5:   import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @audit Pausable
6:   import { Pausable } from "../helper/Pausable.sol";

/// @audit AccessControl
7:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit IDpxEthToken
8:   import { IDpxEthToken } from "./IDpxEthToken.sol";

```
*GitHub*: [4](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L4-L4), [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L7-L7), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/dpxETH/DpxEthToken.sol#L8-L8)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

/// @audit SafeERC20
5:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit ReentrancyGuard
8:   import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @audit ERC721
9:   import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @audit ERC721Enumerable
10:  import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/// @audit ERC721Burnable
11:  import { ERC721Burnable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

/// @audit ERC4626
12:  import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

/// @audit AccessControl
13:  import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit Counters
14:  import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

/// @audit IPerpetualAtlanticVaultLP
15:  import { IPerpetualAtlanticVaultLP } from "./IPerpetualAtlanticVaultLP.sol";

/// @audit ContractWhitelist
16:  import { ContractWhitelist } from "../helper/ContractWhitelist.sol";

/// @audit Pausable
17:  import { Pausable } from "../helper/Pausable.sol";

/// @audit IPerpetualAtlanticVault
20:  import { IPerpetualAtlanticVault } from "./IPerpetualAtlanticVault.sol";

/// @audit IERC20WithBurn
21:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

/// @audit IOptionPricing
22:  import { IOptionPricing } from "../interfaces/IOptionPricing.sol";

/// @audit IRdpxEthOracle
23:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

/// @audit IVolatilityOracle
24:  import { IVolatilityOracle } from "../interfaces/IVolatilityOracle.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L5-L5), [8](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L8-L8), [9](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L9-L9), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L16-L16), [17](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L17-L17), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L20-L20), [21](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L21-L21), [22](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L22-L22), [23](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L23-L23), [24](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L24-L24)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVaultLP.sol

/// @audit ERC20
5:   import { ERC20 } from "solmate/src/tokens/ERC20.sol";

/// @audit FixedPointMathLib
6:   import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";

/// @audit IERC20WithBurn
7:   import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

/// @audit Strings
10:  import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

/// @audit SafeERC20
11:  import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit SafeTransferLib
12:  import { SafeTransferLib } from "solmate/src/utils/SafeTransferLib.sol";

/// @audit IPerpetualAtlanticVault
15:  import { IPerpetualAtlanticVault } from "./IPerpetualAtlanticVault.sol";

/// @audit IPerpetualAtlanticVaultLP
16:  import { IPerpetualAtlanticVaultLP } from "./IPerpetualAtlanticVaultLP.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L7-L7), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L12-L12), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVaultLP.sol#L16-L16)

```solidity
File: contracts/reLP/ReLPContract.sol

/// @audit AccessControl
5:   import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

/// @audit SafeMath
6:   import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/// @audit SafeERC20
7:   import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @audit IERC20WithBurn
10:  import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

/// @audit IUniswapV2Router
11:  import { IUniswapV2Router } from "../uniswap_V2/IUniswapV2Router.sol";

/// @audit IUniswapV2Pair
12:  import { IUniswapV2Pair } from "../uniswap_V2/IUniswapV2Pair.sol";

/// @audit IRdpxReserve
13:  import { IRdpxReserve } from "../reserve/IRdpxReserve.sol";

/// @audit IRdpxEthOracle
14:  import { IRdpxEthOracle } from "../interfaces/IRdpxEthOracle.sol";

/// @audit IRdpxV2Core
15:  import { IRdpxV2Core } from "../core/IRdpxV2Core.sol";

/// @audit IUniV2LiquidityAmo
16:  import { IUniV2LiquidityAmo } from "../interfaces/IUniV2LiquidityAmo.sol";

/// @audit UniswapV2Library
19:  import { UniswapV2Library } from "../uniswap_V2/libraries/UniswapV2Library.sol";

/// @audit Math
20:  import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

```
*GitHub*: [5](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L5-L5), [6](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L6-L6), [7](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L7-L7), [10](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L10-L10), [11](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L11-L11), [12](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L12-L12), [13](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L13-L13), [14](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L14-L14), [15](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L15-L15), [16](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L16-L16), [19](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L19-L19), [20](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/reLP/ReLPContract.sol#L20-L20)

</details>

### [D&#x2011;46] ~~Unusual loop variable~~
These instances all properly use 'i' as the outer for-loop loop variable

*There are 12 instances of this issue:*

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

246:     for (uint256 i = 1; i < reserveAsset.length; i++) {

775:     for (uint256 i = 0; i < optionIds.length; i++) {

836:     for (uint256 i = 0; i < _amounts.length; i++) {

996:     for (uint256 i = 1; i < reserveAsset.length; i++) {

```
*GitHub*: [167](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L167-L167), [246](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L246-L246), [775](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L775-L775), [836](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L836-L836), [996](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L996-L996)

```solidity
File: contracts/decaying-bonds/RdpxDecayingBonds.sol

103:     for (uint256 i = 0; i < tokens.length; i++) {

156:     for (uint256 i; i < ownerTokenCount; i++) {

```
*GitHub*: [103](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L103-L103), [156](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/decaying-bonds/RdpxDecayingBonds.sol#L156-L156)

```solidity
File: contracts/perp-vault/PerpetualAtlanticVault.sol

225:     for (uint256 i = 0; i < tokens.length; i++) {

328:     for (uint256 i = 0; i < optionIds.length; i++) {

413:     for (uint256 i = 0; i < strikes.length; i++) {

```
*GitHub*: [225](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L225-L225), [328](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L328-L328), [413](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/perp-vault/PerpetualAtlanticVault.sol#L413-L413)


### [D&#x2011;47] ~~Using named function calls is a much safer~~
A named function cannot be used here, because it's not known to the current contract

*There is one instance of this issue:*

```solidity
File: contracts/amo/UniV3LiquidityAmo.sol

344:     (bool success, bytes memory result) = _to.call{ value: _value }(_data);

```
*GitHub*: [344](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/amo/UniV3LiquidityAmo.sol#L344-L344)


### [D&#x2011;48] ~~SafeTransfer should be used in place of transfer~~
The instances below are not external transfer calls, so using `safeTransfer()`/`safeTransferFrom()` is not invalid

*There are 2 instances of this issue:*

```solidity
File: contracts/core/RdpxV2Core.sol

861        _transfer(
862          returnValues.rdpxRequired,
863          returnValues.wethRequired - premium,
864          _amounts[i],
865          rdpxBondId
866:       );

924:     _transfer(rdpxRequired, wethRequired - premium, _amount, rdpxBondId);

```
*GitHub*: [861](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L861-L866), [924](https://github.com/code-423n4/2023-08-dopex/blob/0ea4387a4851cd6c8811dfb61da95a677f3f63ae/contracts/core/RdpxV2Core.sol#L924-L924)


## Rubric
See [this](https://illilli000.github.io/races/2023-07-lens/scorer.html) link for how to use this rubric:
```json
{"salt":"79d71a","hashes":["ab66d7e6ed","1c9a06b760","78a30425fb","8734585791","a7df10a09a","9b3cebbe5b","b92515ee77","c867e717f9","a2d6996739","0d9973ab74","4f6e37a361","821f9c0dda","ec149aef52","f4dbc4f13f","b67599372e","b6319c055a","002a61bb5b","a3af926ac5","8e50a40555","0d1a190d86","161f2c84aa","4da74879da","20014d6d83","1aaa863220","fc333e86ca","2b9c5ebe76","6f0e6f05fe","dc42231dac","e810098178","ed52b1836d","c549486c96","db54216fbb","030353ddb4","9415e0da14","3a95dab0b7","1f043e7622","9c0981161b","9ac7a5840a","2091afe863","d136883550","a1c7750c98","42e7ae8f81","1f043e7622","9c0981161b","9ac7a5840a","2091afe863","d136883550","a1c7750c98","42e7ae8f81","eb4cf21bd4","3ce0b3ad9a","13cbaad45f","e872235c6f","06625d796f","7c27090ec0","63c792f2aa","70418b4146","d9349c9d01","cafbb92cf0","beada54aad","c6feb2b242","9a384bcce4","c12a14008d","8e83664286","ce9b58e652","ee0bcd1409","09c2302346","5f42bf55c5","81208f4514","d127eb73e6","b78ae6e18f","fed514394c","0da95dff9a","753a2c74a0","147fd694a0","1a384161be","bc762d47c6","58825da3c2","5c94df7483","f61b650bfd","12aa36a28c","7bda20511c","deef8c10bc","e24c4accb1","9de3c3995e","0e2949820f","470031f847","ba4e26dad1","a683fd4d63","11b28f71f6","b7da2191a7","2ef809fc76","89b1fb360f","9169495a76","af716d0f01","0cd8d6f3d0","55a0446a4b","5142023f4b","96295ec8de","086b09e330","070907188b","786d765331","3830e6af0c","0a1c2baf79","1da1033b39","175b5a937a","2fc3688c27","fd5d7b41b5","16be7392b9","13bf00c4ae","bf750bf395","d0077e2258","6a8ff9d8b0","b8cf5b11af","0b34bb7fd8","7a01796076","d95340ebb8","b08a0185a7","d0ddcdb377","66ac02a052","c3e336f0a7","0962a2880a","93989c9b36","a9c6c8aa20","3ff7f26d1b","2616d55690","9db9ba09d4","a0dc16d2f6","2fa0673e10","6b7c3f1da5","259ff928f0","20c0a1d106","81dc91d2b0","c80dbfdaed","bb8d04fbcd","048de526aa","956fd25b43","a68952a819","89a5cf522a","630c24bf88","c80dbfdaed","bb8d04fbcd","048de526aa","956fd25b43","a68952a819","89a5cf522a","630c24bf88","6623ceae01","024795787f","36783b5345","b286d75c52","9ed8afde13","0bb15ff860","8619edba00","d69ed41910","0e9a4d7e31","bfed68f2f3","1fac9c0833","5671c17394","b537b3fe04","c1749e5acf","adf47fca5d","477fa50be5","7407814177","a2a58d8a8c","efa181d7a1","b996d18bbc","8999651cc9","795f2204e7","9c50738be6","6e5f8cb708","ead11847aa","24e5df696b","a8307d2cb4","01a60c8a76","c9f151e9d3","a64ab1c29d","56992afc5a","676696c26a","b1f6d23256","32f825f3a9","7e885efd5d","238a1d2d55","fe79f1076b","02e1fbd926","c27738014c","0ef580d7f6","c4a28f808e","b7546f0d14","9af4cebf71","4da9c10d19","3624547981","e359838ee1","aace257ab4","7377c2b6e8","0b304cdf82","bc740ece28","e3cba8fd4e","6961c9b22e","00e46bb129","a42e9b44af","60d9b97110","0dd0e58c18","2ef792dcfb","c89db27ae9","b4d91bd96b","c7e0684894","2c63fe042b","96e432674a","d67513480a","07f52bdfa7","712778db2c","c0b8cc632f","b2c43e0904","6000d8d175","8809360072","b16982f64c","c1d42a9008","a6db863a34","5f6bf60069","be95bfd8c5","a692f04041","38e175efce","4c3a16520f","6b7950cfdb","155534820d","8b26420e4e","49562bccdf","c76cbb1efa","7122090ac2","809a8d4aad","c3e6225d65","425d127db2","197569fab6","5447e5f0ad","c7840b6bd9","08348301d3","4bf69afd49","31d3feca7f","b9fe880f1f","e286fb7659","d89ffe003c","df6fa4baec","b5e9e62f1f","3eb8c032bc","dc9b24442a","cebf5d9839","6c1085f4be","2d79acd09d","a9b5296e1f","694433847b","adef1f38ce","9e4f63bfa1","dba4c8735f","a2bc0b3091","527ca24410","0a07ddfeb2","b5d7aeacdd","39320e6f8b","b891ab4587","1316d2e702","4f03408b24","c41103733e","917e05f43b","ac919ae8ae","e075da227d","8df5f141d2","f2c9509aba","8d665fd6ff","51ba54dddb","f28519ab11","87e9c2bbae","16041bf786","85d0810ce3","b59e922cfb","4e31e6be26","ac49c1620b","019b48e9b3","a926ffb257","85d63bd38c","1c60738635","44e194a209","c3fc87906e","9e0f6203be","388cfaa0d7","69b5175c00","ec165d172c","09bbf3162e","32c1a1a788","16adfbe0e8","2ef33ad52a","a95ed5a312","814debc3f5","4d5ee082bc","35526f6cff","0597ef695c","0ac86b0f53","51382e4bab","0ee9b689c6","d9bad8d1d2","1e28117c7a","1c63cfd7c4","5872ad4724","c0ed29ef5e","3fa0477db9","37a5f4031e","e8587e29e7","978521c45c","3ee741a2d9","7f8cc51b52","7352959f1d","26859f20ec","09dd6f63cf","93fdba2212","0a3b26626e","6077128f28","7e95373a63","24a385cc84","4dc287cf7e","b7541b2f21","c8bc34c1bc","7862187158","54470b75d5","2c75c7634d","ea84e7e8e2","c277efd19a","cfdf87bbef","526ed4c25a","dd5500c128","1a87e9a3f7","ecdbe775d6","f05f6c5f20","c70666603b","0575039efa","0d628f5f7a","c280c05a83","85f2b3a29a","00d48f4258","0b903e02b3","99c9740798","8fda382a4b","a499ec6672","a7d237c899","8f4c336ee7","7ec255ea37","c16115f04f","90a1d36187","cffc51e19e","219d330d93","00ea354216","30d02b6485","3e4addffcb","2fc16171af","a38bd9f2d8","d9654d6de2","649b7ce8b1","9a7f60732f","c255bdf6a9","b0ee8be1f5","318cda3d61","074d7f9d23","d17ba577ce","00c2f8f0c8","b6baa84be3","fc112845bb","b8ae7392b5","aad3be3625","7eef57a47e","cad4146129","0697340367","9a22287653","5eebb11cd1","74a478c0f1","b69e02ba26","663fd542b1","b299ecfa23","9d2e61db89","d882c4c19f","895edd8324","be0498e233","a585d520e3","ca80567b06","14ffcec55b","7aa8b67375","4063992b87","2900b7b761","3032083d98","ebf8785638","d6197ea283","fa0e12d4c5","0656aecfcc","fe775490b2","1e68acbab6","7836372928","dc3adf974d","ceb536e092","2c14338e33","f2f07748ae","f4f38ff86e","5fe857db31","a308398f51","4bc8f0c6ab","98d15e98d8","a24146caa8","0aef977a1f","0e57776a7b","c0d430e361","e011b4f462","a5498e596c","27762cd441","1847b7ee51","648e1a4120","880c0030ab","2343ea58e3","d7daecb064","47b9d49f33","d9787bd54a","14c53f1c4a","9ab226918a","3585bec6a1","5d3e8896e6","a66042f9b0","461bc46ee2","c3e2753206","e2343d6ab5","89949609b8","33cf41fd85","a8b7526041","40547544da","62a3f074c1","18b03f9a2a","875cddcdc0","3e6d142008","4c01fcf4eb","1d9c84e564","d4669422a7","d52aeb8928","10268b21c2","e6e04e2e05","745a23a62d","4c6f9c390b","e77fb80656","e9f687b18a","c0a0f54fa2","08c99500f6","320c234297","d28612be6d","87b1bae465","e77fb80656","e9f687b18a","c0a0f54fa2","08c99500f6","320c234297","d28612be6d","87b1bae465","e1030b6b09","082565e50c","7507303137","68e0dbdfdd","330694f464","45d5aa8c99","08538f38e4","4e49881142","b8cdce7aed","bb5c7eb2a2","5fc1ad4fef","df4475dc57","7c3218fb26","909e9f18c0","b3b5af62fd","457aa8a66c","56e1ab4fa4","9981e6c252","698e22458a","28652e2691","c945c199d6","b2d338cda7","dc1c4b7fe1","01c668302c","b521ffc328","36a1cb195d","9975acb9ef","01fa5c016c","fd29e31d47","609832fc49","2d9e08c457","52257a2f5a","6883cb0e6c","34d73e5b28","9c4e834fc6","c366c0d5a3","bc6300343e","e6ff2d295d","4a9c920475","7bc2a2524e","9785af4ba0","f180a671ed","a347bc2302","6fc92440d4","4c9feb41e2","122e97db0e","6d07ad7af4","861c9d80ef","26bd29604a","645628c217","739783aa7f","86e582c7f8","1b7fbf1729","18d215d778","e01f9c7c57","9dfe68ee6b","76f0a9e5ca","5304a45285","bdc72bba90","86bdc37b37","0791d6cbab","7627330a3b","3dd4846cc8","50f3d58de8","9951d852b9","2726983fd7","87abb56c43","d46b51b8e5","60f6319b13","ebe608fe97","a22fb5e48b","d91ccc144c","9e69f74864","14d1d0c040","33de6771f0","57b07f5379","a6a918738a","e4fb427ebd","ed314632d8","798771959b","ed15a907b2","a58b4ba5fb","7b0e5f9b8e","b3458e6275","ae1d1dc675","50a3dcc035","d84ccdf305","5647c1074f","6223e1994c","51a35d335c","03dc8b0639","a22fb5e48b","d91ccc144c","9e69f74864","14d1d0c040","33de6771f0","57b07f5379","a6a918738a","283760e6ee","3edf817b31","5773016ed1","32ad5443de","1bac8de9ae","2be4587fbd","5def4e77e9","38938c6c74","82961b3291","39d49e15df","e82acc73da","5c7820cdb4","d13514cd2d","0ee75d2536","cbbdefe58d","5c24adca7c","3e08d5a3ce","7b960188e8","dbcaefc3b1","3f17242095","a68de9c83b","d407d474d1","fd2f11ded9","77e4676a65","c09c27cadd","4c7a4a83a7","f8cdd675d8","46934fa230","b03f95a0b6","a01d2000ba","850a0ba57b","0e93c08168","c355f1df9c","12c4f2816e","8617a126d1","6509f703e9","d3e4bcb678","dd77edc8ed","fbfc0a6b7f","3bea2e1cb1","f76a6495fb","c596703151","05ef1edfe5","d4523daeb1","007d9790fc","c27f35552e","98fb67cb22","e3896ea54e","fd32684d62","983e71fb02","e6eef09152","ca3552328f","e211f590b9","a40a4e21f0","57677cb9bc","0b5d2138dc","d52f6c1f19","7406424fb0","b8f562021d","3e16cd1dea","3d4fdfd8e7","4c12de9473","9beece202a","abd61ec218","f4f30098a0","a541211c6c","d287ed5dfc","23916eaed1","68c6572e0f","e752221f8a","ce6ed995e5","096de13d79","57f234440f","374c1d7b94","5de28408eb","eeb4252ca6","efd6031d83","cf0d1c0ee8","d6ff6ab3f6","a8cf2db857","d1424f26eb","008b5839a4","64e058ef45","572386df24","3dab35aa0e","04f5a4e21d","72720d17d2","da0841c140","875aa70fc6","66f6be63d7","83ca63735b","031357147f","f796120685","1023de3656","28cce5f046","1211f2052d","958e32c42e","b065e03605","4cd7c8a6a6","50c16284b3","2fb68eeb26","a10b071cb4","e9bdb0d2bb","e573a9520d","31eb5a037c","a4687fcf08","7a5594a181","c7d050c2a1","04f8d2720b","18ed208112","dbfb933924","836caf9aec","abd61ec218","f4f30098a0","a541211c6c","d287ed5dfc","23916eaed1","68c6572e0f","e752221f8a","b007fc7b31","f4118af415","92a45fcb4a","7fee2bdb7e","e1c52e6924","cf6d90f426","841ed6f388","9db58eb632","0e7b92fc40","37405271cf","abb7a177e9","0770d47201","74cf797c1d","0a0870738f","5819b8c9f9","3624936e03","972f1b495d","75f6aace54","9be2901cea","d56d13a95d","e3ef03dd50","0a12ae245c","45c38295b4","c35ccf8ff3","1fbe679ca4","0317a4a069","9de3ca39b2","a047a660bc","2a0a3aec21","6495c21521","3f474af265","4415776a88","20b47fb897","1a4c1d658e","e213b50afa","afc276c1b4","049f9f3aba","546e7fe864","00fd1dba75","88f9a00b6e","89565ff265","9d4101f7a4","3b56dc8743","d5acc409f7","ba41944b54","b4d590516d","bb75d889ae","f49b3afc5f","f88e2f34d4","87c2c13f38","d20b68a729","e2922f43a3","8c30fffe0a","6f4b88f19b","a0b021221b","a1cc113d26","9e3a326834","d0ad8e5ac0","3dc6e7bde7","72944fcbdc","a43b310871","0385bbbaaa","9557b08a61","afc276c1b4","049f9f3aba","546e7fe864","00fd1dba75","88f9a00b6e","89565ff265","9d4101f7a4","c3d8e03645","0b78fdc7e9","8bc1633d97","f87ef524fe","60c8e4aeee","43f3ca4e2b","e38fae9312","fb28f76425","4c45b635cd","7cad7c4d3b","c2ee906ab0","bc0beac283","f375f8f3f6","1e1249d7a2","283d90ab64","dbb4034aae","34f89331fc","d09c60ab10","03138c4121","6f5fe08c2e","4788b6eaba","aff1ad5f60","8c22f1b6fb","a8f9558ca3","0e1222d26e","4e224a886b","88f2bbaeb2","0b34083f22","beadc834bd","c2f5b83227","6ef2e4dc92","0fe5bc9174","43729b28ea","7f4c04471a","376a5bc51b","b29a70a42e","0431a15a12","4787282a37","3cdd4dcf26","34d2d7b20c","17a8a1a69a","6e12263f3a","c2d2c508bd","570f89e3b5","83784c1353","239e050aad","50772a72cf","d17d43bfb6","df0fd8f88e","fc6e2f6f3a","5e8b0d95bf","611e75b78e","0ae12f899d","06c2526b0c","b874d7ed49","2a4fd9733a","4fca397108","3a1cda4000","9c340b1593","c5023a8693","ac6df90719","39c39ce3c3","ce91d6b4c4","299af899f4","6b4e327d2c","01ab4963a7","be06ef7705","8050321b3b","4badfd5bb1","63d0d24f25","f6c1299afd","e073e9f47e","e0765db7ee","01225bc8a5","dd8620097f","29a99083c4","d8d4407d33","b4db49fe73","9c9752c19f","0e01f00598","757b2d02e3","9a311a4734","d767123ebc","eb7ee30cfc","ada417216c","494ddabd1e","cd3dbbab2c","8b58061455","12464bfeb8","f66213a099","435eceedfa","3349a570af","bafa998e57","6685915d2d","9784e58596","1ca7ef2f97","dfe3f4496d","7618aeac8a","ca14a4ae10","a15e8907b2","fe9afbf862","04058c6fff","57e82b54c4","1ddd0c5185","3deccae61f","f63d415564","cfce42b92f","fdd2781666","b1403d2108","9732158911","6324a4d741","32d179edf4","e3d7a81ba5","28f40e6ee3","c6d11d3a3b","f64d45a3d0","dad87d4122","46975d2a48","f3a1421800","62aef168a9","ead362b3e6","47fb720576","205f39f017","71be11e4ff","e8e4be9888","74a82c037f","5dec963570","8a1c9794c5","6f15a277c1","1862493936","fff1321d90","6ba5f3ffdf","ad94bc4806","a8f896b355","ab84a9fa1c","1de80ea96a","601531023c","08fa193ab0","4b963966ae","9df2150ed5","e4fb9e5011","4ceac41296","9cb42d7cca","44622e483f","2d1bdf328d","bd7035c292","1366e5a334","abd697a06c","b0f41a41de","cd8b3ee40b","ca1da30eb1","cc51b882d5","8fa2f2e2a4","8868db4fc5","b66961fa98","8cb68cceeb","1f9c6dbbb9","7e1bf57066","ed791cc8e6","b95254be68","ae05ec5ba0","0a7bddca49","6007b81799","c213cf5d2e","d6762c69a8","0943198002","dfbb89b030","1e4f194ce1","405c02ad3b","392c8f084a","658211853e","6ce5b8e967","d257844507","94689434c7","971a7fcbb6","423237f1ac","637c725d72","0f752bf4c9","37c57b5303","7ca64bb395","63999e8f45","ed8e8c8985","12d53ce0bc","de7104d5b6","082f4d36ea","fe71d05c40","b024655808","2286b007d4","75ffae08cf","082156822a","00c2ef679c","c00ef98aa5","7859b413e4","852d53e40a","e1a88db019","e9e0174db4","963e1e9793","60d644478a","ab3b2bd93c","6e91ab93a6","0484ca3399","064144e8e6","e2e278c10d","082156822a","00c2ef679c","c00ef98aa5","7859b413e4","852d53e40a","e1a88db019","e9e0174db4","9375bff261","f93f499a84","edacffc6f5","4428db1736","9546248925","745a16da95","9cd39b960a","e3c7841dc7","e12d2db035","60f3e10e63","e7d6905bcd","2138d3aefa","2888f46700","e93cb6cbd3","9375bff261","f93f499a84","edacffc6f5","4428db1736","9546248925","745a16da95","9cd39b960a","082156822a","00c2ef679c","c00ef98aa5","7859b413e4","852d53e40a","e1a88db019","e9e0174db4","6f6f8ba0a8","f1910a5dad","e2ac7237fc","3c8a732c7f","5bb96cf53d","08e921cb3a","ff2460334b","3a65003a55","0d654b0bea","7ba3eca819","bfa6741644","01e0fd3893","f392ef6b72","a627d58259","8bbef750bf","70d659bfe1","a702cf5937","7563072767","baf11eae8b","b888fab7c8","1d361376fc","3d1ab5f011","e9be8f7e6e","5ba61b2d36","af717d2d23","d5cbe41230","ce6a94c0d8","f3e8f574bc","fa21171343","1a9e98818f","2ef94be331","0a610bf2d6","b3172be7a0","69da63c247","9d38853bf0","f9243a2ecc","c1d6ea88ec","721bed811f","5d0078157f","09dce24e9a","debad75a5f","ba307fa4fb","16c6c8b9ce","eed5f7a50c","620323c6f7","e68aa6f166","7e91675cdd","d4eda7686e","c348d88e81","a96583964f","bb84c52538","8d2e169449","25fc035dfd","84d044f83b","c534b863e3","d1d936383d","325e6bfd65","11b9ba6795","5e2b476f22","858c5d6698","b1e02ec93b","5bf4f0afd7","e136ea6363","3d1ab5f011","e9be8f7e6e","5ba61b2d36","af717d2d23","d5cbe41230","ce6a94c0d8","f3e8f574bc","d1860fbc61","930b040e98","7f968c3129","27ec3b559d","bf08c3b691","8dd1c1c02b","dea17660aa","3de3b36c11","d473dd44f0","2d37980814","890f4568f4","53842a3838","a683e0e2b8","1b5e130719","37ff8c80d0","f8a1aedcd7","67bfb70c22","4777d625fa","55fedde8f1","3ab81d10cc","7bfbfb83da","fcefea50b1","69331d85c5","87d3a9e5d1","575a500674","71dbd3b53c","26f8ba583f","d55612be63","df40fe03d7","692133fe17","9a54364e25","a80575eea8","7eb24eb88b","d476799a03","4e02de327f","04a2e47010","cc46b9f41a","3fa34b7bcf","365c977519","361561267e","0cd92315b8","3386a11696","413119f166","d1597a7580","ab13d45a55","03140ed065","93879f6e86","c8c2f3eb66","adfa0b38d0","e387faf4bb","b42cf9e60f","4bbc2574a3","5a65349171","91e9412f7f","11a7036f86","9f1234d665","bf437a7efc","1c1bc5c075","669a2f9af7","a3f69068e5","d8b70cd40f","a2bf4c93b9","9d0436fde9","04dc0ca10b","3f63c160cf","f00fac94f9","d6f0718022","f0026ad893","3041839ac1","ed44afc22f","6a76ba2e7f","f4e9c4aa2e","c6629cf8c3","639c27b2de","6117f9707b","b709afa1f2","376f3ac642","303358b85d","5c5a032948","640f351723","844183ead7","9105ff96c6","841cb0be1b","c6260440c4","c959a9da99","9d98ec0fbf","63e61e3b4a","164c07a379","e93cfaaa16","51735c3e92","ac6bbf4f3b","edf855746c","317022d1b6","ba86c2facd","b50377a31b","a1cea4d61b","6d55046b00","7dfcd0944b","a742da4ecf","386ac7a2d3","b701a30944","3e78a43145","e6fff21b1b","2d44c9dcd4","f779ea21a5","a0d47e2c95","bb3133ec9a","ae36b8a0dd","96c02efd70","cc158c4fb0","e4343e76da","e12d4420d0","8820402f2f","6ff0a80a5f","c3c5b66cf2","d1a652155a","3aa4370e34","3af475948e","9b8bd4ad1c","bb0bf50782","d7446697c3","968e6c0a4b","b321c4bf06","139673ff97","a7e96c2451","ef9e9f2470","ae14372767","3c696ad6ad","4c79e8722f","ccc5710214","e736229f25","03a8e50eb7","83e9489681","dbc7eba6eb","4534c6370b","9e57568b7b","e2999ef633","af6b5bf2f8","8e5bc6e8a8","1d96341893","3d3637c1bc","877e464ada","fc64be9f45","534b65fceb","4354e76a54","ef747686c7","6c691927be","cf0a89ad70","95ad4ed0b2","7c54848f3f","845484e2bc","c24966c07f","78fe461cfb","46945e8bcb","35264e42b6","86890e12e6","a07866061e","4a63cb5952","5ed65bf9c9","df807bc4dc","8213c82bad","e6b50bebcb","b050e4e9be","cc2836abda","5924df0713","1c080bb013","d9b6fad29c","60fa054dd9","0e0ddc73ff","37d43a20bc","1a97488bd0","361343d52c","a3df9ef029","cb969ba5cb","3ff7e97f2b","603af99f88","8e06208cb3","07c5ae6b31","3070aaaa0b","cabe70bd1a","b8eeb1c6e9","f65c6e710d","7082d9675a","969cb43acb","d4da6129fa","31821f13e6","3d88d160f5","bf73dce9e9","6e7c6eb0f7","e6364dbca1","ab0022a865","3070833b2a","38b91d3127","b8685f91d0","5465482287","cb338efb81","2bfee3ba67","85ffb9a0ae","0ba54d5de4","3b16a481e1","35ab9b9104","c39806163d","b16f6d7485","24cb5b02de","0c41465e2f","5ef8989582","7d067cc36f","fe95c130c2","8d4a54bcb5","bd09b42d6e","852337cb98","91bb28c4e4","908196b278","6e1ca25ecd","ca1c344fa7","c2b60d7095","2973b1bdb5","03d5fad8bd","81face0938","7eeebe3b71","a5efe22bb2","979a6e3da5","c3ab7b974c","9019afd66b","417f002bbc","f4e98cd2a7","801aafea9f","0f6b785e1c","1dc02f783b","e7bdb563f9","e1aeba484a","478a4af801","eb68701fbf","ee4f38e10e","0e1dad4eb2","b5f4b6ac72","a15b2170c7","cafdd501e0","2be19790c8","ec38574e13","5829a7de2c","2dc5816fdb","756d4b4a61","823987fc21","5c368b3dad","97bccb8233","dcc56f1f71","a4d1a38c99","676b365c35","84282431f4","e1a946dadc","c2f9b756fa","a12d4a77fc","cad55d2d06","cbcce3f63b","cc2f857182","8454d567e6","69282a3e47","64727a2e8b","9b02241e24","eb3b85a8e1","8fca2f5954","b3fd70015e","d84a08e722","de0da73d35","af0009cabc","82e1fb55d0","a619d625e0","b1f33175ad","ffa3f2d679","5c843f9715","ff9d305f3d","977afe77a8","5f5588da3b","6e7430dc0d","e39192b0df","a80b6f3e49","557aa2ad21","503bea0d07","69a2580cd4","4e9bd03444","5b0e326656","88e6f1a985","6353f8acf1","46cb1ae6e1","32045ad78d","aafa39de00","09536a0ff3","37ba067c9e","5d053d6c39","c577d23f54","50d160c6ad","5cab9549fb","d161b3f3b2","a105fcb7f9","b3c3f1c296","6d0cdb7b84","816d356279","35af25a49d","c41860f147","51a4597b55","29d5efd829","328207348f","adbc73bffd","b1aaf38ce1","ee8781d451","b97443c064","8a75decfc3","c21d4903f2","bdf9c8f7c8","3fa172d27d","09c693a175","1ac6f5eb83","c9347e38b8","65ccd91463","e65bf13425","6590b40da0","3832fa84c1","67bce87dcc","9615de252a","fb12411fcc","52a508325f","2c5018a108","c872d703de","66025222d2","6215bbc681","b1da13edb5","3e276aab72","f6d96d2d8e","1d134a2314","3e2f3ad8a2","15242891ef","12f6b525ad","87a4bd1a71","bfa5620007","ef38ab2176","3e6974946c","0ba6a7e07d","87b7e3e5f8","a21c35e892","08f2bce432","751848501c","f62e97343c","4102aa48c2","985a55a066","92ad0362b2","4059a1d42d","8903dcef86","4940e5b6d2","e7b56372a2","baf41a252f","0579284cf9","76f0795522","34c9bb556d","9ccf52a5e5","7cae6f974a","dcfc45faed","57c4f2304c","39bf1966c8","26cb6eecb9","bf073f8ebb","6c8d7fa3cd","fccc543123","efce39c5b2","464c147805","8f3edc16cd","f3d7528c88","68875fd9c3","16790638f1","d0e6cc2824","caceae7ddd","35a617d869","33ba991829","4dcf8290da","0f30d9095e","2b29a466c1","dde527c410","298f3ae457","f352846248","0143182817","b8123cf796","431be773c1","84eff5db5e","b44ffcd10d","e195a646a7","6f70aac3ad","a4a9b8b116","2167e0b68f","d7f1f6ac3a","1640d2c26a","895ea4dfba","52e1e90745","3bbeb3ba44","1591c366de","fecc5d514c","591ac7c131","8322b944ff","0df5b74fb1","2def6a4547","3bbeb3ba44","1591c366de","fecc5d514c","591ac7c131","8322b944ff","0df5b74fb1","2def6a4547","0681cd57e9","82e9b1112d","b8b5514535","a489665e37","14b87072b7","93fdc580f9","d175e72354","e81cedd8a7","4adb358937","9b2850557a","c0fb252c44","c67cab0e11","76e5dcd169","626b2cb03a","261c3cfe59","272752f40e","ab74ae24cf","06b1f23e05","306adf70e2","e211f53e8d","559c37f0b8","aa147cffec","964113661b","853610bf24","ad73288f6a","e4bb0908cf","3fa9bcb743","25076135bd","3aebb6d741","c2936a27b1","04e6e4601d","2c2a93667f","64e0776dd2","383a508077","b6d63d8f3b","6426dedaf4","45dc984cd8","611ec86502","89cb93cc0a","d50758c5eb","84a737a52f","846087180f","28b7f6374b","6c87a4d103","8c8398ab9c","99ef653683","90c46523cd","564361534e","b024a2a07c","83eec5b6f1","013c5566f7","6607221fb4","3a0d1d9ed7","93d013023b","a7452073c8","5d49c44094","65caa5e6d4","7ad03f72ee","eeec95d0ef","90138f36a3","d2a6730182","5ad7a7d07e","16da5e0794","f0a9002950","701fbd839e","52425ab501","b539ac4ac6","0a3e23019d","bf0db01e55","8318067789","1299b9e7a4","0a79b0a00a","27d98f4696","95f3a1d8e4","5638c0a172","57cd8caaff","a5576dca7b","0e3a21e66e","95f822a931","7ca2587188","a7e86f6350","2c72be0bb3","409158b5f4","ea5c1200bb","3c967662ec","079f333a22","6419a285e3","f5a4b02af1","6bcff3a80b","3b80a3d74b","5c30dd6e22","ac3a7d27c5","6dadb27226","e67fd68805","4165d1060e","ab4ca2fdc2","b4e63666b3","c377ec215a","ca5c16a755","a1109982de","c60d6018c4","d2bb90c186","5e58793fb0","25f9c6ee29","5c5e3ce4cf","0e545452c4","954ec094b7","5304704ff4","3647b9d26d","3666e125df","62aa92500f","2870b532de","07e625540d","cebeafcb0f","964a9002b2","7db9e86d58","99f702ac9d","bd970fe72d","e37248b84f","fc3135fcbd","3bd48d97e0","12cec13295","9b76880e02","ddfeac1f9b","d555c20a9b","437405fae7","b09edc6d66","8c2d1d54af","4804e1f927","bb7e2b36cc","77200d129a","dd9a1cae0e","0592762e68","f68910164f","4ebf0146c9","fed76708a8","d9d1c6b488","4e6f752566","df37ea1ff4","fcdfdb1565","57bb5ab016","9c89d55576","e32b79ebbd","28e51b8ba4","f1bad0d8dc","7701ac6593","9a5937f8fa","9bfc183277","8a2c2cdd6f","b6cba41253","e17cf45f0d","60d8a980d0","92283510d0","7bea28a195","0112daea3f","17d9d96753","9574dac14c","5ac589db42","3e3f2184c7","56260f1bac","442b6c32c8","638eda690b","1d657b41e0","6cb1a5ebf0","b1a85d3607","075f77d35a","accfdd6be3","29727017cb","c6ea2e83ce","dbe60001c6","f3c3968940","138673104e","485914cb40","c7864a114a","28827b2144","7263de1055","82e637eb3a","2fa2602ada","5f0f91f516","607135b2c6","ce91dc67e0","286ffc021d","4898492ce2","262661fc65","80f2d26931","5e03b0ef31","ad2e5b9ba9","167795640a","fc05d3f2b6","a49fecdfa1","98906496d1","a01c9b2fb7","825e25e3a9","724d491457","3bf713727b","d39c826c6d","4430690e24","bb9e5e0e8d","89df203fbb","015a194695","f8975c3097","2f175120e2","f563f020c8","b6b59b3dff","81102bafa9","580cf76f4f","9742449493","89a9fb8b84","48ff48dc24","393cdfd2cb","cb0c36df9d","b0c511dc87","91e8d72fcc","11859d0ab8","9d7c3d43a9","51fc4615d7","8617e6d91c","75872aabbe","89e33ca15c","168865e317","76f927313f","9fbd796c63","a8e21a6008","9ba52eeb37","75872aabbe","89e33ca15c","168865e317","76f927313f","9fbd796c63","a8e21a6008","9ba52eeb37","cb0c36df9d","b0c511dc87","91e8d72fcc","11859d0ab8","9d7c3d43a9","51fc4615d7","8617e6d91c","430084d74e","9844ebdd03","6f5acc2b5a","c9084b8619","f3a41f988e","3e97b361c4","3454f916e5","7c0b122a55","b7f94749de","31113810da","7265510737","d5d2d8cd93","b5e98b8425","52c6b64028","037479bf73","76d99b9478","eeaaaa0a43","8da0837f4f","27b20ba022","87989339ac","fa51057622","8284d1fc86","85219892e1","30d1bd3888","00e48595f0","51ff002a12","55f67f2ed5","fcc0e902a3","44dddc731b","e59d00ed40","fef9c76eab","18ca4bc770","5bf13dcf56","0a89c4a77f","cd5f0bba68","9c0438c5d6","2687ce089a","8df466e4dd","6b5ec3d165","d7367c7783","dc892a7b77","104c9343ee","2e2557fabf","6bcddfa7e8","2db8b4a7a9","59d681e27a","d73e801499","af9b750e0d","46c3af2fbd","44dddc731b","e59d00ed40","fef9c76eab","18ca4bc770","5bf13dcf56","0a89c4a77f","cd5f0bba68","12d0004f17","53bb084996","f094bf1ada","a395e3a91f","62a7b34aee","103c112011","03c381ffb1","83a7a8cba0","8ef0ce87d9","f29ef2a807","3d3fab5764","b5f23da6c4","9fe20411e1","f8bea5736f","9b04da57de","5707820774","11cca8080a","530f0df39d","d49406cf10","b78451974e","934dbadde2","6cdb4372c6","ec3f3f5ef2","04cf365328","42ae815c66","114a0058be","dd53ef631b","8b0902e80c","9082f5b250","01f6ca1b35","734bbc2752","4c5df8b97e","e68022c151","8be8434cf6","9caa69c541","a5efc24d9a","7b8f55fe50","f4969daf47","9380423311","ec7b1f1a23","3f8e447032","8c942c85aa","fb06919951","9fb8232790","14a7443002","69b36bcd7b","3e438e850b","f014473b57","87d89faa24","7842bd8704","5acd0bacee","460480e23c","5bdde54984","e3ea4b10f1","73ad51e75b","f2773e2c26","54c678614d","356cd4f4b9","a86daa94a8","fc6fb2bd2e","7fd90ba7e9","04fbaf9e7a","b5d37235f1","eb5dd9cc08","c868aff26a","437dabbe7f","ae80e2b709","48f310697a","2820796668","c8dbdab4b5","89e8c6a5a7","ca026be168","ec836d1d6f","fb6f2dd353","c34bda475c","81de6f4d4a","3ceaf537bd","0840222d72","1a5c2c75bb","4fa526b85b","1788cda72a","92d57ac972","0311a43729","be71cc96cc","0a562a5a62","86d1208433","b8931fbc5e","a62c8c9fa7","54d0b781c9","5faf71d14a","a19b6c0458","0df924d75a","b77bd99829","755fd2fc07","85b574deae","70d1b7171f","325dd28086","c204ebfe7b","65a55cad3f","c13666207a","9d598bca72","920c03eb52","73d2b51753","d659bf7174","97d01829dd","9994036120","e904413836","5b35c818ed","b8fca76fc4","db173b4476","e058c06d32","dedafc98ac","7a3839dc70","8f816a16f1","65222ce377","1627a39c9c","e1073550d1","c690406750","939c236837","68fa75647d","b44fa88265","afaaca4912","d37f3a6a3e","fe3d4f9842","ecfa426eae","bdbe72c8be","ef63c913a4","4746db2e0e","7a2be6e64e","ecad035d6a","a438ed6230","144fb515da","545d09339c","2b4dcf7827","f88f22d338","c14850fdc3","843726a00e","60ef1f15d3","0b5cebeb11","4dee2c02d3","392e5b3975","78b6d5f99f","2b51b04738","e2e05c3bc8","d2f1c94980","4b0f131e04","751b40660d","ef63c913a4","4746db2e0e","7a2be6e64e","ecad035d6a","a438ed6230","144fb515da","545d09339c","d2de79a415","821591734c","81f5c8a596","75a5290e15","087c302c35","a181f66c6e","31c0d7cb7f","5cf3a78451","2790c9dc5a","0dd0e6766c","4822b7cc60","941772debe","582e01cc1b","546ea4e697","5733246eed","bf9e0786c3","ade7284d1b","8f161a1466","288b9555f1","34b55523e1","206f1e625d","0cddd3b984","e0368460a7","27ecfb1323","45535f523b","7dbe56f2ce","3c8daa82bd","0833de5b8c","79776aad84","e8394a7b1c","ecd74dd100","4e300b9568","556a223865","1c3f187cb6","9b481f530f","399d768ecf","6c97d31ca3","ab3ad90002","412f317433","573952be4b","8af9bc738a","f3bff3a70e","afdeec607f","d32adbd82b","131aaf944b","3551655e59","e364aefeec","d9df904e77","bdc7ac66c9","a5a392f920","86d7613258","e3e89c5feb","dc508537db","9b7c820152","752b6645b2","1864fb297c","6e8bd320f8","7474e5741b","df91ad1255","aa503eed6b","fa65c8eb7c","e8c4afb3d0","41ac01acca","fb3a5ae8a0","d32c089fe9","fb02a99436","1c29479956","e477a7ab5c","5baa61b84c","13cc763dc0","a5a392f920","86d7613258","e3e89c5feb","dc508537db","9b7c820152","752b6645b2","1864fb297c","399d768ecf","6c97d31ca3","ab3ad90002","412f317433","573952be4b","8af9bc738a","f3bff3a70e","513c5373ab","57613627ea","d6348f2ad9","414ba150f7","32e0e3e4e8","4e3c8e8171","00bda104e2","4e7dad4bda","add65f7c10","f2511c069c","d08d900b4e","d59c7340ca","de6e40e919","023d630ab4","5585f4e38f","33c5c0c11a","73fc8550c0","d83707ee21","1afd0136e1","194728d699","9782594fa0","4e7dad4bda","add65f7c10","f2511c069c","d08d900b4e","d59c7340ca","de6e40e919","023d630ab4","6394bac49c","094b22fed9","bcb73e72f7","74ea476e07","e92ebc19d3","ad974b5eaa","0ee08985be","d6fb17a36c","a5c1e6ef99","05f186fb37","b66d4c0e40","1aff339f7d","dd824b046a","89a8ff966a","260fb4f642","d5168716c6","4e6f8da9c5","90f4910468","7782deb594","e21e0a6a68","dff9a65ede","3f488c3e7f","5a7a9a0d6a","6f90f49ff1","478c5c5574","70cf993f5a","0127d15930","434bd128a6","ce8cd51fd0","66ea9085c9","fe7e505e15","8c81c3c106","cd1c1fd324","79b8f924c7","63e08c435f","37fbd3b31d","d0950d09f1","82dab6cb79","5aacd384a3","bbaa63f167","a78c4154c1","29910cc473","2e74a926da","07f5854fb7","19c520cf15","87f30117db","2b439a2a14","0aa8ec45ee","eb88e0d471","6da198b5b8","039b9462cc","75a7c8fa35","c3c8827dcd","23f17dbd06","60d603b1e7","d1e202efa2","fa8ce991ac","a308b2cd5b","d2c2f7527a","54941aa224","cee679c792","0eb1993589","ade2531cc2","46836809bd","fc8835b62d","c629095bcc","7b0daa0b7f","e88953e08a","62c8fcced2","30bcd8f1e6","567c658cdb","69f808754c","5a90efc6d7","390fb3088f","b059edd59a","97adcbda1a","1d9912b6c7","3c33825820","e62aadc9e1","9e3050f900","c25c941f69","dc71d81824","7360a94f71","036f5519ef","46ce701490","592bf728b5","ee54d64aac","a10263c8d3","6e43b5bb88","7244a099e4","c268c05577","0edd80d1dd","ce9d6e82f5","1d2792525d","778be52dc7","f1aea29200","08f690359b","0d25f7da9c","2ff8071f56","be5fc1e7e1","fa01853545","8bea477399","20a965d4f1","534855bbfe","d3c0a80af0","4a173c5909","05bb28f428","a004b9eab4","618d7d827c","e30c08af99","c6ead6f115","027fc9e629","99c3e4a1ee","18f037fc22","ccbbbb7685","38d876f064","0d01667b35","0e82aedd6f","a78755376d","7ab7b4ce57","73d94b98c7","18d16c2032","c70c87b590","bf937e318e","eff500a6df","e17898144d","1cc54793b8","0c4ca6fa12","f5efa9014b","570b9b4a2a","5647a6162f","ca82024c6f","9cd7156a99","65bdb6291c","f4fdbeaf05","fef3418e69","5c5af1f30d","bd78ebec42","86ba0ee138","d6322c45ee","1692b1a64e","24043bf364","dd45f7b4f1","1e4935ef41","df88fb5a0a","f03ddf265b","5471eee6f1","c4169d88bf","c53f618428","4387896008","98c7d0f20c","b0bd45022b","947df2ab96","7e6937f334","58647f7886","8bb0fd1b91","66469799ca","1bb4657a29","0bb837affa","de90620e5d","32f3448cb9","806526e874","6f1a7b129f","e6f34c16d6","b54e205a5a","b8ee6d4996","5ca611f843","2a55d3a61d","11e55af37d","4bfb5d0524","74db0c89f3","e5ace9ad0c","671472d98e","fa38e133c5","62fc90b3c5","666c163eb7","5f12297e73","fa580e871d","be96b7a852","e786d4cbd2","ca3dbb93f1","e847857f02","a5f7d8e285","9e09e6bd4b","ff7751e4e5","4ca51d9b2f","aac1e96c9e","63912d3969","5154bc4d23","6ce80c2de3","080474df47","6f44a36da3","816dd72292","f32040c638","54922619ae","6e77ade6a1","dab73e694f","a30a55ed58","0e7a630352","52d897de8b","dfc333906e","c8e64d1989","40fd46e7a0","bf6518da4b","f81cb5927a","e2484a41ec","9bbbc7b281","4d30ec2874","5e9da7b190","653c07b637","5af50fbe33","6c8091455e","e6f10d5b3c","9237e7e436","aa2e907cbe","1c872d4e70","5c9ee32cc9","353d3e2b39","7b582b3f40","ac8e6b9fb3","bbe248bc8f","01907da321","3cb2f65cbc","21b44b1f6f","8c8344bb49","9b46f0648c","389420d155","fd01893feb","ab491598d4","1164220b8e","ebf05b4266","e8c841a516","88a317e4bc","abd29592c5","5e118c86ce","04b61fa707","9f0acc5080","462ad2c278","9b45a99aea","dab868fe32","1bba62a12a","be524c1595","7e80bf6ca8","caa10b5b0d","cc33f55566","1726a552be","967de6427b","b1a54b0d75","8152f9257b","bfc886aea6","d04db597d6","e0fb0551f7","a1bc31b0df","482d0affb5","d181ae0671","f4b0ddbc0c","8b2f509776","362201eab5","012a06dbb5","2a6d67ef4a","3b9f452bb4","6ffb6edb28","cf6d759898","04547c5403","16c626cf16","50e40f2145","ca7e606868","48efe3a504","8f0d534bb0","0b50030c83","cdada4b5e9","b7ffa6b699","e57d165562","594a8b4db7","2c2549f623","d0554e34fb","1bbffd55a1","cf467f6dee","feb1fa07e7","071a3f2d84","2a6d67ef4a","3b9f452bb4","6ffb6edb28","cf6d759898","04547c5403","16c626cf16","50e40f2145","deb9cb90b1","68d73c1b1a","d0467b69dc","e2087d70c5","9f8f86fed4","10294be2df","2542045a8f","3502e05b7f","fcd17735b8","54d5f7b21d","ba38e9158e","753435e33f","636133d228","eae90c3564","4381ca16a4","60e34e9670","4d153a5eec","3362b46d6e","f194cbf9df","a3f08c6099","3865247d6a","e64e7d5c0b","5f2a2e0f51","ce6ed9fd09","b18c8dba02","a28321b972","1cc6abcb51","67f4a6aa83","4e414159db","3112471770","bf2cdb9dc9","80b5d3c52a","30fd01ccc5","3fd7b22851","5207e619a6","ab47af9a6c","6b176be40a","bc2ea4edf0","f7f8542c2d","0505c2e148","ed19b908f6","5620f8b747","1120aeac9f","3169af2ca8","606af8e922","c6836ecf0e","445895e7ea","cfdec8b54c","a9a6c1c617","787df0430f","f06bd48664","11c392243a","bd0818a8a1","443d8e6257","e614269600","89cd26438a","33b06b8f13","2a00eb6b5d","5e58f52f34","112b0bc7b9","8f048c6f10","31b80ab925","ecd7f5ced2","d28848520e","6dfe8617ea","fe34057d61","243c56a410","773d2bb194","cb2dfa5938","3e5611cc82","2babd2bd29","62c32b190a","b477e8b71b","2ce54d6a2c","27bd60b9f4","0621bdc0ed","1e50bf67f2","d8b5fb1a66","49e7bab02d","893ef3707d","5756e282d0","6e9b31de03","1a8430a901","51cc21661c","f65cdb1d55","cc58a1748b","b006b0dff4","dba4f2e283","6359bf5337","7dff092e6c","7f8788da93","5770bcfa96","186be149e6","6ddc0e0d66","de27a4e372","463b57e746","393df748f1","e9c1c04379","d4251a7bb1","7582a8e933","f4b96f4e90","ab3345debc","e55aad2910","e51aab6f2c","417a1c1f4e","563fc8eea3","06eac61bbf","477e2332e4","596dedf49f","0721ab773e","7c5cd1c054","bf4804a9e3","9eaaff9d04","d83d2d1d88","becdbe7234","ee8f30c912","726862aad8","17544b38e0","4c36588b78","eee7d95e1e","e1ae403ea2","47c0afb158","d8bfd5f897","f99e196b2b","57994e10b8","af8eabb26f","4decdcda3f","d136dbab78","17b26b730c","91c52a83c1","37f16a591b","7e71d1068c","b91aa6bba8","c35ab67cf3","0db4c0ff89","175ccf9305","778a0c3313","5fad59a448","1852d16720","20efa68201","c354d8cd33","56627b4183","acf89037d8","97335f81bc","bc5455d59f","b9b64449d7","9f0f946fc6","c31f8433ab","253f5989e0","1e35853c54","f0c8f1306e","c2d3d30a07","b6212df169","111f99f474","8f1c28bc44","603205f85a","0c99be3b2b","e7e52f323c","bf689fedee","af3d960aa7","c2be541dc6","a7eb000261","bb0e5a0f23","c91db82a16","c197aa7016","9b576e72fb","c717dd7334","baf460406a","dca165554f","84c0efe26e","6cfbbdc980","32af45a3dd","3ad0acef79","e1515552e8","35851d8417","248383bf3e","cdb4831ba5","c85041a1f7","84066eaa37","820e19d926","6703c520f0","c975102a7a","a7eb000261","bb0e5a0f23","c91db82a16","c197aa7016","9b576e72fb","c717dd7334","baf460406a","9584b3e0cd","630eb610ff","8cb19eef04","be05f066a2","880b78985d","11a4145c54","cfe3f62a22","72647dea05","dbbe6bb0d5","f4696306d3","3bd0ba88ac","2874f6a5e5","d0b626db5c","c32373c550","fdd4a23112","f1778c6ff1","3fd8c82227","ca3f942bd9","e761f603a7","08fd10158f","9bcedea314","27a01e467d","515eb6849d","00b3cefe69","d199c3b552","35f9101383","4668e12e8e","d5083ba56b","c41108975e","285e177a50","651ae356e6","06570f055d","0003f804c9","7a2301e13d","b01dde21e3","9551b19524","ec4fd6779a","66fef58b47","57cee85d36","5bb3019979","02b0c7a3a2","a7b26bed42","9551b19524","ec4fd6779a","66fef58b47","57cee85d36","5bb3019979","02b0c7a3a2","a7b26bed42","2a1b93f172","159c927445","b9aad15a99","dc4a4cb868","763a71e17a","42a8548bba","d8d8b36bfb","e20e01c6a9","2c4a883241","d9a7d67f4a","3c3d0eec6a","eca4102987","61a8dd8f52","3a4dedfdec","4ba7c1bbf1","7940eb47d0","91abae6f5b","df9bc0be48","14fd93a35c","cc4d7e17dd","249123bd45","e20e01c6a9","2c4a883241","d9a7d67f4a","3c3d0eec6a","eca4102987","61a8dd8f52","3a4dedfdec","4ac120582e","c768814d73","28cfdeb3ec","1e7c79fd6a","7cb0ade2c1","250ddee40c","d3c5bd7a77","6edf98f473","bfae7c2422","f201bee7a1","fb786059ff","274fb8849c","8b652e778c","656ba667db","cffaab34a2","0c3ca941c3","5af7f572a7","17ab106a86","9e96d3b2ea","6d7fdf9f4d","885ed34371","0041276d9b","9fdc69858b","3583a8dab1","5110250a0c","d0fd18794f","4d3c0b5465","6903fbd4c2","9b9255bca2","a0835bdf38","ca59110fa7","70f03fc3c7","c240080118","f6d1ecf73f","2b285e01cc","ff25919556","9fb0a85ca9","db76732164","3441d84969","f77cf81cb6","6be9e3aa3b","c342914f9b","4415bb027c","4c7aa4c6e6","9e0fa99828","48e965a633","428eb2b6b7","d9f8fbf12b","ebe46c2c97","cffaab34a2","0c3ca941c3","5af7f572a7","17ab106a86","9e96d3b2ea","6d7fdf9f4d","885ed34371","ea80ee0596","32496b0de6","0893e5c3cb","7ab0c34eda","7f3559a26b","d7260e823b","d8eea65bed","3cefb1563d","f4f4323c37","9d595407ae","bf70d6f8c6","6203a97451","8d5785a109","efbb7cdea9","cb61e0dd76","6e9cc14546","b3c4310044","5cb28ac446","8022dc9e8a","2d25d5f98e","110543037d","e4f185355c","b345ac5b15","09efcae222","6369594703","5bba6d19e1","ad9006e1b1","c5e80c9605","a21904528a","619a3ed911","13de527152","9c05e33aa1","d816d8bfd5","e7cf75d79e","81843fcac8","cd90151b39","fa1ae84f63","6ab416443b","ca99992c33","335c1d2e3b","d0f0e5a684","1398714a2f","81c8b7884c","ec55efcbb2","b91812b7a7","eb7905121f","299b6835f8","5f537de375","5b8cf38ac6","9fd78f9017","dacc6c013b","a909cc8ded","f28d6dcaa8","9b5d2a8477","0f462cd6b9","f709b4124a","9fd78f9017","dacc6c013b","a909cc8ded","f28d6dcaa8","9b5d2a8477","0f462cd6b9","f709b4124a","652965281f","78d9edbb23","24c8e98619","b7fbed45c5","52d45beeb8","d3190595e7","0ccf4cc371","652965281f","78d9edbb23","24c8e98619","b7fbed45c5","52d45beeb8","d3190595e7","0ccf4cc371","7cbdc70f48","658d7284b7","f1beed033a","544381a1f5","4b65d96ab8","581fe1d35e","ee67f0ddee","163aab0967","b6f1b072fe","8ad163454e","5e60a7066f","ea578d984b","58ea26a4cb","3ffb7bb44f","8c2ddbbbeb","4d29aa3d88","17aa9509a9","37fcb0f504","f4f048acfe","53215087cb","d020c9cf51","d8bfb83516","7aa7159121","53aae5d53b","2d2f67e0a9","357593562e","59220a5161","8f7ceb924a","bb812bce7a","86951022eb","ddb592f847","f24fbe92ab","48b6136603","e44b208b65","623b3bb214","4051a15eb1","54c4f51da9","2aa1a3eb44","4a2e6de2d5","8e693e4f47","31fefa105e","83173701c2","8c2ddbbbeb","4d29aa3d88","17aa9509a9","37fcb0f504","f4f048acfe","53215087cb","d020c9cf51","f6713d1560","88bbc35f80","23e68544dc","b218a793ff","39a62b6f47","4f07c417d8","f15e4c70a8","fb834ce391","30937129f4","0e50498ecd","441eeaf790","27958b4299","81640494d2","a39789d130","ef7ab43f34","987fcfaacc","fc350f67ec","2932e45c8a","7df4d9c6b2","c82d720233","6253fb83b2","fb834ce391","30937129f4","0e50498ecd","441eeaf790","27958b4299","81640494d2","a39789d130","d9afa1a7be","993d8bc17c","2dca78c734","d714a4d58f","0630a3894f","afd52ed914","34ad4a739e","fd2ae7fd0c","9a51da3b79","3bb4245faf","36c3de2674","74be123d36","b275d2c23d","7d74de5bc6","9829abb0ea","c24935cfa1","116a3ac070","4be2a1aa98","91e68788fb","5c3da44933","04bb486e4f","f403a96618","64cf503931","eca1732efa","8cbbffdce3","c78fd1055e","f065b229f7","0516f6661f","da4dd005b4","ff5ba62ac4","324182cced","52ad571dbe","7a8cb3ea98","b8ee2641bb","6ed3f75f82","1e2e137fb8","07dcf3e612","37b92298b6","f5b66fba3b","4afe7ee2af","0f328c8c48","090ceab6fd","25d7fdb226","9d2687fb9d","2fa387f7d2","20cebfd638","4591f6746b","e38369ca55","f7df9f2a36","1fac11a6dc","b2ac55c84a","d450646e57","6a77596eb5","fbd81b06b9","cb0c53c3f2","1cf8e93858","43cc700339","fca4d931e2","cbd0768abc","a0a1fab300","fca71405e3","d5d8cc7ea3","b8961018b8","be84336e94","7fae54d500","e7daed5cac","f39d8100df","95713f36e2","1dbf8ffaaf","aebf8ae329","dc5a4e04ab","ed7b99111a","caba45ef8e","83eb94e666","64986fd425","1cfbc82763","2012ebb979","b586a8def7","2a4bcc2b45","069a5f97c7","d88608a3df","dcb7363834","6d32c1967e","310e86f813","d4a55fcbd0","76321372bd","ce4551226c","16aea85564","1d71a70be1","190175c776","fa5fec3668","4294c1443d","0fbb84fcf6","2bd08273bf","d18f869f44","ff74476d60","f92bde59e0","e7ca35a4da","c2d38f7b39","350c3de349","626cdc956f","b89395ff92","0f55cd7c59","38a288c1f6","f2b49afe56","2489e23c5a","f5f8f99eca","fed71a7ac6","4b7b645e5e","5990e099f7","7f9ba4a06d","32385f1703","26aa3ba4ba","d1e03da330","1375f28046","83469e7e89","fffdc1bd10","07282ac7de","9f40d5dabb","8fdec1eac4","653ba00b39","f13e3419ee","5ec669aa6b","030466c430","3db0adb58f","f5f5493662","1e69777c65","16d12164f5","6257ec7740","e71d6be3d0","d249fa177f","bbe125f058","dfe63cd06b","95e4c7acf9","158827042a","416bf40229","1feb01f6fa","481c16c8bc","d5aec04add","f15bcf1d43","9c75de1e41","12ad2707fe","6304872ce7","758dbd09e6","48e032642a","b7a4338406","a5ceb94452","65bc25e78b","f81333b5c6","414cdca74c","b32446cf2b","d88a1e89a7","510da4bef5","7a8a49bafc","21cd712c2c","d241c57376","f85afe374a","dd3d3b8b0a","a3f1d97392","587e4bd936","4e28b2e192","f7a3fd61d8","63b1dac680","8929918d39","40172b7050","9df43722cc","fb4053bbef","8c2b902ce7","21cd712c2c","d241c57376","f85afe374a","dd3d3b8b0a","a3f1d97392","587e4bd936","4e28b2e192","fef400fbf6","9ee3b3b85a","94d0ad3fd0","7df440dc61","623c133711","130170b986","2c6f4a7623","d6d5128d29","ebd09efff7","413181a1a4","9793893c79","8c4b84dfdf","3e6b26d5a4","adb3e79d09","12a8b97d2c","6611ce534f","f8b782e4fb","c3cd929218","bd79362559","34634188c9","39c34b83e1","3619d9caf4","79a4524110","e83e124b28","c8e30378bb","486b508e67","2ed38a5aed","aa0e76a3f6","6bef91d28c","db63ea5db3","67a5c44a77","254adfb12d","0bed8a622f","89659649ed","2dbb867793","9159ed63b2","53c21e801b","4d3eeac21f","272043d3db","f0f805ceaf","5354cab4f5","a19b60abba","94554faec0","d9575474cf","73f6301d01","dccb9ffa99","ab5aa7d4a0","8d710d396c","ef25ff3b22","c693d90344","ab914d4489","2143e2f004","af115bad59","5d847dbda0","3357828128","53f12973ad","d7b8feb197","eab6ceca43","fe21c82dcf","782d7be8d9","1b66193c47","5424dbba4a","ba144474ae","550e618270","003671343c","ad69dec258","c3202bc8ca","96ef126cb1","c467674e6e","c7b75a2d94","d3c1f1a34f","b7cddac2c1","ae2a9b7f0c","9973262a0b","1b8e0f1316","8f5eefd9c6","1b301dbba8","96f360501b","357d2f8503","13dc16a314","3f511ea34f","64682869fc","6819fa0ec7","7eb00f8d5a","3f68512457","d423d30ae5","88711bd3f8","61da48e93b","1f5c05bf45","dae5f500f7","0b01e3ed28","698e0210b7","4912b868cb","035224f650","9a99603eb7","261eb5be13","d912bee2f3","6a59b7bad5","552d250c53","994ada8af4","d27327912d","acb89802c5","52312e8b1f","2ed4b2167a","024b360e75","d8c43673e3","2cd47851db","324077f4e9","0fa6c4874b","26a6cbd35b","27894e41f8","11493500c4","c1a6d65c6f","5aab42cf97","2bf4c1b506","3b368e0d60","8104be7eac","aa922b4567","097eb79e98","beb36d3f11","4b3df678d2","150a25c352","499f6e1f76","aaedc9f31f","9870b470a6","c956efbdaa","c9423a0f73","8a3bdbb85d","df70951a73","f0b5563762","8988fcfa38","4ffacecf76","b82291dd52","8cd7140f96","434f3df507","5991229252","c87b6dd03c","f7a2677d8c","c5af4b19a7","1f02a6ba61","c9bdb3e3c1","dd05a57e3c","bff96333ab","56f07f5076","2d4eb0ea46","4f3e52dbb6","97ac8454ef","a8b5e6e482","716b9e23ae","d01e74093d","a28105bed3","8ba865d495","c2f77b0f3d","ff757b440f","1c6de1771a","3d12dac2c2","6481e542ed","ebe20c3087","550f72738d","0ae6d40550","08670067b3","9101adf3cd","e1558ed906","0ee9e0dd71","13e48e070d","59cf65e40e","648810d03c","6619af5302","76e7ad522e","92bf4f022d","60f120bdc1","ecbaa2fcc8","9739110a50","cb84f168d8","fcf96d211e","ed4943719a","c25db7caaa","6fa43af8d2","4af17c7114","370b7fa519","1b7d356dcc","c5979f6a49","1c6de1771a","3d12dac2c2","6481e542ed","ebe20c3087","550f72738d","0ae6d40550","08670067b3","10bd10371c","774fbec04f","2b25b0e1ce","ccdb67ecfb","b86f600d0f","1199123099","b3c6445791","15fe211c34","f578160cd3","1ce1722bce","b191cd2591","5fe09b2fa0","c3cb598fca","0047b6645a","b34d6c1367","fa34f892d3","f3c0bf4fb2","9ab3c3d200","5bc8e68a42","ddafe86254","4f18d8606c","95946311bd","c8fc517118","16780414c0","b31629e394","f80be11236","889bae7c55","fc92b69c60","204f6a6ba1","71b9de5cf2","6a45aed37e","4d62f3a68e","4d017353d4","f34a168f64","ab2e7288fa","55f07c8394","5f53ecfe77","275d8342f9","4f62b68e47","9cfe74bf7d","ad3523309b","cdcf2654ed","ad10a051f2","bc640b2126","63e1e51f01","0fc5dea7c4","6e406633e4","f1e9f612e8","2b6b551cda","c06f9e6750","31e500b023","5e3f796345","7f3ea8ca78","5869f9e1e5","de36a48534","6d6f5e0824","32536272ba","4b6d3eec6c","fb5e9e1ca5","23bfddc188","b776fa4ce7","083379b86a","37b65356b6","ac3b2e85e2","8bdaee3e43","4d3fd4cc3e","65d0c9ab55","345a00a86e","70c3dbe1f4","a3bc8eaf7e","d3c3165d82","d97280da4c","c0dc438d3a","01affafb55","329c05ed96","93b34c7633","f9ebeb25c8","0542466568","95df82157f","3c3ec93d36","faf66cd030","98ce9883cf","a6667c5a62","012e429642","b8b893918e","8ce3ebbe24","42291a6464","ad7aa2bc39","dda5c7a225","5dd2b066a9","6b8e49a6dc","4774ac9875","94bf2c1a5c","3aa93eec69","43481f3a01","d1a6f9ae3e","6027369aaf","e612a0af37","69cc52a908","1311fcc5b4","199c813596","081d2a5ee9","778a68929b","fbb764dd76","3ddea5c164","e5cc55a6ee","f6bd7a8ff3","7a2262e7b1","15a70cb9de","119f5cbddc","a804f9d866","d749bbc908","232a289be9","ca9a13089c","00ebd7c2e3","d068b4a163","c7a0cbc83b","ed69603433","430e0fcce7","b3d70d1997","729d747cf3","ab94a08239","92a2c6656d","eeabc0400b","fb3e627292","37f160b4da","650597ce3f","513d7d8b3b","15e01af341","8d3bbcd03e","3fdb489831","0cedbfbc06","cd36bc5b96","95c79c9e50","01ac270eea","21e0c8ab9f","4221b13e62","d960fe6025","5941766ed2","37c167bce1","9025ca38f3","dc52cfe8b1","f6c9df53fb","307795a4b5","82df093c2a","ccc318e13f","6f8563eb3a","5d31aad130","e3bd3b7dc7","eeb233c0b4","0c217a06be","fb422f39c2","f8fc448f8f","83a6949065","0e259efebf","1322576a99","e0f05d2808","65d40d62d4","2e7758dbe9","d94280a7a6","7409262dfb","a166531b95","9b63ede75b","bf2e47c2f4","2b970e5407","75816b90b3","c12d576903","638b1d10a0","137dddfdf5","f2679ef0a3","b812c1a3b5","150e971e97","002e46e8a4","16b26b4eb5","d2ec41fe52","4e00bc0004","49c83f99b3","23535eaf57","458a92e6f9","de837888a6","37a2442125","cfe517230b","5a9b607e5b","9ae020ebb9","f8ec23b178","e27c52129b","38e5bbec01","e830fbaf57","d184323c16","9892671475","e949d93d5a","b6728b980c","078a00d1b3","054d317909","1264179b10","28d32a4bed","b6c6e3725f","0a92986d50","b20416964b","17cbe97a1a","3c3cc29d7f","a0268caf79","75e629a35b","1883f1474f","dcd0db972d","756179ba38","c534cdef44","76d2177757","6475a0b1b9","01eef1ac28","44688d0a31","135a92e664","e6d8944c10","52373d428e","022e152a79","b86bbd2fc0","d758afdec0","62dd70ea5e","9d65bfe8fb","64ce453147","3de8dfd463","b2e17889cb","6da301157b","649d734f69","bd6358cd5e","bf930a48ca","dfffad970b","943eba8961","ac746af778","5eb101d2af","9af2174115","5c1a19557e","074876fd05","1512f4f7be","77340a7d59","e110181ff8","a134c83b6b","9e704c7ffe","61c1b93bf3","d708531c54","205600ed8c","5598e620b0","b2aac5cc5e","376ded830a","5b58efcea8","7137fc0bb5","57ba50432e","17a86000fb","09e3fbad38","f7f4fad370","1883b85261","337a367c19","ebf981bdf6","b4f24649de","74c709bcc0","60d449e773","c952475ef9","bd23ad0c53","6cbb4fc3d0","ce814a6e4d","c83c3b1f8d","675e01cb41","96f011ed1e","dd9e3d77db","3fac881ed4","ff9f095c19","d68bdf041e","d1f4f9ba4a","2b48f70eec","8757d28974","c9db289216","6ce0af24ee","f87758db1f","e364af04e0","e0559d4bdc","bad3b7050d","226e6c46d2","174cc29906","948eba20b8","01570d3caa","25e2621141","d5bf2b70d7","b3ea914014","6bf7970b3f","5d8fb62956","2440759eb6","66bc59b6f6","e0f3482ea6","6251366835","e3aa1f2495","b97660e2b5","960cff645f","1eba734668","1d488015ca","a265b94ebf","2e5b0efe81","a00e240761","3ad612a4e1","20db31db33","f72cafaa40","55075f7ccb","5edab1e91c","e41d847619","f4e2bfed40","0c97c76478","543133b883","6876f31fa4","d78475e512","b08f93008d","1a40a9362b","86ca222ccf","4b5dd428b5","98f3551ad6","82193d9d14","ab60f25efc","2d9f749561","edaa5c6320","7cd17e1700","1f8db531a9","68e661f79a","97ea0cb9de","5009918f3e","5edab1e91c","e41d847619","f4e2bfed40","0c97c76478","543133b883","6876f31fa4","d78475e512","aea04a9e9f","666f7da283","1589398654","01620b87a8","64f397c157","719a3e43ae","1b408eca93","e11c819d36","4c040a7b27","15b02d1b83","66acef1c23","bb8f2b0a17","2442b76332","b058633291","d35f39696e","049d45bfba","299299cc9e","9bee20fb7b","9f9059ee41","7b51a979c5","2368668b17","f41e8bee9d","0627bf3220","0e16c25d94","bf7a15cb47","1c0d2b3c8a","971d5a9e88","37f8cceea3","e88050ddb0","9617ebb912","7f519183a7","1daadb7ca6","8c5ea1251e","bec39fee2e","b582c49bab","dd20e5db0e","98ca37ef83","65cfd0d4f0","b34c8887e7","587200b268","e4a9d631d7","d793d5ec4f","96768d058b","b8efd5fd61","57e56b4256","bc6d28fd1b","0a4567b93f","551c9c43d1","4228ffc7cd","c748b9f473","42e51abdb6","f41f76c7d3","080cdd52d3","8f3fd42877","5039de027b","d9fde977f6","73659e5aaf","49d78eb92f","1fef864c42","e7e0c3704b","98858977f4","cf2c9d7a97","9708a0aa6e","6c5777f079","b8230b60ee","e8cbf2969e","9d38ac3bde","374907c357","479c61b319","5a366a91ff","a03737ba71","707c36cea9","019bdb213f","f0a974d80e","c6e40d24a4","c47936e218","6c5b2f7b77","c4c59124e3","e68ec91cef","85978193c9","896140124a","85ffa82d59","1b287212be","f80f939bb2","83f6837105","11938fa0eb","492c176e18","d5bab96fe4","69613fc068","0412d9f47f","ce012dedf4","22ee3deba3","5c3879f738","6238320467","6ecf3f0280","bb81cf8274","9718356e88","e756a26239","928333768b","6aaa7e5b63","adc23ad806","64ec349102","93c09ec99f","e6045b4387","dfbdcbf9a8","2bd4e7a70d","3eb77ab5f8","fa7ce503d4","792e462a70","6520fe932c","38f7a5d9ea","009aca49c7","210a2da57f","ec4c9e1127","b064149618","deecb107c5","5840a1a3bb","69323eafd3","9294264302","496285c004","2d79ca2298","6ad16bdc69","793072e6aa","9b6cd86f28","bfdca3fbc3","41a9af633b","ae836e6f54","24af35be0d","cedc46b1c2","090d312e5c","6eb595b19c","b4edfb57d1","668cd919d4","60e70fcc56","a3e8664035","b29ec29c68","bd91f7aa3b","16c81c0dd5","3942cbd70e","cdb4ea5973","9ca5406a03","aa24045227","4a1e7ecba4","461d04aebe","fb11f8a253","9fc77342dc","ded13c3ef6","86069c98a3","de662d31d5","ee13102cf9","a2b5d0dcce","5ace2ce1fb","a08b317da9","0cd2c32de6","844bb703ef","62b053be7a","c1c96adaa2","cd8e170c95","44b2e1bde4","75a6898375","7ed778c1e8","bbab5b3a07","3ba1f2ff99","0e542a5462","8e0f110abd","d6ce88c239","b316cc1519","47f36e7406","6bffdcd3b3","fd5316a061","3a44b9a31f","ce5950ff2d","31406e1af1","e3270fc7ae","bcfb020d5a","c95debc750","f4c70afc3c","427a1822b3","6485c1118d","e509d9c811","e0a722980f","e2e3a5484a","e9b4d2de7d","e3377062ed","d317035b71","3f80fd2141","87c9359d95","065ecf5039","c2005ce7e8","a37578fe3b","2290fe8d19","621017fadd","00c7a5c52c","65ba4a0945","bc83232775","0161d6cdb8","9b7a31db4b","d8295661f5","24586b9dc7","ed5ec73192","8fa038a130","9b826330a8","2efc248c0c","a37578fe3b","2290fe8d19","621017fadd","00c7a5c52c","65ba4a0945","bc83232775","0161d6cdb8","e3e9d25b34","ddf55eafd5","a968a158f5","cf19abdd77","47e29ad9d4","8f973c2ad3","cb8c6d0239","4e7eb47222","589425fbfc","dc2db8db32","246ceaf308","7dd9e29879","d644fe2bf0","001ff11263","bc6f87520f","7f95e75f72","8653220703","01453c70a8","638e180b8d","9216d0f749","1c6a4783fd","3318aad9b2","b10a948f2c","6832d53f1f","ffa3333d4c","c9d959626c","aad22ca4be","68764328f0","660fbd895f","a069361c60","1b47a12ea9","3756236ee0","069aecaa86","fa405fd1ed","c3a5f82583","a494bd2935","3a77a977fa","6f982962cb","db12ef138f","f2331abbc2","8f6b2d6a77","900bdc5b22","04363e2283","7606206627","5d2acc597a","7aa5dd7123","eb7b344d02","21dc1cc845","22031ad79e","9ded7e18df","8fe398d0ac","f2bf2053ee","125e491413","c0a5e251a3","ca6637183c","c6a4a525eb","4fa43c001a","5a3524b495","dc4b637de7","2da32f44d1","c3fd1a61af","08b5cf9863","17cba061e3","fc5d4b3ff1","ff001f3cf4","87efcebc6d","3502613969","3a0443149f","2d0c1ae0f2","8a72a9a755","98d86dd145","9b9901ab5b","8f0ce03083","1c35226db1","c493489a67","dbf90fb943","9404729cd7","e67969897a","1b422d3276","b2907dc5f6","a034f23ecb","f01a15ba0d","6fbd4f2210","2d123a402c","4ff3036b9e","6c005f952b","da1327ea10","d5aa99b36c","c5600a6cf3","a5a1779187","70ff7bd000","358209cf7e","b499fb3c9a","d71a671ded","23393d11b3","e232e5b642","936c4ebc71","b0ceb87d28","cb8926fd9b","66a5dd813b","32b4003e29","456fa9fe2e","141bc4f9d9","89b8194382","4c71f905a9","52f55af950","b69b2097b1","b5754064df","dd655629fd","dcd9be74a8","927b243992","77afcacd41","e8b96500a3","955440f428","40e706e59f","9cfe9d85ab","dd941538c3","baa12f2519","1f1d2d962a","471a981d8e","64b8ff6bee","33f9479bd0","7c9121a312","89c656323c","fb88939923","185cdcffae","1f3a88998d","4d88ff824e","f6e7d739a7","4b4e179f2e","ba21beb65b","a96aa42e9c","99a568f6ba","26c660829f","8fd66b8310","1733bed854","de684e8f50","6ce680778a","3d2f16ac00","346f9001a2","1cdd9b4e21","a20a9d80e9","5a4f0e2be0","b34ae7aadf","cd49eed872","5219b5f2b6","65855e74c0","fe601cb159","caa2c4fe9c","e99c35755e","8c7ad3a2d7","bcfb324216","5f1e4ee998","5ab70d4e76","07f2ad66af","4ad5b77d71","e06553e350","61e6a39bc3","b9def4c65c","21e6307068","c04f2beb05","f26299dd63","d2689591be","0940de61fe","9efc830f52","c6ff9d0d79","230bc11830","274e6b10f0","97665119ef","4b00e63e8a","e0a4167ed1","8fb83467c5","c0ba5be118","194ef9de60","fe00eac747","a85a5ea877","3e69e7a4bd","162e14fb11","37fd6e5a3a","83f701d90f","5b8179af92","8789cf396b","31d859938b","1aa098e9ca","7182d806f9","dfbb3471c1","bb41072f72","7b4f5cf973","b210e101fd","fa57db0fbb","34380b85c6","ed87cad9be","ad073b097e","ecca324333","be69e59be1","69325472c8","7bee3ae2db","14c7de0556","fcedb3eaf5","92dedb7d63","64487d4ebf","9f3db164b4","d46a5cd4a6","045c7673bb","efb75fb2d4","3831fe4c41","214ff5f126","af8009ccbb","a82e17ecc3","f390503284","4c10e15396","83cb11fc96","9fc478b5dc","993fd28e43","3441ed5aec","613758a1ce","f87317354e","6bca2bcc2f","4be35dedbd","cd4a8ac90c","e492cce706","25dc68c303","3be2e1e9be","9223bd96bb","d1a82ac5e5","b4109ace8d","9f31736f77","36d0456ef2","3d736efeb2","b2204cbe25","7a6656f515","dd26c15b57","41325935ce","aeaa62451e","9b3d858425","45e009bf77","ed46c7d1f5","356f836436","a73721896c","20561fc26b","b73cb2e6a3","bc23a792c3","7e367f2c3b","e3acba44d4","b24c167d66","8f2ccb84ab","b8de35eb6b","9d1cd5222f","ed6a7ba2d8","724844ed16","681555815d","df5362bf29","bcc4436209","4e4ba27367","c8fc5fc3f2","f4ea77d1fe","c03c890cb1","a7b961bc90","e93404ce88","d6a959720f","e61538058f","b3cbd4d844","0de41969d4","2b13ecfe99","99ffe166b3","3039097410","9c2e50fd63","f7bece9221","ac854055fa","1a8b4e9b19","74ef0a2c4e","3ac89a4eb6","9419b46489","12b28bb616","5c2379c940","df45ed06ad","52eebdbf76","fda90ba4b0","f15840aa6a","949a597a51","db2cb934b8","09c1cb23a4","d1bc21ec45","9bd174894c","02f7daed8e","d44a7a79df","f77a4b3d86","851c73a0c8","1a8b991df2","7a0a97aa0f","e45375bbcd","66d2460d98","e45fb89fcb","1ffd8fd8bb","101d846b83","596f02bee5","0b8766ade8","cdacf2f35a","32f325ced4","ade7f1df90","4cb594932a","804d20a6b9","d583ce9e08","d263d37735","803000d84f","07092d9f02","b90e0627e8","a5fc31bb0d","61dca3cb4c","1542f89a39","4357ed03c6","344045446b","fa9e74bf83","a6f005d8f4","9811fbc709","d519145987","afbbb2df02","025638b597","4d607c6477","a5fa95caf6","8cd1be1fdb","c6b9999de1","cbe4a0dbe2","11d333da27","ad2e1e83aa","c5b4200ec0","20baec07c7","0d522662fa","b043e7a474","d883c1be53","6a170cf6e4","07ddc76110","107f996b6e","93bae82702","fa911c888d","634e45c96c","2cb7ea210d","729bcfd23e","1bf726c7b9","e774c0ce80","d1e3c11069","5b2344c04e","06b4725d12","f6c0ab7100","b93b7ce8cf","e3f913e1b3","108e17a0cb","b47d436c63","bdd9d1575e","fd2106a8fa","9e4d8b2e2f","cf758094e3","5011d51396","355e7ee8fe","46a72a6507","04b6062a7e","ff520a3ebb","d7e9443419","7ac76824d3","e80d9195c5","53f87e157d","964c604995","4018540c53","5f27855494","20517620a3","1da4ceb3ce","61849ae1cb","d291b3a64b","01f4857038","b36c9adf58","74ba9f4c4b","8c17364989","8592c48b1a","2d234bc988","d0b92eef84","5e748010fa","bcf24c2a1b","a9c2ed4e9a","80c4eab49a","b2487f42de","70473ecab1","59a2722972","33d52fab2d","d39511c649","38d959822f","42ff0c6131","f1e23a4e6d","e59cda726c","30cabdc12d","0c612d8113","290504551c","aa0a43e9c5","f359bdb336","2a44909bd1","df91c8147c","931589d6f9","f97412cec2","c986562c9c","2793b173ee","928493d7e9","f98378bd23","efc89bea1d","2bfcd79a98","7613aa3843","e92a00536f","f01a4aab67","cbc27edb1d","7f7066886b","24ba45c0e9","a3de3a7a9b","697c6d0009","f92f6e1e94","19ce5449a2","cdc727e8a2","cb4eacafa7","2295589440","4898927232","ef4939234e","fd9e7bf4a9","9d00479381","3787216be4","9c465e92db","f4e12cad17","637aa00500","f9e16bb667","7e24f50ea9","b47f8a8ae4","41529bc468","2f45d5c384","a291dfb6a4","f5761976ac","f1997c797a","ddcc507587","8f9192f02a","52515782ce","e0abda8180","709d41bea3","f43315cbef","cae8b92c10","f1d58435d7","7f09524901","c277447f1b","402708ffb5","6ec4a96185","4f71d2d063","609698c97d","95917f67e8","ce94358f05","fc34de4ee4","7216fe3381","2eb71495d1","9bfaeadc62","d59a605bbf","7655357fcd","9f762be5ad","29a3746219","73fe263366","25002d5019","43dcf69d09","5d4d5bca4b","67217cc6f1","d994982d19","29a3746219","73fe263366","25002d5019","43dcf69d09","5d4d5bca4b","67217cc6f1","d994982d19","5104e558b8","797c5ecd32","9e2b66bdb9","08ed240aad","504cfb7ec1","3986e3fa23","e3733a767e","4eadcd7f61","b51890247d","dca43a07db","950f9c97f7","b0633748f0","02c0a824ab","6f6846b73d","8b27532990","95048fb6b2","d7de2dd248","3ca05a3929","e5044437c0","a7376e1eb4","b3acafff2a","3c70bddf28","bb52fab9e2","0278147fb6","61a30d8b92","0ff0513795","949adc51fc","e718952674","3f3abde0c5","5d5b77304f","ecc27f6d93","0d2316a5c4","ccbc742924","a79e811340","6cf99fa674","f81d3f6b37","9332e8d208","3862923974","d0c235e66f","6d3894d15e","fc6df6fb56","6474c21e19","d55f50acfd","0f6b385cc0","3605a3f239","2f68275e21","1292e11b98","39022b0481","ef7bbd51b9","ee400caf87","be96c44525","3c4d2aa937","4a0a7fd166","de2cc5f156","6a29adcaa8","ffaa8e8d82","9cbde424d3","ed0b537c2e","63723dab65","1813fb9f5a","edec4f0b62","35ec52ee46","830482b427","3e22671690","7dca27655f","631bf698d6","44494f6fd6","7553a4334b","319ccdfa12","b29f53be52","bc04a049de","90ec7ac949","1c36d037eb","52ed6fa6d9","93cda2cc9b","9baa8379ca","d2063fe57f","88a885d23a","9d46e34b10","7cc3afcfd1","a2584b83ae","fd13f865c3","fe308ac571","a4dc063586","c1c6c0eda1","71b6d30eef","183bb08f5c","ac47fd1184","d5dcc7e35a","b66e020060","1567f0921d","cb7fbbb885","060620da35","19ce199087","01ab1cc31a","9d9f44f570","cdf2259219","97bd137d89","d73174fab5","ec9e919f50","209e3b7f5f","726cf9b1a7","531de9ee0d","7182e4b361","8200457691","baad49582c","cc80116680","097447979b","ddd68438e0","bcdf17b0e6","0be2111fca","c83c59c1b6","d73174fab5","ec9e919f50","209e3b7f5f","726cf9b1a7","531de9ee0d","7182e4b361","8200457691","65a1bee6a2","4fed10bee6","6b86b51c3d","eb32c5c4b8","efefdeda03","55088c780d","1e607bc8c8","42f4ca5152","9a0cbe4408","86567ca37b","f3e46b1727","87b1d84227","c5de1b9380","d8721b4999","1fdf0ebe20","544bcf8171","4dd62b0182","545a2ecfd3","dc98cc552a","180865e5fd","f0661ac3d5","a564c3ceb5","308221b0c4","df6594ff6e","3c85e5ae3e","f321457af4","af35787dd7","dfd8a11954","a1325ec823","a316113f62","a2910cbafd","5e590c8e8e","0470960c60","6eac405aaf","9878c087aa","5254c3e501","c4f44492b1","986a66a1f3","0e658efcbf","89fbd496f7","97f6d87ac0","d38c5c1a51","a564c3ceb5","308221b0c4","df6594ff6e","3c85e5ae3e","f321457af4","af35787dd7","dfd8a11954","b085f31251","f84fa7067e","d634e028e8","4bfc51eab0","52271431dd","05011f9f24","729b0dc56d","b0f0dbbc17","3b0235fd10","1f721b4298","85e89a068d","8dc733f785","77b563d8cb","647550fceb","442caf8700","e59778b22a","50d8aaf391","53f29ee3cf","b37d424f33","ec9292a866","21d0327f79","531362896e","22703e5360","fe0098f6f8","a531dd4c65","0ef4ebf65d","3efbab9b2d","b9443cca8e","58965ff0cd","c358e256d4","145606bcd9","fe7fc6d833","8a3041bb09","00b04cf283","1fb26cff9f","1e8cca856b","8493d22857","ac936847d3","1f97421633","b8fe9f34bc","ec18908de8","244405a2a1","b02c0203c2","22594a5550","7f07d9b409","0c86a9416b","29a2392134","b94072e22a","214c7c55df","5189915507","37b35a8374","cd783e78f7","d2edc1d695","7b75dc705c","8b7359aa89","c0b67ef89b","3a190a3ad6","798afe4533","61800fc210","141ad2f2d4","3888b94141","d283365db0","bc220c69b2","472707672e","5e0e02fceb","e6f45427a0","4549b4a4c7","8d185922e6","95e80a01e3","9bb8465bc8","ac151b10ad","a26e6bed40","58dd8ac7cd","a5c97aee13","ef21a34042","011de00782","5a23a0f029","67b8d106c6","7deaad7e28","7597ac3ddd","d10eab897d","df9753b372","ee130665f2","c93e5d8967","4dc440c6db","58bf103d6c","a68fe2fa70","1e8eadef74","06e6fbed94","45a4c87248","ba2d528807","0eb9c03caa","63b4f31754","79c4d13dfd","247fa83449","1ff4794316","b1c57f638f","c9e2d5baec","eef719f5e7","9797936921","92d57d17f5","60aa7cbf1e","df3f813643","b80da0cd56","f117f4572d","2818784683","b3c9f46d99","2a7024a7e5","79876b5c1e","4bc803a87b","ab354f2c13","f56b9c6fa4","8a9f17a8cd","b4d44e6e9e","50728b8c3d","741f0b4964","13c088409d","521ce18a8a","97a67fd944","1abf7b3699","8188fa4c51","daee23cf0e","97fb9b35a7","aaaefa820f","58f0033fe0","97928ce6aa","1b7d624947","d7a72ed368","c7eee56d2c","8f4f3f800d","5cbb0f0622","0e025952fc","2e0c366f56","04ce0623ad","5315d9c2bf","ed5c89efc6","ed72af7ca0","b989123ba2","91f8035e16","c6424269f3","7b6a773098","b907d59408","a2716921ba","05c745d240","164c379be4","0530c76cf4","b63ac731ae","43117865f9","702732ffbd","0ec2df83d5","b458e6e941","073624ac81","4665cbdecd","6d1c4b9c4c","87af039fa9","59ddc585a7","2552a7f11f","9398f36fbf","5de04a5019","c08134a027","9fce79ae48","28f1c18226","8d2dfc50c1","5d9c8523f9","1adeaf30bb","5bc8d4ebe9","b043c78f01","21c31d7091","68ac0daa60","4745b9c921","930326f3e4","607820f528","004988e227","36469d0c29","6090f65bef","30811290a2","c3f88d3f9c","252244f249","28f921d693","438fad17b2","cfd24c5d9f","1076af274c","cf09af027b","3a66fa81a7","78fed7e171","a00cafef35","b26c96adae","d92518f138","d640ba2de8","91c3432427","af2d66d611","77f70c3f31","1e48425629","9881e9554e","7c1f8eb746","b38de103f2","34bd34b08f","4a448a0d26","be354955b7","d829c1b46c","6c357cc472","330b609d2c","7daa8b9d9b","e3bca99b20","2430892394","925358e457","b7e03bbb68","676ba766a5","8b657fc505","7692b685f5","7cd550e09b","c9fc6354b7","dcc39f4f91","e0a7a03610","9254454c29","d052bce240","0165ef2a26","91c3432427","af2d66d611","77f70c3f31","1e48425629","9881e9554e","7c1f8eb746","b38de103f2","5e3826d3b9","361aa6543d","6c03287ad3","f8ba5c3718","ef7d339549","4fd365d6a0","554f2ff6b8","bd92b75e54","6ddb1224d2","b5366e3fbf","5811fb8f60","593768bcdb","f7ee90efc5","bff93d00d5","4026463a04","7fee1e402e","65c378f451","a54de30c7b","4361b24da0","c7e30af8a8","8401b4eb81","90fcd46a35","a9e6e7aeed","46af9f1254","4e950038d6","95e47008ea","0d241d26e1","abc1e721c4","324b37b24b","c3c46c46ab","11141f083c","62f2211f7b","0356a7ae71","6db8062055","2cbb7073da","324b37b24b","c3c46c46ab","11141f083c","62f2211f7b","0356a7ae71","6db8062055","2cbb7073da","d80c922c35","79ef770409","140213f6a3","c2a5e4feef","4a110afa53","b927ced292","d8757314a0","7f5c58cbdc","3979a61e5f","4136ea300e","b19d09b271","b62aaf2551","91b58e7cc5","0853d446ae","e127b6b69d","91b346dc89","e5049c2012","8e1980ecd2","fa285358b4","9cdd841077","5975374677","97cb2ade03","6009916f00","1eccd53f64","1c4d65fa06","05e4756215","3f8b8e9df2","ce1b57bdaf","005029e8ed","a990f7365b","c6acbcf89f","fed5a496a0","eb29dc3195","ad40a0cc37","c9bac1b7d8","5e847f2c9f","c39f6d30e3","de89a20d95","c7d9df4be9","395c77d022","81e64a33dc","766a5a7f1e","3924fbe589","067793669a","c7186b9db6","bbacfe9579","4f76b60048","5846b48d56","2c7eeca859","bc361c6118","07a4c21cbd","bad4fa3fe8","d4d1a8fed1","5945c6dec7","a438975d12","de19490c2e","1096e75509","f329033189","5fafd82813","74a26bc0cb","b9433dba8f","d58b90131a","10e067ee94","78cb5d4dcf","82f1266dba","54f758f85b","ff8a5042ec","2156516221","e4fcbbf837","fc0bbf65dc","f20d75361d","027286aa91","a7716c21b5","f195bcb723","61947a7085","ade7363aa8","abb74ab9d2","32ec8acc1d","60035e4d9b","f6249ca14a","5209423315","1c344c4f13","7a11d60a95","ea5b1c4c04","224c1b85ed","4745c82f80","b3f106cb4b","f0f8a18359","65271de1f9","9879f92d3e","8336e46ed4","fb38175416","b5e9cceff0","1471f386fd","0d8ad22cc3","af581164fb","0074e99f0b","8f9601381b","7b307de43f","be7890073a","e99ae77f13","e9dc12305d","a93d63bef7","7f79307d56","a0e630b7ea","543a607bc2","4bff7629b0","b3b76da752","d62903ba05","d3563c0141","844951e6aa","5a679dcd5d","224c1b85ed","4745c82f80","b3f106cb4b","f0f8a18359","65271de1f9","9879f92d3e","8336e46ed4","3be1e86e6b","bd3a14695c","4cb061efc7","0ecdc5f183","0282fb00ac","fe8fd79085","d0608e0e2f","c9c66b7a01","fd06f69bf3","e0cc05b6d0","0a9e7dd973","8a734a1b03","700fb39c14","3ced3c7072","a9b2883909","cab29faf8c","a4520a0587","b0ce134f6d","0f3e86e71e","40ac234e39","8a13e4b2c8","e9260384b9","2c52864eb8","c88fe0ff91","ac7c7d13f2","b80c97ed85","cbc24481e9","bfd588fe7d","3288c219ce","b59e69bcae","ab7932e99c","65125da984","7314b9dd0b","4aed31df64","d2f3f4975e","950266ccc6","eab9a5507e","e4767bf626","c16bd75d28","0c261f8816","81c68a5b49","e4ba6504a6","6c37360cdf","0bc1cd1e3f","b588332165","3ab191b838","b8a6175849","9a77f92c9b","dd58edd05f","7b307de43f","be7890073a","e99ae77f13","e9dc12305d","a93d63bef7","7f79307d56","a0e630b7ea","20ab20720b","562dcf5813","fba3997b1f","016a5653a1","d29af97ef7","55fcd48ee1","e493a60d5f","df0d750931","f255504e9b","ea424c7a0d","be7476ab05","abd2a90043","469239a2a7","4f01618742","f979995ce5","4243ba9c9f","88c0e4cc5a","149ba7eb77","80c9553420","6e44137714","09e72ead41","46e8014770","15e0ab052d","b4779001f8","349e17b732","7596d65ed3","2c64037a9a","3f5c658306","602acd0d92","cfded1d8b5","094f9e117c","cb40ac0d56","662dfbc209","27a17c8311","8ffe0c5f27","a3aeb96bb9","9d9e85b88e","e9e2b7c59f","ff428ee904","91f4dde3e7","e5b170c621","af7c7059f0","7916fceff9","6047282211","7d1c9276e7","96e0d44c79","a03a1fb0de","0116ba719b","4ae9e34e79","e25e0987cb","0a072128e5","0317ed36c2","f86d8c7760","35bd290592","5bbeaaf23a","39933029cb","700a6ca399","07107cc8a7","77d232925b","94b61ad33d","b60c5377ea","cc667f330f","19fecb0898","d7c6b237c4","b32469aa57","1d34b32485","07997bcafc","63d1535209","46d8fd7eac","47ac1c9d74","6919c4b964","7d1e35340c","a2f7bde424","a98799a953","f944422846","11531d8c4e","29efaa0315","d6874cc6b9","3a17fe64be","cce9203754","f3ee9ee03a","524364e37d","70023642e8","0b043ae8a0","0ad7b4c523","6ed6ad1fb8","775fbb6817","4e0160c1bd","4cbc8435ef","950e6de16a","88a3c8b4c7","7d217b9d49","4b4970ff92","aaf88f7623","93846c9d70","115368891e","3e887b0b6b","eb83a3f018","1fb8568afc","6099465e8c","64e525ac08","689e1f74cb","a8f9d13c30","e39c0432d4","2f70a5cbf1","63f08b0292","b564d0444d","40c1ca1099","aaae7d4a71","10574f1d3e","1a91e15b34","3702ec020d","00c5be5f85","2d77d5f63d","4410c53714","6de5c8c8de","d49a25f624","e1debf83de","d80daa09ec","99c83addfe","98fda9fbdd","78e350b925","21a626ed64","3b32c19962","62b1b1db4d","22631ff6b9","3e300d79ac","8f999ca316","b426f729a8","ff00da2fc5","7ab990a9fa","2f9d42f299","ff0787976e","99c83addfe","98fda9fbdd","78e350b925","21a626ed64","3b32c19962","62b1b1db4d","22631ff6b9","d1991610b9","5941a3073d","6d1fe83d56","f450a0586f","2ce6bca73f","59ab59ad80","ea47e37071","1bcc1ab0f0","8c143bc915","4ceb6e7f20","98f8a4183f","8a6af30535","d223519655","da7d056d25","c93adac0f5","301050f4bb","aa256004ea","fd9e031c30","badbb3aafb","1e75bd4b35","6af1d8112c","f250fa3fad","3be5a43e08","b56fbbf1e8","4d5bbd6a92","28a4900cbf","ae03199288","c84d2638d2","d4836785a1","8c1c2f594a","b2618501ab","36164caf8e","1565caff7b","8634e79355","08af5b5423","34d876f73b","ad42aa89f5","aa3903cf57","7992d4835c","fa1fed83b4","4b69a25d1b","183cab797d","4844e1421c","458120881b","d85d046cc1","2c5d5cf9c6","df6719213a","aeaa2689cb","29d953e23f","f5c43e77f3","642b8f0422","fd6c2af3a8","312fec8a55","f0cd6ecc61","0790b705b5","a8191a123c","f250fa3fad","3be5a43e08","b56fbbf1e8","4d5bbd6a92","28a4900cbf","ae03199288","c84d2638d2","429052fcb6","5682f5ed1a","ebc95bdbfa","c5164e1fd3","7c417327e8","f0b22d2b8d","214dbcefba","41782669d4","32ebc59e6a","5e1f6ab617","0078121ddf","3e867d22fa","e3a04fa48c","e7e458ef59","f3bd25308a","f503452469","38bec8aa06","31b301487c","77284a6fe7","463b7355dc","16bbd3aafa","3f268c6d2b","4823ce815d","e26969ea4f","98071cc088","587afedc25","efc947b4a8","42a2b0a46c","3d7cf1716e","3d67925fca","8a9b599e7a","010ad48f43","93de27d298","55915800de","598d07776e","3d7cf1716e","3d67925fca","8a9b599e7a","010ad48f43","93de27d298","55915800de","598d07776e","9573b58fee","812311ccf8","99871c4bd1","3a90f1027d","574fe951f4","4690be81c5","10787a5843","cf785684f1","de2e0fdf78","3c26c4ce5a","31f2ad0c25","5a46f8b897","e6d7e8846d","cf0debf5a9","15d44f0e79","562c5801f7","46b42efbe7","5792e7c919","f01ad37446","e343a83ec8","d4350d2c3b","267b7dc7fd","4348f83fcc","fc378c7041","25a015f458","088347ca99","11d9a16f08","4e364ca386","22165d6baa","3b31dca645","1a211afc82","cb7aa3ec03","c337894221","6a92fe2ba6","1e21c8d155","2047116380","86d4189ae9","1172a474e5","1256128316","17db02dbb9","dd01ac4f23","00c0689e44","3281a2dfcd","2add44974b","3652d40f88","15d3ca9986","7fc16a3fbc","3943bb38a5","8d4d2249b2","90635d27ed","6c3f4c4e2d","5e9c2f7c23","b626b0cd50","8ab7a7acad","0109c34369","9da8f9f656","3281a2dfcd","2add44974b","3652d40f88","15d3ca9986","7fc16a3fbc","3943bb38a5","8d4d2249b2","97a39e0d5b","e895a18c10","1c67e7f91c","ab79af91b2","29c3e2c225","ed899af4bd","3e3f33bcd4","7d3872c5f0","a5cdd18637","c928555ca8","ace7ffb081","fe95bd6a10","b09167bb53","d2a2ae2665","16c3fd27fa","2cdca7f210","4437540f06","28c2f41701","1be53e3fb3","892fa26760","0214e3dd34","16c3fd27fa","2cdca7f210","4437540f06","28c2f41701","1be53e3fb3","892fa26760","0214e3dd34","9a91430775","5c8881e5da","467dcfc6a8","21be4c5f50","5f92c42a2d","55846b0321","932544ac60","4df270f0b9","6cc3fe7c7e","26a6549708","450f60e1b3","3c2a5559ee","cf0ed90adb","ba853a9c0a","d13042537b","33111f8bed","3a8fd55325","b88b896e61","209fb6ab0e","4a8afd645c","a97919d585","f90e09fde3","6f8f9d16d1","a83139f14e","1b93935548","c1ecf6364d","e4e51af096","90af89af75","63ee4eee2d","e0287c5ec7","bd2a485998","f3cd86680c","983ccc2bb1","0ea546e5ba","36f44cfa83","b8a1c28a5e","11eca79d3a","1411fc533c","9bbbecf702","c9c2312d6b","9a82b75551","a825f985ad","08d2aff270","c4acca1d53","08207081ff","4c2bc0690a","404bef4be5","23604b3892","7f52450e1e","6007de4ab3","981883f89f","c7452f6c80","c6e167ace2","8a6cb3ba20","880b6affdf","d2c1b88f24","1a3a90a8d2","ea526def03","0a37fab884","fec9b5f511","53960ede4a","2902af2b09","664bad0636","a28a1ffe77","7f3868256b","7b01ab398c","87fc71f7ce","67b40c97e5","e61eaae9a9","97924d858c","e97b38e936","88d4bd41aa","6bc2a2bb72","03d885ef84","55dff62b5e","ff949b55e5","c20d9aed92","990411cfbe","a19ae3146b","c3524e6a51","471fe40392","883fbeb0af","20685d9dd9","c27da1c74f","b234752adc","aea7b76cf5","2bb4a4e554","e04543b825","1f5789e012","fead068702","cd74802ffc","d61001814c","8e6c4d6b1a","85a2147d29","9982be662e","31a5f8ad60","b7463adc1c","2e79d3ff64","3658e7cccb","b9aad27109","f18485f58a","a035c2048e","1fd3165adb","633f5c300b","862473a471","a969abc61a","717a028a54","065c13c481","22f4bc0cb6","cfa8d7b4b1","74fe33ab69","e74021e1b7","936ade4db5","48bc2b34f6","961ca59d5b","a17d9d8e5e","0dce9c2524","3bdf467e73","d634b58433","faa9c6e0b5","0fc6f92e8a","92e8393ecb","7d7a21f019","4a9d4c67f2","879ad822aa","45c2118273","ba7e6e888c","e1c29efee5","72687cf2d7","d81b5ac295","f9fe52ebd5","4e232206da","8d51c7e937","10ea7e52c3","56496cef6a","60b868ccfd","d7afcd5283","8ab1e6bef7","11d587eb97","7df2b9d0ba","003e117f7b","10928af827","3fb0827be4","87154f89e4","2649a97ea5","0dcf79bddb","dd830d9e84","fc3e9a0b6b","631021f7e4","f5d5ccf549","8ae29d6248","3a0bbed272","255ba2c7bc","3891e852b2","aef69846d6","551faa1e58","979c074eb6","82e1f291b6","bb9cb2270d","fd1f629df5","104d702248","bf7e88e03f","8f0b57fae0","d368400ec2","94810eaa2e","2a54083d95","8aae39a8bf","f6f184a724","452ca67b5a","6321844ca8","6e1c7f6a3e","5da8258b42","b7e9ba448c","999269c49d","46822ef5f0","8a79e0623f","a6d44c3d4e","f0a31a30fd","b5e68ab441","5d040290cb","234cc49660","4936693af5","7fa4633282","fc3116725c","71822de658","e7164bf0fc","e92f4f4ad0","90c854ea49","bfee6245ff","7fa4633282","fc3116725c","71822de658","e7164bf0fc","e92f4f4ad0","90c854ea49","bfee6245ff","aa2308ae0c","519cd4675e","f153b83870","a8164d41ee","64e5bb61e2","cf4122a722","38508e2760","bf7e88e03f","8f0b57fae0","d368400ec2","94810eaa2e","2a54083d95","8aae39a8bf","f6f184a724","4f8dac5965","3b0503a7b7","29a3b6b27c","eba2483b0a","8d1b42807a","9bc435a542","5b25e31ad4","21f861a46e","734bcafd3f","c5a2e17c90","0e02d36cd0","71efd1a4ac","409863bd0a","e276823ac0","a0c6e0f8cf","aa707a759c","8820a602ef","74c6715a0a","886f2df07e","1c6cad0b09","00c98e296a","91b138c058","32bd82a044","9faad11fc3","42ae072cc0","4eba40f6cf","3f785a9061","6ca6d38667","ecbc0f7c77","bdddba7e0d","a249ba56ec","024f9edfda","52b4395afa","30ddf69af1","e9c93cf3b4","225e5dbf98","00f0a249fb","53f7924f04","84c46098ce","7b4b2341b3","b7002e552b","365413744b","d92ed6a422","8bc254b45e","86c465f38f","b20c5ac055","10bb2e3981","23cb4962b3","1b20029145","5767abb8a0","dabb2b22ae","12536b42e9","2b713e2d15","79b5f60f52","f8f454024a","080ffb51ad","f125c54c91","f60ff2ca7b","d83eba923b","9d03fa9b25","97c8c783b6","4e9f5513fd","34d12f608c"]}
```