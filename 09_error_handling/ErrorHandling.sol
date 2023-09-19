// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.15 <= 0.8.20;

contract ErrorHandling {
    function testRequire(uint _i) public pure returns (uint) {
        require(_i >= 18, "not eligible to cast vote");

        return _i;
    }

    function testRevert(uint _i) public pure returns (uint) {
        if(_i < 18) {
            revert("Person should be at least 18 years old to cast vote");
        }

        return _i;
    }

    function testAssert(uint _i) public pure returns (uint) {
        assert(_i >= 18);

        return _i;
    }
}