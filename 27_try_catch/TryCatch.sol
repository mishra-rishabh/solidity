// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberChecker {
    function checkNum(int a, int b) public pure {
        require(a > 0 && b > 0, "Can't divide by zero!");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);

    function divide(int a, int b) public returns (int result) {
        NumberChecker numCh = new NumberChecker();

        try numCh.checkNum(a, b) {
            return a / b;
        } catch Error(string memory err) {
            emit ErrorLogging(err);
        }
    }
}
