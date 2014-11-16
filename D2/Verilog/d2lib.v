`timescale 1ns/1ps

module INV1_H ( A, Q );
parameter delay = 5;
input A;
output Q;
  assign #delay Q = !A;
endmodule


module INV10_H ( A, Q );
parameter delay = 5;
input A;
output Q;
  assign #delay Q = !A;
endmodule


module BUF4_H ( A, Q ); 
parameter delay = 5;
input A;
output Q;
  assign #delay Q = A;
endmodule


module TIE0_H ( Q ); 
parameter delay = 5;
output Q;
  assign Q = 0;
endmodule


module TIE1_H ( Q ); 
parameter delay = 5;
output Q;
  assign Q = 1;
endmodule


module XNR21_H ( A, B, Q ); 
parameter delay = 5;
input A;
input B;
output Q;
  assign #delay Q = ! ( A ^ B );
endmodule


module XOR21_H ( A, B, Q ); 
parameter delay = 5;
input A;
input B;
output Q;
  assign #delay Q = ( A ^ B );
endmodule


module NAND21_H ( A, B, Q ); 
parameter delay = 5;
input A;
input B;
output Q;
  assign #delay Q = ! ( A && B );
endmodule


module NAND31_H ( A, B, C, Q ); 
parameter delay = 5;
input A;
input B;
input C;
output Q;
  assign #delay Q = ! ( A && B && C );
endmodule


module NAND41_H ( A, B, C, D, Q ); 
parameter delay = 5;
input A;
input B;
input C;
input D;
output Q;
  assign #delay Q = ! ( A && B && C && D );
endmodule


module NOR21_H ( A, B, Q ); 
parameter delay = 5;
input A;
input B;
output Q;
  assign #delay Q = ! ( A || B );
endmodule


module NOR31_H ( A, B, C, Q ); 
parameter delay = 5;

input A;
input B;
input C;
output Q;
  assign #delay Q = ! ( A || B || C );
endmodule


module NOR41_H ( A, B, C, D, Q ); 
parameter delay = 5;
input A;
input B;
input C;
input D;
output Q;
  assign #delay Q = ! ( A || B || C || D );
endmodule


module DFC1_H ( D, C, RN, Q, QN );
parameter delay = 5;
input D, C, RN;
output Q, QN;
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
parameter delay = 5;
input A;
input B;
input S;
output Q;
  assign Q = (B && S) || (A && (! S));
endmodule
