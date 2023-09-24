// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract UnoptimizedContract {
    uint public total;

    // example array: [1, 2, 3, 4, 5, 100]

    function sumIfEvenAndLessThan99(uint[] memory numsArr) external {
        for(uint i = 0; i < numsArr.length; i += 1) {
            bool isEven = numsArr[i] % 2 == 0;
            bool isLessThan99 = numsArr[i] < 99;

            if(isEven && isLessThan99) {
                total += numsArr[i];
            }
        }
    }
}