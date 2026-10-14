// Ryan Jukes
// 10-14-26

// Time complexity/delay = 3 levels
module ALU_adder_1bit (ADDEND, AUGEND, CIN, COUT, SUM); 
input ADDEND, AUGEND, CIN;
output COUT, SUM;

assign COUT = (CIN & ADDEND) | (AUGEND & CIN) | (ADDEND & AUGEND);

// Full eq from k-map of ALU adder done in class
// assign SUM = ((~ADDEND) & (~AUGEND) & CIN) | (ADDEND & (~AUGEND) & (~CIN)) | (ADDEND & AUGEND & CIN) | ((~ADDEND) & AUGEND & (~CIN));

assign SUM = ADDEND ^ AUGEND ^ CIN;
// xor is ^ symbol in .v

endmodule



module ALU_adder_3bit (ADDEND0, ADDEND1, ADDEND2, AUGEND0, AUGEND1, AUGEND2, CIN, COUT, SUM);
input ADDEND0, ADDEND1, ADDEND2, AUGEND0, AUGEND1, AUGEND2, CIN;
output COUT, SUM;

// Use three 1 bit adders and link their carry outs to the next one's carry in

endmodule