// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract Base {
    // to make this function to be able to overridden, we have to make it virtual
    function foo() public pure virtual returns (string memory) {
        return "Base";
    }
}

contract Base_2 is Base {
    // function overriding
    // here we will use override keyword
    // to make this function to be able to overridden, we have to make it virtual
    function foo() public pure virtual override returns (string memory) {
        return "Base_2";
    }
}

contract Child is Base_2 {
    // function overriding
    // here we will use override keyword
    function foo() public pure override returns (string memory) {
        return "Child";
    }
}