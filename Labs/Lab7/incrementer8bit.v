module incrementer8 (
    a, y, cout
);

input [7:0] a;
output reg [7:0] y;
output reg cout;

always @(*) begin
    y = a + 1'b1;

    case (a)
        8'b1111_1111: cout = 1'b1;
        default: cout = 1'b0;
    endcase
end
    
endmodule