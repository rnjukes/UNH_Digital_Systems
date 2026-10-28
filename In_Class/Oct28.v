// Ryan Jukes
// 10-28-26


module two_to_four_decoder_gate_level (
    a, b
);

// Stores both inputs in a, accessed by a[index]
// Same for b, with the outputs
input [1:0] a; 
output [3:0] b;

wire a0_n, a1_n;

not g0 (a0_n, a[0])
not g0 (a0_n, a[1])

and g2 (b[0], a1_n, a0_n); // a = 00
and g2 (b[1], a1_n, a[0]); // a = 01
and g2 (b[2], a[1], a0_n); // a = 10
and g2 (b[3], a[1], a[0]); // a = 11

endmodule



module two_to_four_decoder_dataflow (
    a, b
);

input [1:0] a; 
output [3:0] b;

assign b[0] = ~a[1] & ~a[0]
assign b[1] = ~a[1] & a[0]
assign b[2] = a[1] & ~a[0]
assign b[3] = a[1] & a[0]

endmodule



module two_to_four_decoder_behavior_modeling (
    a, z
);

input [1:0] a; 
output [3:0] b;

// * is in the sensitivity list
// When there is a change in *, always run this...
always @(*) begin
    // Works like a C switch case
    case (a)
        2'b00: b = 4'b0001;
        2'b01: b = 4'b0010; 
        2'b10: b = 4'b0100; 
        2'b11: b = 4'b1000;  
        default: b = 4'b0000;
    endcase
end
    
endmodule