// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.99 <0.8.0;

contract Convertions {

    constructor() {
        uint8 y;
        uint16 z;
        uint32 x = y + z;
    }

    // Tome el siguiente ejemplo que convierte un negativo inten un uint:
    /* Al final de este fragmento de código, xtendrá el valor 0xfffff..fd(64 caracteres hexadecimales), 
       que es -3 en la representación de complemento a dos de 256 bits.
    */
    function a() pure public {
        int  y = -3;
        uint x = uint(y);        
    }

    // Si un entero se convierte explícitamente en un tipo más pequeño, los bits de orden superior se cortan:
    function b() pure public {
        uint32 a = 0x12345678;
        uint16 b = uint16(a); // b will be 0x5678 now        
    }

    /* Si un número entero se convierte explícitamente en un tipo más grande, se rellena a la izquierda 
    (es decir, en el extremo de orden superior). El resultado de la conversión se comparará con el número entero original
    */ 
    function c() pure public {
        uint16 a = 0x1234;
        uint32 b = uint32(a); // b will be 0x00001234 now
        assert(a == b);        
    }
}