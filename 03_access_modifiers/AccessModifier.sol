// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract A {
    uint public x = 6;

    function access() public view returns (uint) {
        return x;
    }

    function externalFunction() external view returns (uint) {
        return x;
    }

    // this will give error, because we are trying to access external function within the contract
    /* function accessExternalFunction() public view returns (uint) {
        return externalFunction();
    } */
}

contract B {
    // creating an object of contract A
    A objA = new A();

    uint p = objA.externalFunction();   // accessing external function outside the contract

    uint private x = 7;     // can't be accesses outside this contract

    function access() public view returns (uint) {
        return x;
    }
}

contract Parent {
    uint public y = 6;
    uint internal x = 7;
    uint private z = 8;

    function parentClassFunction() internal view returns (uint) {
        return x;
    }
}

// inheriting Parent class properties
contract Child is Parent {
    // deploy this Shild contract
    // private variable is inaccessible here

    uint public p = y;    // y is from Parent. It is accessible here because it is public
    uint public q = x;     // x is from Parent. It is accessible here because it is internal
    // uint public r = z;     // z is from Parent. It is inaccessible here because it is private. So it will give error
}

