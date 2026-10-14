// Ryan Jukes
// 10/2/26 In-Class


//A and B go into an OR gate and meet C at an AND gate that gives E
wire D;
assign D = A | B;
assign E = C & D;

//or 

assign E = (A | B) & C 


//A is negated and goes into a NOR gate with B to give D. D goes into an AND gate with C to give Y
module c1 (A, B, C, D);
input A, B, C;
output D
wire D, X;
assign X = ~A;
assign D = ~(X | B);
assign Y = D & C;  
endmodule

//or 

output Y;
assign Y = (~((~A) | B)) & C;


//FOR VIVADO LATER
module inctest(A, B, C, E);

input A, B, C;
output E;

wire D;

assign D = A | B;
assign E = C & D;

endmodule

