An access modifier is used to specify the accessibility or scope of the variables and methods in the program. If we say in simple words, we can say that the access modifier tells from where you can access the method and variables.

The scope of the local variables is within the function only which means we cannot access local variables from outside the function so no need to specify an external access modifier for local variables.

For state variables, we have four types of scope/access modifiers/Visibility modifiers in the Solidity:

1. Public: Public keyword is used to give access to functions and variables from inside or from the outside contract, i.e we can access public functions and variables from anywhere.
2. Internal: Internal variables can be accessed only internally from the current contract or contract deriving from it(child contract).
3. Private: Private variables will be accessible within the same contract only like internal but if you define a variable with a private keyword then you cannot access from derived or child contract.
4. External: External functions are meant to be called by other contracts. They cannot be used for internal call.


Note1: If you use the public keyword for state variables then that variable will become a getter function automatically, which means that variable will return stored data.

Note2: By default variables are internal.