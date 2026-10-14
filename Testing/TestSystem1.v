// Ryan Jukes 
// First test verilog script

module inctest(A, B, C, E);
input A, B, C;
output E;
wire D;

assign D = A | B;
assign E = C & D;

endmodule