When an error occurs, the state is reverted back to its original state, and for this we use error handling.

Following are some of the important methods used in error handling:
1. assert(bool condition) − In case condition is not met, this method call causes an invalid opcode and any changes done to state got reverted. This method is to be used for internal errors. It is used to check for the code that should never be false.
2. require(bool condition) − In case condition is not met, this method call reverts to original state. - This method is to be used for errors in inputs, to validate condition before execution and to validate return values from calls to other function.
3. require(bool condition, string memory message) − Same as require statement. It also provides an option to provide a custom message.
4. revert() − This method aborts the execution and revert any changes done to the state.
5. revert(string memory reason) − Same as revert statement. It also provides an option to provide a custom message.

