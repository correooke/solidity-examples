// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

contract Base1 {
    uint x;
    constructor(uint _x) { x = _x; }
}

// Either directly specify in the inheritance list...
contract Derived1 is Base1(7) {
    constructor() {}
}

// or through a "modifier" of the derived constructor.
contract Derived2 is Base1 {
    constructor(uint _y) Base1(_y * _y) {}
}