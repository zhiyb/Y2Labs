module test;

parameter n = 8;

logic start;
logic [1:0] func;
logic oe, ready;
wire [n - 1:0] data;

multiplier #(.n(n)) m(.*);

logic op;
logic [n - 1:0] dataop;

assign data = op ? dataop : 'bz;

initial
begin
	start = 1'b0;
	oe = 1'b0;
	func = 'b00;
	op = 1'b1;
	dataop = 'd123;
	#10ns func = 'b01;
	dataop = 'd234;
	#10ns func = 'b11;
	op = 1'b0;
	start = 1'b1;
	#10ns start = 1'b0;
	#70ns func = 'b10;
	#10ns oe = 1'b1;
	#10ns func = 'b11;
	#10ns oe = 1'b0;
	
	#10ns start = 1'b0;
	oe = 1'b0;
	func = 'b00;
	op = 1'b1;
	dataop = 'h55;
	#10ns func = 'b01;
	dataop = 'hAA;
	#10ns func = 'b11;
	op = 1'b0;
	start = 1'b1;
	#30ns start = 1'b0;
	#50ns func = 'b10;
	#10ns oe = 1'b1;
	#10ns func = 'b11;
	#10ns oe = 1'b0;
end

endmodule
