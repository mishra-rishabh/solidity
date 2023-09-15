// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract GlobalVar {
    address public sender = msg.sender;
    uint public blockNum = block.number;
}