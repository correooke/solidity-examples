// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.8.0;

struct Simple {
    int order;
    uint amount;
}

contract SimpleExample {

    function example() public pure returns (uint amount) {
        Simple memory c = Simple(1,1);
        c.amount == 10;
        return c.amount;
    }    
}