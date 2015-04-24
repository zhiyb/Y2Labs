`timescale 1ns/1ps

// d2lib.v
//   verilog models for simulation of AMS 0.35um standard cells for D2
//   - note that delays are not accurate
//
// version
//   3.0 includes setup and hold times 16/4/2015
//   2.0 INV1_H added 16/5/2010
//   1.0 initial version 28/4/2008

module INV1_H ( A, Q );
parameter delay = 1;
input A;
output Q;
  assign #delay Q = !A;
endmodule


module INV10_H ( A, Q );
parameter delay = 1;
input A;
output Q;
  assign #delay Q = !A;
endmodule


module BUF4_H ( A, Q ); 
parameter delay = 1;
input A;
output Q;
  assign #delay Q = A;
endmodule


module TIE0_H ( Q ); 
parameter delay = 1;
output Q;
  assign Q = 0;
endmodule


module TIE1_H ( Q ); 
parameter delay = 1;
output Q;
  assign Q = 1;
endmodule


module XNR21_H ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ! ( A ^ B );
endmodule


module XOR21_H ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ( A ^ B );
endmodule


module NAND21_H ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ! ( A && B );
endmodule


module NAND31_H ( A, B, C, Q ); 
parameter delay = 1;
input A;
input B;
input C;
output Q;
  assign #delay Q = ! ( A && B && C );
endmodule


module NAND41_H ( A, B, C, D, Q ); 
parameter delay = 1;
input A;
input B;
input C;
input D;
output Q;
  assign #delay Q = ! ( A && B && C && D );
endmodule


module NOR21_H ( A, B, Q ); 
parameter delay = 1;
input A;
input B;
output Q;
  assign #delay Q = ! ( A || B );
endmodule


module NOR31_H ( A, B, C, Q ); 
parameter delay = 1;

input A;
input B;
input C;
output Q;
  assign #delay Q = ! ( A || B || C );
endmodule


module NOR41_H ( A, B, C, D, Q ); 
parameter delay = 1;
input A;
input B;
input C;
input D;
output Q;
  assign #delay Q = ! ( A || B || C || D );
endmodule


module DFC1_H ( D, C, RN, Q, QN );
parameter delay = 2;
input D, C, RN;
output Q, QN;

  specify
    // T_setup = 1x1ns
    // T_hold  = 2x1ns
    $setuphold(posedge C, D, 1, 2);
  endspecify

reg Q, QN;
always @(posedge C or negedge RN)
  if ( ! RN )
    begin
      Q <= #delay 0;
      QN <= #delay 1;
    end
  else
    begin
      Q <= #delay D;
      QN <= #delay !D;
    end
endmodule


module MUX21_H ( A, B, S, Q ); 
parameter delay = 1;
input A;
input B;
input S;
output Q;
  assign Q = (B && S) || (A && (! S));
endmodule
