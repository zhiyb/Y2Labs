module test;

logic start, clock;
logic[7:0] AQ;

multiplier2 m(.*);

// slow clock is defined here only for simulation
// do not try to synthesise, this is an initial block!
initial 
begin
  clock = 1'b0; 
  forever #1s clock = ~clock; 
end

initial
begin
	start = 1'b0;
	#2s start = 1'b1;
	#24s start = 1'b0;
end

endmodule
