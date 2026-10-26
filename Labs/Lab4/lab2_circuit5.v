module lab2_circuit5 (A, B, n1, n2, n3, X5);

    input  A, B;        // SW1, SW0
    output n1;          // LD8
    output n2;          // LD9
    output n3;          // LD10
    output X5;          // LD4

    assign n1 = ~(A & B);
    assign n2 = ~(A & n1);
    assign n3 = ~(n1 & B);
    assign X5 = ~(n2 & n3);

endmodule