// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract LocalVar {
    uint public num;    // state variable.

    constructor() {
        num = 18;
    }

    function addNum() external pure returns(uint) {
        uint8 num1 = 6;     // local var
        uint8 num2 = 7;     // local var

        uint8 sum = num1 + num2;    // local var

        return sum;
    }
}