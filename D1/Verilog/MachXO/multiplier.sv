// D1 - model solution
// encapsulating module
/*
   author: tjk
   last revision: 17 Oct' 13
*/

module multiplier #(parameter n = 8)
				  (input logic start, input logic [1:0] func,
				   input logic oe, output logic ready, inout [n - 1:0] data);

//// Internal Oscillator 18-26MHz
	logic osc_clk, clock;
	OSCC OSCC_INST (.OSC(osc_clk));
	//counter #(.n(24)) c(.*); // produces slow clock
	assign clock = osc_clk;

//// Blocks
	logic C, reset, shift, add_shift;
	logic [n - 1:0] Sum, M, Qin;
	logic [n * 2 - 1:0] AQ;

	adder #(.n(n)) A(.A(AQ[n * 2 - 1:n]), .M(M), .C(C), .Sum(Sum));
	register #(.n(n)) R(.*);
	sequencer #(.n(n)) S(.start(start), .clock(clock), .reset(reset), .Q0(AQ[0]),
				.add_shift(add_shift), .shift(shift), .ready(ready));

//// Port
	assign data = oe ? (func == 2'b10 ? AQ[n - 1:0] : (func == 2'b11 ? AQ[n * 2 - 1:n] : 'bz)) : 'bz;

	always_ff @(posedge osc_clk)
		case (func)
		2'b00:
			M <= data;
		2'b01:
			Qin <= data;
		endcase

endmodule
