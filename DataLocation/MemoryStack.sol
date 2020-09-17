// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.8.0;

contract DataLocation {
    // The data location of x is storage.
    // This is the only place where the
    // data location can be omitted.
    uint[] x;
    uint value;

    function memoryImplicit(uint newValue) public returns (uint) {
        value = newValue;
        uint otherValue = newValue;

        return otherValue;
    }

}