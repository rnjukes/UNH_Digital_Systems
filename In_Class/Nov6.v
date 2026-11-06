module flip_flop_behavioral (
    D, CLK, Q, Qn
);

input D;
input CLK;
output reg Q
output reg Qn

always @(posedge CLK) begin //Run when CLK is on the positive edge
    Q = D
    Qn = ~Q
end

endmodule