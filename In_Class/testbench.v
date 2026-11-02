// In-Class Testbench Template
// Use the simulation tab in vivado to use a testbench

// Function simulation -> Gate delay is 0 
// Timing simulation -> Accounts for gate delay

module testbench ();

// Stimulus signals
reg [3:0] in;
reg [1:0] sel;

// Response to signals defined above
wire out;

// Instance of the module being tested
four_to_one_mux_behavior_level(.in(in), .out(out), .select(sel));

// Sim time
initial #160 $finish;

// Generate stimulus for for module test 
initial begin 
in = 4'b1010; 
sel = 2'b00;
//4'b1010 is a number/set of inputs of form -> 
// (n bits)'(b = binary format)(values themselves) 

#20; // Freeze sleep kind of thing for #n nano seconds (generally do 10 to 20?)


end
endmodule