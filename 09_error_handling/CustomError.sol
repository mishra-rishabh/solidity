// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.15 <= 0.8.20;

contract CustomError {
    error CustomError__ShouldBeGreaterThanEighteen(uint _age);

    function testRevert(uint _i) public pure returns (uint) {
        if(_i < 18) {
            // the message provided will consume more memory and this cost more gas fees. So, for this we use custom error
            // revert("Person should be at least 18 years old to cast vote");
            revert CustomError__ShouldBeGreaterThanEighteen({_age: _i});

            // we can also use custom error without any parameter
        }

        return _i;
    }
}