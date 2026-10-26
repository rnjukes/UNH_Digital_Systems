module two_to_four_decoder_AND_multiplexer (
    S0, S1, Y, I0, I1, I2, I3
);

input S0, S1, I0, I1, I2, I3; // V15, W15, W17, W16, V16, V17
output Y; // U16
wire O0, O1, O2, O3;

assign O0 = ~S0 & ~S1;
assign O1 = S0 & ~S1;
assign O2 = ~S0 & S1;
assign O3 = S0 & S1;

assign Y = (O0 & I0) | (O1 & I1) | (O2 & I2) | (O3 & I3); 
    
endmodule