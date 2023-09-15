// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ImmutableVar {
    uint8 public myNumber = 12;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_UINT = _myUint;
    }
}