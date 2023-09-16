Function: It is a piece of reusable code which can be called anywhere in your program. This eliminates the need of writing the same code again and again.

Ways to write function in terms of output:
1. return single value
2. return multiple values
3. return multiple values without return statement (by declaring return values in the definition of a function)

We use destructuring assignment while calling another function that return multiple values

syntax: function someFunction(uint _num) public view returns(uint) { ... }
1. function keyword
2. function name with parameters
3. access modifier
4. view tells that function will only read the state variable but won't alter it
5. type of value that function is going to return