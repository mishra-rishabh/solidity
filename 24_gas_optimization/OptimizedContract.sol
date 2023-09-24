// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract OptimizedContract {
    uint public total;

    // example array: [1, 2, 3, 4, 5, 100]

    function sumIfEvenAndLessThan99(uint[] calldata numsArr) external {
        uint tempTotal;
        uint arrLength = numsArr.length;

        for(uint i = 0; i < arrLength;) {
            uint n = numsArr[i];

            if(n % 2 == 0 && n < 99) {
                tempTotal += n;
            }

            unchecked {
                ++i;
            }
        }

        total = tempTotal;
    }
}