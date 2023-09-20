// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract TimeUnits {
    uint public oneSecond = 1 seconds;
    bool public isOneSecond = 1 seconds == 1;

    uint public oneHour = 1 hours;
    bool public isOneHour = 1 hours == 60 minutes;
}