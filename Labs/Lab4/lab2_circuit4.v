module lab2_circuit4 (A, B, nA, nB, X4);

    input  A, B;        // SW1, SW0
    output nA;          // LD8
    output nB;          // LD9
    output X4;          // LD3

    assign nA = ~(A & A);     // NAND 
    assign nB = ~(B & B);     // NAND 
    assign X4 = ~(nA & nB);   // second level NAND

endmodule