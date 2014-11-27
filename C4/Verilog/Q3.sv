`timescale 1ns/1ps

module testing
 (input logic clk, n_reset, A,
  output logic S, T);

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
logic AnST;
NAND31_H U3B(.A(nA), .B(T), .C(nS), .Q(AnST));
NAND21_H U2C(.A(AnSnT), .B(AnST), .Q(TN));

DFC1_H U1A(.D(SN), .C(clk), .RN(n_reset), .Q(S), .QN(nS));
DFC1_H U1B(.D(TN), .C(clk), .RN(n_reset), .Q(T), .QN(nT));

endmodule
