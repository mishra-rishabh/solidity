// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract SendEther {
    function sendEthByTransferMethod(address payable _receiver) public payable {
        // not recommended
        _receiver.transfer(msg.value);
    }

    function sendEthBySendMethod(address payable _receiver) public payable {
        // send returns a boolean value indicating success or faliure
        bool isSent = _receiver.send(msg.value);

        require(isSent, "failed to send ether!");
    }

    function sendEthByCallMethod(address payable _receiver) public payable {
        // call returns a boolean value indicating success or faliure
        // recommended method to transfer ether
        (bool isSent, bytes memory _data) = _receiver.call{value: msg.value}("");

        require(isSent, "Failed to send ether!");
    }
}