// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Payable {
    // payable address can receive ether
    address payable public owner;

    // payable constructor can receive ether, while deploying the contract
    constructor() payable {
        owner = payable (msg.sender);
    }

    // function to deposit ether to this contract. The balance will be automatically updated
    function deposit() public payable { }

    function getBalance() public view returns (uint) {
        // get the amount of ether stored in this contract
        uint amount = address(this).balance;

        return amount;
    }
}