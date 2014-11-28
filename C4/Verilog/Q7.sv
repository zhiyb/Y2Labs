`timescale 1ns/1ps

module testing
 (input logic clk, n_reset, A, B, C, I, M,
  output logic S, T, K, L, N, O);

// Q3, basic (S, T)
logic nA, nS, nT;
logic SN, TN;
INV1_H U4C(.A(A), .Q(nA));
logic nST;
NAND21_H U2A(.A(nS), .B(T), .Q(nST));
logic ASnT;
NAND31_H U3A(.A(S), .B(nT), .C(A), .Q(ASnT));
NAND21_H U2D(.A(nST), .B(ASnT), .Q(SN));
logic AnSnT;
NAND31_H U3C(.A(A), .B(nT), .C(nS), .Q(AnSnT));
logic nAnST;
NAND31_H U3B(.A(nA), .B(T), .C(nS), .Q(nAnST));
NAND21_H U2C(.A(AnSnT), .B(nAnST), .Q(TN));
logic U1AI, U1AD, U1AQ;	// SN
assign U1AI = SN;
assign S = U1AQ;
DFC1_H U1A(.D(U1AD), .C(clk), .RN(n_reset), .Q(U1AQ), .QN(nS));
logic U1BI, U1BD, U1BQ;	// TN
assign U1BI = TN;
assign T = U1BQ;
DFC1_H U1B(.D(U1BD), .C(clk), .RN(n_reset), .Q(U1BQ), .QN(nT));

// Q5, combinational outputs (K, L)
//logic nST;
//NAND21_H U5D(.A(nS), .B(T), .Q(Q5nST));
logic BnT;
NAND21_H U5A(.A(nT), .B(B), .Q(BnT));
NAND21_H U5B(.A(nST), .B(BnT), .Q(K));
NOR21_H U6C(.A(nT), .B(B), .Q(L));

// Q6, sequential output (N)
logic CTn;
NAND21_H U2B(.A(C), .B(T), .Q(CTn));
logic CT;
INV1_H U4A(.A(CTn), .Q(CT));
logic NN;
MUX21_H U6A(.A(N), .B(CT), .S(S), .Q(NN));
logic U1CI, U1CD, U1CQ;	// NN
assign U1CI = NN;
assign N = U1CQ;
DFC1_H U1C(.D(U1CD), .C(clk), .RN(n_reset), .Q(U1CQ));

// Q7, scan design
MUX21_H U1AM(.A(U1AI), .B(I), .S(M), .Q(U1AD));
MUX21_H U1BM(.A(U1BI), .B(U1AQ), .S(M), .Q(U1BD));
MUX21_H U1CM(.A(U1CI), .B(U1BQ), .S(M), .Q(U1CD));
assign O = U1CQ;

endmodule
