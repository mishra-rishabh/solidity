* As of Solidity version 0.6.0, the language has built-in try-catch functionality.
* The syntax is similar to that of other programming languages. However, currently, the functionality is limited to trying expressions used in external function calls or contract creation.
* Try and Catch can now handle failures in external function calls without rolling back the entire transaction (state changes in the called function are still rolled back, but not those in the calling function).
