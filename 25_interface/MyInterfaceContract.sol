// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./MyInterface.sol";

contract MyInterfaceContract is MyInterface {
    function add(uint _num1, uint _num2) public override pure returns (uint) {
        return (_num1 + _num2);
    }
}