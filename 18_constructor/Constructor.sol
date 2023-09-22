// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract Base_1 {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Base_2 {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// multiple inheritance
contract Child is Base_1, Base_2 {
    // constructor(string memory _name, string memory _text) Base_1(_name) Base_2(_text) { }

    // we can also hardcode values to the constructor if we don't want to initialize it in runtime
    constructor() Base_1("Base_1 constructor is called") Base_2("Base_2 constructor is called") { }
}