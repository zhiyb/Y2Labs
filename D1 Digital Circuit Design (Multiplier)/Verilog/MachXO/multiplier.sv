module multiplier #(parameter n = 8, freq = 25000000)
				  (input logic startPB, input logic [1:0] func,
				   input logic oe, output logic ready, inout [n - 1:0] data);

//// Internal Oscillator 18-26MHz
	logic osc_clk, clock;
	OSCC OSCC_INST (.OSC(osc_clk));
	//counter #(.n(24)) c(.*); // produces slow clock
	assign clock = osc_clk;

//// Debounce
	logic start;
	debounce #(.n(freq / 1000)) d0(.clk(osc_clk), .in(startPB), .out(start));

//// Blocks
	logic C, reset, shift, add_shift;
	logic [n - 1:0] Sum, M, Qin;
	logic [n * 2 - 1:0] AQ;

//`define combinational
`ifndef combinational
	adder #(.n(n)) A(.A(AQ[n * 2 - 1:n]), .*);
	register #(.n(n)) R(.*);
	sequencer #(.n(n)) S(.Q0(AQ[0]), .*);
`else
	combmultiplier #(.n(n)) c0 (.A(M), .B(Qin), .Q(AQ));
	assign ready = 'b1;
`endif

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
