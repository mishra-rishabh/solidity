Variables are declared as either storage, memory or calldata to explicitly specify the location of the data. <br/>
It is mostly used in bytes, string, array and mapping

1. storage: It is like a harddrive i.e., permanent storage. It tells that variable is a state variable and will be stored on the blockchain.
2. memory: It is like a RAM i.e., temporary memory. It tells that variable is in a memory and it will exist till the function is being executed. However, these variables are mutable within that function.
3. calldata: It is an immutable temporary location where function arguments are stored and behaves mostly like "memory"