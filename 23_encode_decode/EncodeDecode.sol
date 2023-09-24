// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract EncodeDecode {
    function encodeData(uint x, address addr) external pure returns (bytes memory) {
        return abi.encode(x, addr);
    }

    function decodeData(bytes calldata data) external pure returns (uint, address) {
        (uint x, address addr) = abi.decode(data, (uint, address));

        return (x, addr);
    }

    // the above decode function can also be written as-
    /* function decodeData(bytes calldata data) external pure returns (uint x, address addr) {
        (x, addr) = abi.decode(data, (uint, address));
    } */

    // convert data to bytes and then to hash, because hashing require data in terms of bytes
    function hash(uint num, address addr) public pure returns (bytes32) {
        return keccak256(abi.encode(num, addr));
    }

    function verifyHash(uint x, address addr, bytes32 _hash) public pure returns (bool) {
        return keccak256(abi.encode(x, addr)) == _hash;
    }
}