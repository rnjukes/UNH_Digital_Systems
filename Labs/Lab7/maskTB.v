`timescale 1ns/1ps

module tb_mask8;
reg [7:0] a;
reg [7:0] b;
wire[7:0] y;

// DUT: adder8, incrementer8, comparator8 or mask8
mask8 DUT(.a(a), .b(b), .y(y));

initial begin
    a = 8'b0011_1100; 
    b = 8'b0000_1111; 
    
    #10

    a = 8'b1111_1111; 
    b = 8'b0000_0001; 
    
    #10

    a = 8'b1010_0101; 
    b = 8'b1010_0101;
    
    #10

    a = 8'b1000_0000; 
    b = 8'b1000_0000;
    
    #10

    a = 8'b1010_0101; 
    b = 8'b1111_0000; 
    
    #10

    a = 8'b1010_0101; 
    b = 8'b0000_0000; 
end

initial #500 $finish;
endmodule