// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "./SomeContract.sol";

contract ImportStatement {
    SomeContract someObj = new SomeContract();

    string public message = someObj.greet();
}