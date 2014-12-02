// D1 - model solution
// encapsulating module
/*
   author: tjk
   last revision: 17 Oct' 13
*/

module multiplier #(parameter n = 8)
		   (input logic start, input logic [1:0] func,
		    input logic oe, output logic ready, inout [n - 1:0] data);

//// Clock
	logic clock;
	initial
	begin
		clock = 1'b0;
		forever #5ns clock = ~clock;
	end

//// Blocks
	logic C, reset, shift, add_shift;
	logic [n - 1:0] Sum, M, Qin;
	logic [n * 2 - 1:0] AQ;

//`define combinational
`ifndef combinational
	adder #(.n(n)) a0 (.A(AQ[n * 2 - 1:n]), .*);
	register #(.n(n)) r0 (.*);
	sequencer #(.n(n)) s0 (.Q0(AQ[0]), .*);
`else
	combmultiplier #(.n(n)) m0 (.A(M), .B(Qin), .Q(AQ));
	assign ready = 'b1;
`endif

//// Port
	assign data = oe ? (func == 2'b10 ? AQ[n - 1:0] : (func == 2'b11 ? AQ[n * 2 - 1:n] : 'bz)) : 'bz;

	always_ff @(posedge clock)
		case (func)
		2'b00:
			M <= data;
		2'b01:
			Qin <= data;
		endcase

endmodule
