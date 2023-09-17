// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.13 <= 0.8.20;

contract Calculator {
    function add(uint num1, uint num2) public pure returns (uint) {
        uint sum = num1 + num2;

        return sum;
    }

    function subtract(uint num1, uint num2) public pure returns (uint) {
        uint difference = num1 - num2;

        return difference;
    }

    function multiply(uint num1, uint num2) public pure returns (uint) {
        uint product = num1 * num2;

        return product;
    }
}