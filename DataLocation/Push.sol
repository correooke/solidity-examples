// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.8.0;

contract PushArray {
    uint[] inblockchain;

    function f(uint len) public {
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(len);
        
        // a.push(1); No se puede hacer push de un array en memoria
        // a.pop();
        inblockchain.push(1);
        
    }
}