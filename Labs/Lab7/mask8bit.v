module mask8 (
    a, b, y
);

input [7:0] a;
input [7:0] b;
output reg [7:0] y;

always @(*) begin
    y = a & b;
end
    
endmodule