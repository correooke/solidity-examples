// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

contract Integer {
    uint8 a = 60; // fine
    uint32 b = 1234; // fine
    uint16 c = 0x123456; // fails, since it would have to truncate to 0x3456

    constructor() {
        
    }
}