Function Modifiers: These are used to make function more secure, i.e., these are used to modify the behaviour of a function. For example to add a prerequisite to a function.

By using function modifiers we can restrict access, validate inputs, guard against re-entrancy attacks.

We can use more than one modifier for a single function.

syntax: modifier modifier_name(args) {
    // logic
    _;
}

_; (underscore;) in a modifier tells that go back to the actual function (jis function se aaye ho waha wapis jao)