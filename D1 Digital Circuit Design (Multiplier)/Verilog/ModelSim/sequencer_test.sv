module sequencer_test;

parameter n = 4;

logic start, clock, Q0;
logic add_shift, shift, ready, reset;

sequencer #(.n(n)) s0 (.*);

// Clock
initial
begin
	clock = 1'b0;
	forever #5ns clock = ~clock;
end

// Test sequence
initial
begin
	start = 'b0;
	Q0 = 'b0;
	#10ns start = 'b1;
	#10ns start = 'b0;
	#10ns Q0 = 'b0;
	#20ns Q0 = 'b1;
	#20ns start = 'b1;
	#40ns Q0 = 'b1;
	#20ns Q0 = 'b0;
	#10ns start = 'b0;
end

endmodule
