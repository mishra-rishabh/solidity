// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.15 <= 0.8.20;

contract Array {
    // ways to initialize an array
    uint[] public myDynamicArray;   // it is dynamic because we haven't mentioned size
    uint[] public myDynamicArray2 = [1, 2, 3];  // dynamic array which is initialized with some elements

    // fixed size array
    uint[10] public myFixedSizeArray;   // all elements by default will be [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    function getArrayElement(uint i) public view returns (uint) {
        return myDynamicArray[i];
    }

    function getWholeArray() public view returns (uint[] memory) {
        return myDynamicArray;
    }

    function addElementToArray(uint num) public {
        myDynamicArray.push(num);
    }

    function removeElementFromArray() public {
        myDynamicArray.pop();
    }

    function getArrayLength() public view returns (uint) {
        return myDynamicArray.length;   // length is a property and not a function
    }

    function deleteElement(uint i) public {
        delete myDynamicArray[i];
    }

    function localArr() pure external {
        uint[] memory someArr = new uint[](5);

        someArr[0] = 1;
        someArr[1] = 2;
    }
}