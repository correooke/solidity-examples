// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

/*
Los literales numéricos hexadecimales pueden serlo, pero solo si el número 
de dígitos hexadecimales se ajusta exactamente al tamaño del tipo de bytes. 
Como excepción, tanto los literales decimales como los hexadecimales que 
tienen un valor de cero se pueden convertir a cualquier tipo de bytes de tamaño fijo:
*/
contract Examples {
    bytes2 a = 54321; // not allowed
    bytes2 b = 0x12; // not allowed
    bytes2 c = 0x123; // not allowed
    bytes2 d = 0x1234; // fine
    bytes2 e = 0x0012; // fine
    bytes4 f = 0; // fine
    bytes4 g = 0x0; // fine

    constructor() {
        
    }
}