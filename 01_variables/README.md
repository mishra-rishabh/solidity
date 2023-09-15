variable: it is used to store data in your program.

types of variables:
1. Address: stores the address of wallets and contracts. keyword => address
2. Integer: integers are the building blocks of our program. keyword => uint for unsigned and int for signed
3. Boolean: stores either true or false. keyword => bool
4. String: stores the text. keyword => string

types of uint:
uint8, uint16...uint256
The larger the number in uint the more space it takes up in memory.
In solidity we have to use variable spaces carefully because it has some cost that we have to pay in terms of gas when deploying contract.
uint8 range: 0 to (2^8)-1
uint16 range: 0 to (2^16)-1 and so on

int8 range: -(2^7) to (2^7)-1
int16 range: -(2^15) to (2^15)-1 and so on


Constant: Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

Global Variable: these variable provide information about blockchain loke chainid, timestamp, blocknumber, difficulty, etc.

State Variable: variables that aren't inside a function (contract level). values are permanently stored on the blockchain/ or in the contract storage. writing state variables costs gas fee but reading doesn't cost anything.

Local Variable: Variables whose values are present till function is executing.