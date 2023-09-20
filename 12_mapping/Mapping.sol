// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract Mapping {
    mapping(address => uint) public myMap;

    function getValue(address _addr) public view returns (uint) {
        return myMap[_addr];  // if no value, it will return a default value
    }

    function setValue(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function removeValue(address _addr) public {
        delete myMap[_addr];    // reset the value to the default value
    }
}