// Ryan Jukes
// 13-10-26

module design_problem_3 (A, B, C, D, OUT);
input A, B, C, D;
output OUT;
wire W0, W1, W2, W3;

assign W0 = (A | B | C);
assign W1 = (C | D);
assign W2 = (C | B);
assign W3 = ((~A) | (~B) | D);
assign OUT = W0 & W1 & W2 & W3;

endmodule



module design_problem_5 (A, B, C, OUT);
input A, B, C;
output OUT;
wire W0, W1, W2;

assign W0 = ((~A) & C);
assign W1 = (C & (~D));
assign W2 = (B);
assign OUT = W0 | W1 | W2;

endmodule