// D1 - model solution
// registers C and AQ, code as suggested in the briefing lecture
/*
   author: tjk
   last revision: 17 Oct' 13
*/

module register (input logic clock, reset, add, shift, C,
              input logic[3:0] Qin, Sum, output logic[7:0] AQ);

logic Creg; // MSB carry bit storage

always_ff @ (posedge clock)
  if (reset)  // clear C,A and load Q
  begin
   Creg <= 0;
   AQ[7:4] <= 0;
   AQ[3:0] <= Qin; // load multiplier into Q
  end
  else if (add) // store Sum in C,A
  begin
   Creg <= C;
   AQ[7:4] <= Sum;
  end
  else if (shift) // shift A, Q
  begin
   {Creg,AQ} <= {1'b0,Creg,AQ[7:1]};
  end
endmodule
