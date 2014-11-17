module combmultiplier #(parameter n = 4) (input logic [n - 1:0] A, B, output logic [n * 2 - 1:0] Q);

logic a[n][n];
logic c[n][n];
logic s[n][n];

// Generate full adder matrix
genvar x, y;
generate
	for (y = 0; y < n; y++)
		for (x = 0; x < n; x++)
			fulladder a0 (.A(a[y][x]), .B(B[y]), .Cin(y == 0 ? '0 : c[y - 1][x]), .S(s[y][x]), .Cout(c[y][x]));
endgenerate

// Connections
genvar i, j;
generate
	for (j = 1; j < n; j++)
		assign a[j][3] = 'b0;
	for (i = 0; i < n; i++)
		assign a[0][i] = A[i];
	for (j = 1; j < n; j++)
		for (i = 0; i < n - 1; i++)
			assign a[j][i] = s[j - 1][i + 1];
	assign Q[n * 2 - 1] = c[n - 1][n - 1];
	for (i = 0; i < n; i++)
		assign Q[i] = s[i][0];
	for (i = 0; i < n - 1; i++)
		assign Q[n + i] = s[n - 1][i + 1];
endgenerate

endmodule
