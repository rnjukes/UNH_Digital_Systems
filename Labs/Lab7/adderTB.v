`timescale 1ns/1ps

module tb_adder8;
reg [7:0] a;
reg [7:0] b;
reg cin;
wire[7:0] sum;
wire cout;

// DUT: adder8, incrementer8, comparator8 or mask8
adder8 DUT(.a(a), .b(b), .sum(sum), .cout(cout), .cin(cin));

initial begin
    a = 8'b0011_1100; 
    b = 8'b0000_1111; 
    cin = 1'b0; 
    
    #10

    a = 8'b1111_1111; 
    b = 8'b0000_0001; 
    cin = 1'b0; 
    
    #10

    a = 8'b1010_0101; 
    b = 8'b1010_0101; 
    cin = 1'b0; 
    
    #10

    a = 8'b1000_0000; 
    b = 8'b1000_0000; 
    cin = 1'b0; 
    
    #10

    a = 8'b0000_0000; 
    b = 8'b0000_0000; 
    cin = 1'b1; 
    
    #10

    a = 8'b1111_1111; 
    b = 8'b1111_1111; 
    cin = 1'b1; 
end

initial #500 $finish;
endmodule