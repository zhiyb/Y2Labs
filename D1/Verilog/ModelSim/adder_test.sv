module adder_test;
parameter n = 4;

logic [n - 1:0] A, M, Sum;
logic C;

adder #(.n(n)) a0 (.*);

initial
begin
	A = 'b0;
	M = 'b0;
	do
	begin
		#5ns A++;
		#5ns M = A;
	end
	while (A != 'b0);
end

endmodule
