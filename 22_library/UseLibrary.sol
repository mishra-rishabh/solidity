// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "./Library.sol";

contract UseLibrary {
    uint public sum = Math.add(6, 9);
}