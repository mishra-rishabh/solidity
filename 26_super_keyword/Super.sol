// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract A {
    /* Inheritance tree
          A
        /   \
        B   C
        \   /
          D
    */

    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.bar called");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo called");
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        super.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("C.bar called");
        super.bar();
    }
}

contract D is B, C {
   /*
        * Call D.foo and check the transaction logs.
        Although D inherits A, B and C, it only called C and then A.
        
        * Call D.bar and check the transaction logs.
        D called C, then B, and finally A.
        Although super was called twice (by B and C) it only called A once.
    */

    /*
        The override(B, C) part of the function declaration tells the compiler that
        the function is overriding the foo() function in both classes B and C.
        This is necessary because the foo() function is defined in both base classes,
        and the compiler needs to know which one to call when the foo() function
        is called on an object of the derived class.
    */
    function foo() public override (B, C) {
        super.foo();
    }

    function bar() public override (B, C) {
        super.bar();
    }
}