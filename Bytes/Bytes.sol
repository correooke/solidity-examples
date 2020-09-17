// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

contract Bytes {
    bytes32 x;
    int256 length;

    constructor() {
        length = x.length;
    }
}