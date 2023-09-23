Functions and addresses declared payable can receive ether into the contract.

When writing a smart contract, sometimes you need to ensure that money is being sent to the contract and out of the contract as well. <br/>
Payable does this for you, any function in Solidity with the modifier Payable ensures that the function can send and receive Ether. <br/>
It can process transactions with non-zero Ether values and rejects any transactions with a zero Ether value. <br/>
Additionally, if you want a function to process transactions and have not included the payable keyword in them the transaction will be automatically rejected. <br/>

NOTE: Payable keyword is not a function but a modifier.
