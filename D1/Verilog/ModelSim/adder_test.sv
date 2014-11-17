module adder_test;

parameter n = 8;

logic [n - 1:0] A, M;
logic C;
logic [n - 1:0] Sum;

adder #(.n(n)) a0 (.*);

initial
begin
/*	A = 'b0;
	do
	begin
		M = 'b0;
		do
		begin
			#5ns;
		end
		while (++M != 'b0);
	end
	while (++A != 'b0);*/
	A = 'b0;
	do
	begin
		M = A;
		#5ns;
	end
	while (++A != 'b0);
end

endmodule
