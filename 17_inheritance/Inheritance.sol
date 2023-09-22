// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract Parent {
    function foo() public pure returns (string memory) {
        return "Parent";
    }
}

contract Child is Parent {
    // this will inherit all the properties of Parent contract
}