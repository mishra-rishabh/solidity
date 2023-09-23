// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ReceiveEther {
    // function to receive Ether. Here, msg.data must be empty
    receive() external payable { }

    // function to receive Ether. Here, msg.data is not empty
    fallback() external payable { }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // after deploying do low level interactions in remix ide to see which function is called
}