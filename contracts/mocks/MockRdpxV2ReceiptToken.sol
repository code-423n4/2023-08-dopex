// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

// contract imports
import { ERC20 } from "solmate/src/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/src/utils/SafeTransferLib.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// import interfaces
import { IERC20WithBurn } from "../interfaces/IERC20WithBurn.sol";

contract MockRdpxV2ReceiptToken is ERC20 {
  using SafeTransferLib for ERC20;
  using SafeERC20 for IERC20WithBurn;

  address weth;
  address dpxETH;

  constructor(
    address _weth,
    address _dpxETH
  ) ERC20("RdpxV2ReceiptToken", "RWD", 18) {
    weth = _weth;
    dpxETH = _dpxETH;
  }

  function deposit(uint256 _amount) public returns (uint256 receiptTokens) {
    IERC20WithBurn(dpxETH).safeTransferFrom(msg.sender, address(this), _amount);
    IERC20WithBurn(weth).safeTransferFrom(msg.sender, address(this), _amount);

    _mint(msg.sender, _amount / 2);

    return (_amount / 2);
  }

  function getDpxEthToMint(
    uint256, //_amount
    uint256 alphaTokenAmount,
    uint256 //dpxEthPrice
  ) external pure returns (uint256) {
    return (alphaTokenAmount);
  }
}
