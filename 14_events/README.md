An event is emitted, it stores the arguments passed in transaction logs. These logs are stored on blockchain and are accessible using address of the contract till the contract is present on the blockchain.

In short, events are the notifications for the blockchain. It's like notifying of what happened on the blockchain.

The "indexed" keyword in event is very important. It tells to cache the index of the data with which it is used, and it allows us to filter by that data point a lot faster.

syntax: event Deposit(address indexed _from, bytes32 indexed _id, uint _value); <br/>
Here, _from is indexed and we can filter data using _from a lot faster.

Use cases: <br/>
* Events allow logging to the blockchain.
* Listening for events and updating user interface accordingly.
* A cheap form of storage

