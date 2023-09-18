// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract FunctionModifier {
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // without params
    modifier onlyOwner {
        require(msg.sender == owner, "not an owner");
        _;
    }

    // with params
    modifier validateAge(uint _age) {
        require(_age >= 18 , "not eligible to cast vote");
        _;
    }

    function toBeCalledByOwner(uint age) external view onlyOwner validateAge(age) returns (address) {
        return owner;
    }
}