// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Gas {
    uint public i = 0;

    function someLoop() public {
        // change the number below in while loop to check how much gas is being consumed
        while(i < 100) {
            i++;
        }
    }
}