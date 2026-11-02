// Ryan Jukes
// Behavior Level Modeling Practice

module four_to_one_mux_behavior_level (
    in, select, out
);

input [3:0] in;
input [1:0] select;
output reg out;

always @(*) begin
    case(select)
        2'b00: out = in[0];
        2'b01: out = in[1]; 
        2'b10: out = in[2];
        2'b11: out = in[3];
    endcase
end 
endmodule
