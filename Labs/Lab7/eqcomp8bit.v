module comparator8 (
    a, b, diff
);

input [7:0] a;
input [7:0] b;
output reg [7:0] diff; // 1 if different 

always @(*) begin
    diff = a ^ b;
end
    
endmodule