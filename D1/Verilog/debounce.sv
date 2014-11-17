module debounce #(parameter n = 12500000)
(input logic clk, in, output logic out);

logic [$clog2(n) - 1:0] count;

always_ff @(posedge clk) begin
	if (~in)
		count <= 0;
	else if (count != n - 1)
		count <= count + 1;
end

assign out = count == n - 1;

endmodule
