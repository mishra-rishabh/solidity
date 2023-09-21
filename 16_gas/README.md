Gas is something what we need to pay for a transaction, i.e., how much ether do we need to pay for a transaction.

We pay (gas_spent * gas_price) amount of ether, where, <br/>
* gas is a unit of computation.
* gas spent is the total amount gas used in a transaction.
* gas price is how much we are willing to pay per gas in terms of ether.

* transactions with higher gas price have higher priority to be included in a block.
* unspent gas will be refunded.

Gas Limit: <br/>
There are 2 upper bounds to the amount of gas you can spend-
1. gas limit: It is set by us. It is the maximum amount of gas we are willing to use for a transaction.
2. block gas: It is set by the network itself. It is the maximum amount of gas allowed in a block.


* Using up all of the gas that we send causes our transaction to fail.
* State changes are undone.
* Gas spent is not refunded. 

