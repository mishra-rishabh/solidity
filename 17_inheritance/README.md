Inheritance is a way to extend functionality of a contract. Solidity supports both single as well as multiple inheritance.

Following are the key highlighsts:
* A derived contract can access all non-private members including internal methods and state variables. But using this is not allowed.
* Function overriding is allowed provided function signature remains same. In case of difference of output parameters, compilation will fail.
* We can call a super contract's function using super keyword or using super contract name.
* In case of multiple inheritance, function call using super gives preference to most derived contract.
* Solidity supports multiple inheritance. Contracts can inherit other contract by using the "is" keyword.

Other Points:
* Function that is going to be overridden by a child contract must be declared as virtual.
* Function that is going to override a parent function must use the keyword override.
* Order of inheritance is important.