// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.9.0;

contract Events {
    event Log(address indexed sender, string message);  // indexed parameters help us filter the logs
    event AnotherLog(); // event without args

    function testLog() public {
        emit Log(msg.sender, "Vande Mataran");
        emit Log(msg.sender, "I am an emitted event");
        emit AnotherLog();
    }

    // deploy the contract, call the above function and check the logs
}