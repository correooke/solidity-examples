// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

contract String {
    string simpleQuote = 'simple';
    string doubleQuote = "double";
    bytes32 samevar = "stringliteral";
    string otherBytes;
    string a = unicode"Hello 😃";
    string hexa = hex"00112233";

    constructor() {
        // otherBytes = samevar; // No son asignables
    }
}