// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Condition {
    // require condition
    function checkAge(uint8 age) public pure returns (bool) {
        require(age > 18, "not eligible to vote");

        return true;
    }

    function checkGreaterNum(uint a, uint b, uint c) public pure returns (uint) {
        if(a > b && a > c) {
            return a;
        }
        else if(b > a && b > c) {
            return b;
        }
        else {
            return c;
        }
    }

    // ternary operator
    function isEligibleToVote(uint8 age) public pure returns (bool) {
        return (age >= 18 ? true : false);
    }
}