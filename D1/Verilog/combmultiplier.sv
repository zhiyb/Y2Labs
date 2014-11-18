module combmultiplier #(parameter n = 4) (input logic [n - 1:0] A, B, output logic [n * 2 - 1:0] Q);

logic a[n][n];
logic c[n][n];
logic s[n][n];

// Generate full adder matrix
genvar x, y;
generate
	for (y = 0; y < n; y++)
		for (x = 0; x < n; x++)
			fulladder a0 (.A(a[y][x]), .B(A[x] & B[y]), .Cin(x == 0 ? '0 : c[y][x - 1]), .S(s[y][x]), .Cout(c[y][x]));
endgenerate

// Connections
genvar i, j;
generate
	for (x = 0; x < n; x++)
		assign a[0][x] = 'b0;
	for (y = 1; y < n; y++)
		assign a[y][n - 1] = c[y - 1][n - 1];
	for (y = 1; y < n; y++)
		for (x = 0; x < n - 1; x++)
			assign a[y][x] = s[y - 1][x + 1];
	assign Q[n * 2 - 1] = c[n - 1][n - 1];
	for (i = 0; i < n; i++)
		assign Q[i] = s[i][0];
	for (i = 0; i < n - 1; i++)
		assign Q[n + i] = s[n - 1][i + 1];
endgenerate

endmodule
