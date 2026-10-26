module code_recognizer (D3, D2, D1, D0, Z);

    input D3, D2, D1, D0;   // SW3, SW2, SW1, SW0
    output Z;                // LD0

    assign Z = D3 & ~D2 & D1 & D0;   // Z is 1 when the input code is 1011

endmodule