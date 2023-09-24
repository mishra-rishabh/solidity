* Libraries are similar to Contracts but are mainly intended for reuse. A Library contains functions which other contracts can call. Solidity have certain restrictions on use of a Library.

Following are the key characteristics of a Solidity Library.
* Library functions can be called directly if they do not modify the state. That means pure or view functions only can be called from outside the library.
* Library can not be destroyed as it is assumed to be stateless.
* A Library cannot have state variables.
* A Library cannot inherit any element.
* A Library cannot be inherited.
* A library is embedded into the contract if all library functions are internal. Otherwise the library must be deployed and then linked before the contract is deployed.