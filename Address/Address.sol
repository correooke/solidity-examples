// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

contract Address {
    uint256 balance;

    constructor() {
        address payable x = address(0x123);
        address myAddress = address(this);
        balance = myAddress.balance;

        if (x.balance < 10 && myAddress.balance >= 10) x.transfer(10);
    }
}