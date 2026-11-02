`timescale 1ns/1ps

module tb_incrementer8;
reg [7:0] a;
wire [7:0] y;
wire cout;

// DUT: adder8, incrementer8, comparator8 or mask8
incrementer8 DUT(.a(a), .y(y), .cout(cout));

initial begin
    a = 8'b0000_0000; 
    
    #10

    a = 8'b0011_1100; 
    
    #10

    a = 8'b0000_1111; 
    
    #10

    a = 8'b1010_0101; 
    
    #10

    a = 8'b1000_0000; 
    
    #10

    a = 8'b1111_1111; 
end

initial #500 $finish;
endmodule