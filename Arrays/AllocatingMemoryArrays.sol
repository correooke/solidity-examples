// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.8.0;

contract AllocatingMemoryArrays {
    uint[] x;

    function f(uint len) public pure {
        uint[] memory a = new uint[](7);
        bytes memory b = new bytes(len);
        // a.push(1); No se permite
        // x.push(1);
        assert(a.length == 7);
        assert(b.length == len);
        a[6] = 8;
    }
}