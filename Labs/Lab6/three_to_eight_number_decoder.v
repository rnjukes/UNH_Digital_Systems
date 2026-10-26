module three_to_eight_display_decoder (
    I0, I1, I2, O0, O1, O2, O3, O4, O5, O6
);

input I0, I1, I2;
output O0, O1, O2, O3, O4, O5, O6;
wire nI0, nI1, nI2;

assign nI0 = ~I0;
assign nI1 = ~I1;
assign nI2 = ~I2;

assign O0 = (nI0 & nI1 & I2) | (I0 & nI1 & nI2);
assign O1 = (I0 & nI1 & I2) | (I0 & I1 & nI2); 
assign O2 = (nI0 & I1 & nI2);
assign O3 = (nI0 & nI1 & I2) | (I0 & nI1 & nI2) | (I0 & I1 & I2);
assign O4 = (I2) | (I0 & nI1);
assign O5 = (nI0 & I2) | (nI0 & I1) | (I1 & I2);
assign O6 = (nI0 & nI1) | (I0 & I1 & I2);
    
endmodule