Mapping in Solidity acts like a hash table or dictionary in any other language. 

syntax: mapping(_KeyType => _ValueType) <br/>
* _KeyType: can be any built-in types, bytes, string and any contract. No reference type or complex objects are allowed.
* _ValueType: can be any type including other mapping or an array.

Mapping can only have type of storage and are generally used for state variables. Mapping can be marked public. Solidity automatically create getter for it.

Mapping will always return a value. If the value is not set for a key then it will return a default value for a datatype (value).
