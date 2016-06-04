// D1 - encapsulating module modified for Modelsim simulations
/*
   author: tjk
   last revision: 12 Nov' 13
*/

module multiplier(input logic start, output logic[7:0] AQ);

logic osc_clk, clock, C, ready, reset, shift, add;
logic [3:0] M,Qin, Sum;

//////  internal osc commented out for simulation, 
///// uncomment for synthesis
//// Internal Oscillator 3.33MHz
/*	defparam OSCH_inst.NOM_FREQ = "3.33";
	OSCH OSCH_inst
		( 
		.STDBY(1'b0), 		// 0=Enabled, 1=Disabled
		.OSC(osc_clk),
		.SEDSTDBY() 
		);

*/

// slow clock is defined here only for simulation
// do not try to synthesise, this is an initial block!
initial 
begin
  clock = 1'b0; 
  forever #1s clock = ~clock; 
end



assign M = 4'b0101; // multiplicand - hardwired
assign Qin = 4'b0111; // multiplier - hardwired


/// slow clock counter commented out for simulation, 
//  uncomment for synthesis
//counter c(.*); // produces slow clock


adder A(.A(AQ[7:4]), .M(M), .C(C), .Sum(Sum));
register R(.*);
sequencer S(.start(start), .clock(clock), .reset(reset), .Q0(AQ[0]),
 .add(add), .shift(shift), .ready(ready));
  
endmodule