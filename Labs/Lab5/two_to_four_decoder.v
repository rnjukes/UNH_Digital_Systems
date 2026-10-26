module two_to_four_decoder (
    S0, S1, O0, O1, O2, O3
);

input S0, S1; // V17, V16
output O0, O1, O2, O3; // V19, U19, E19, U16 

assign O0 = ~S0 & ~S1;
assign O1 = S0 & ~S1;
assign O2 = ~S0 & S1;
assign O3 = S0 & S1;
    
endmodule