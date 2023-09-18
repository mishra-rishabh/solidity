// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Loops {
    function forLoopTest() public pure returns (uint) {
        uint x = 0;

        for(uint i = 0; i < 10; i++) {
            if(i == 3) {
                continue;   // skip to next iteration
            }

            if(i == 8) {
                break;  // exit the loop
            }

            x += 1;
        }

        return x;
    }
    
    function whileLoopTest() public pure returns (uint) {
        uint i = 0;

        while (i < 10) {
            i++;
        }

        return i;
    }

    function doWhileLoopTest() public pure returns (uint) {
        uint k = 0;

        do {
            k++;
        } while (k < 6);

        return k;
    }
}