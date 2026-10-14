// Ryan Jukes
// 10-7-26
// Do 4-1 decoder and 3-8 decoder for next class

module decoder_2_to_1_with_enable (A, B, C, E, OUT);
input A, B, E, C;
output OUT;
wire W1, W2, W3;

assign W1 = ((~C) & A);
assign W2 = (C & B);
assign W3 = (W1 | W2);
assign OUT = (W3 & E);

endmodule



module decoder_4_to_1_with_enable (S0, S1, S2, S3, C0, C1, O0);
input (S0, S1, S2, S3, C0, C1);
output O0;
wire; 



endmodule