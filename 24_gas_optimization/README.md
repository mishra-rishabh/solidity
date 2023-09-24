Gas optimization is an important thing while writing smart contracts. Smart contracts should be written in such a way that they won't consume lot of gas while doing transactions.

The very first thing we need to do is, write the whole contract without worrying about optimization and when contract is ready then we could optimize it.

Few ways to save gas:
* Use calldata
* load state variables to memory
* short circuit
* loop increments
* cache array length
* load array elements to memory
* uncheck loop variable overflow/underflow: it means there is some computation going on under the hood which we can't see. To stop that we use unchecked block and this will save some gas for us.