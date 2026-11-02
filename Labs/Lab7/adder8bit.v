module adder8 (
    a, b, cin, sum, cout
);

input [7:0] a;
input [7:0] b;
output reg [7:0] sum;
output reg cout;
input cin;

always @(*) begin
    cout = 0;
    sum = a + b + cin;

    if ((a + b + cin) > 9'b0_1111_1111) begin
        cout = 1;
    end
end

endmodule