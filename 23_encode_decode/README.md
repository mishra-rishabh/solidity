Solidity bytes friendly. Strings are constly and less preferred in blockchain. We send and receive things to the blockchain in terms of bytes. For this, we have functions that performs encoding and decoding.

1. abi.encode(): encodes data into bytes.
2. abi.decode(): decodes bytes back into the original data.

Hash:
* Unlike decode mentioned above we can't convert hash to the original data but vice versa is possible.
* keccak256(bytes memory) returns (bytes32) is used to convert data to hash.