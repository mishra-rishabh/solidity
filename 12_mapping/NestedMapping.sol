// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public myNestedMap;   // nested map

    function getValue(address _addr, uint _i) public view returns (bool) {
        return myNestedMap[_addr][_i];
    }

    function setValue(address _addr, uint _i, bool _boolVal) public {
        myNestedMap[_addr][_i] = _boolVal;
    }

    function removeValue(address _addr, uint _i) public {
        delete myNestedMap[_addr][_i];
    }
}