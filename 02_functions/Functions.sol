// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <= 0.8.20;

contract Functions {
    uint x = 6;

    // return single value
    function incrementNum(uint _num) public view returns (uint) {
        return _num + x;
    }

    // calling a function from another function
    function useIncrementNum() public view returns (uint) {
        uint y = incrementNum(5);

        return y;
    }

    // return multiple values
    function multipleValues() public pure returns (uint, bool, address) {
        uint p = 6;
        bool isTrue = true;
        address myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

        // sequence matters
        return (p, isTrue, myAddr);
        // return (isTrue, p, myAddr);  // this will give error, because it is expecting uint at 1st position and bool at 2nd
    }

    // return multiple values without return statement
    function multipleValuesWithoutReturn() public pure returns (uint p, bool isTrue, address myAddr) {
        p = 9;
        isTrue = false;
        myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    // destructuring
    function destructure() public pure returns (uint, uint, uint) {
        (uint a, uint b, uint c) = (6, 7, 8);

        return (a, b, c);
    }

    // similarly we can destructure function return values
    function useMultiplValues() public pure returns (uint, bool, address) {
        (uint a, bool b, address c) = multipleValues();

        return (a, b, c);
    }
}