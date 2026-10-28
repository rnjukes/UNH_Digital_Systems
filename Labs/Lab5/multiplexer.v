module multiplexer (
    I0, I1, I2, I3, O0, O1, O2, O3, Y
);

input I0, I1, I2, I3, O0, O1, O2, O3;  //W13, W14, V15, W15, W17, W16, V16, V17

output Y; //U16

assign Y = (O0 & I0) | (O1 & I1) | (O2 & I2) | (O3 & I3);  
    
endmodule