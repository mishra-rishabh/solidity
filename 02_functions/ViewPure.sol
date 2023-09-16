// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.8.20;

contract ViewPure {
    uint public x = 6;  // state variable

    function viewFunction(uint _num) public view returns (uint) {
        // x = x + 2;  // this will give error, because we are modifying state variable
        return x + _num;    // we are only reading x and not altering it
    }

    function pureFunction() public pure returns (bool) {
        return true;    // we are neither reading nor writing state variable
    }

    // transaction function
    function changeStateVar() public returns (uint) {
        x += 10;    // reading and writing state variable

        return x;
    }
}