module register_test;

parameter n = 4;

logic clock, reset, add_shift, shift, C;
logic[n - 1:0] Qin, Sum;
logic[n * 2 - 1:0] AQ;

register #(.n(n)) r0 (.*);

// Clock
initial
begin
	clock = 1'b0;
	forever #5ns clock = ~clock;
end

// Test sequence
initial
begin
	reset = 'b0;
	add_shift = 'b0;
	shift = 'b0;
	C = 'b1;
	Qin = 'hE5;
	Sum = 'h47;
	#10ns reset = 'b1;
	#10ns reset = 'b0;
	#10ns shift = 'b1;
	#10ns shift = 'b0;
	#10ns add_shift = 'b1;
	#10ns add_shift = 'b0;
	#10ns reset = 'b1;
	#10ns reset = 'b0;
end

endmodule
