// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract ConstructorInheritance {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}