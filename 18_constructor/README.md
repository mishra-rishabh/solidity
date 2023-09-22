Constructor is a special function declared using constructor keyword. It is an optional funtion and is used to initialize state variables of a contract.

Following are the key characteristics of a constructor.
* A contract can have only one constructor.
* A constructor code is executed once when a contract is created and it is used to initialize contract state.
* After a constructor code executed, the final code is deployed to blockchain. This code include public functions and code reachable through public functions. Constructor code or any internal method used only by constructor are not included in final code.
* A constructor can be either public or internal.
* A internal constructor marks the contract as abstract.
* In case, no constructor is defined, a default constructor is present in the contract.
* In case, base contract have constructor with arguments, each derived contract have to pass them.

Points to remember:
* Parent constructors are always called in order of inheritance.
* The order of the parent contracts listed in the constructor of the child constructor doesn't matter.

example:
// this order matters
contract Child is Base_1, Base_2 {
    // this order doesn't matter
    constructor(string memory _name, string memory _text) Base_1(_name) Base_2(_text)

    // the above constructor can be also written as-
    // here order is different but still Base_1 constructor will be called first
    // constructor(string memory _name, string memory _text) Base_2(_text) Base_1(_name)
}