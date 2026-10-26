module lab2_circuit6 (A, B, nA, nB, mid, X6);

    input  A, B;        // SW1, SW0
    output nA;          // LD8
    output nB;          // LD9
    output mid;         // LD10
    output X6;          // LD5

    assign nA  = ~(A & A);
    assign nB  = ~(B & B);
    assign mid = ~(nA & nB);
    assign X6  = ~(mid & mid);

endmodule