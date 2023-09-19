Array is a data structure, which stores a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.

Array can have a compile-time fixed size or a dynamic size

compile time: when we write code <br/>
run-time: when code is running

syntax: datatype[] access_modifier name; <br/>
example: uint[] public marks;

accessing elements: marks[index];

some methods:
1. push(): append element at the end of an array
2. pop(): remove last element from the array
3. length: returns the size of an array

we can also delete some specific element from an array but there's a catch, instead of removing the element it will reset it to its default value. For uint/int default value is 0. For this we have to use delete keyword.<br/>
example:  arr1: [1, 2, 3, 4, 5] <br/>
delete arr1[2], this will make an array like [1, 2, 0, 4, 5]

if we want to create an array within the function i.e., local array and not a state varriable then we should keep one thing in mind that the local array will always have a fixed size and we have to use memory keyword while decalring it. <br/>
example: uint[] memory localArr = new uint[](5);    // array of size 5

