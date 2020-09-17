// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

// ONLY EXAMPLE, NOT USE
contract TxUserWallet {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function transferTo(address payable dest, uint amount) public {
        require(tx.origin == owner);
        dest.transfer(amount);
    }
}