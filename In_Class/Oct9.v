// Ryan Jukes
// 10-9-26

module three_to_eight_decoder (ENAB, A0, A1, A2, O0, O1, O2, O3, O4, O5, O6, O7);
input A0, A1, A2, ENAB;
output O0, O1, O2, O3, O4, O5, O6, O7;
wire A0comp, A1comp, A2comp;

//Negations of inputs
assign A0comp = ~A0
assign A1comp = ~A1
assign A2comp = ~A2

//Making the outputs themselves
assign O0 = A0comp & A1comp & A2comp & ENAB;
assign O1 = A0comp & A1comp & A2 & ENAB;
assign O2 = A0comp & A1 & A2comp & ENAB;
assign O3 = A0comp & A1 & A2 & ENAB;
assign O4 = A0 & A1comp & A2comp & ENAB;
assign O5 = A0 & A1comp & A2 & ENAB;
assign O6 = A0 & A1 & A2comp & ENAB;
assign O7 = A0 & A1 & A2 & ENAB;

endmodule



module two_to_four_decoder (ENAB, A0, A1, O0, O1, O2, O3);

//Fill in later

endmodule



module four_to_sixteen_decoder (ENAB, A0, A1, A2, A3, O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15);
input ENAB, A0, A1, A2, A3;
output O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15;
wire A0comp, A1comp, A2comp, A3comp;

assign A0comp = ~A0;
assign A1comp = ~A1;
assign A2comp = ~A2;
assign A3comp = ~A3;

//Fill in more logic 


endmodule