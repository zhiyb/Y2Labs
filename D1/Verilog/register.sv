module register #(parameter n = 4)
				(input logic clock, reset, add_shift, shift, C,
				 input logic[n - 1:0] Qin, Sum, output logic[n * 2 - 1:0] AQ);

always_ff @ (posedge clock)
  if (reset)                    // clear C,A and load Q
  begin
   AQ[n * 2 - 1:n] <= 0;
   AQ[n - 1:0] <= Qin;          // load multiplier into Q
  end
  else if (add_shift)           // add, then shift
   AQ <= {C,Sum,AQ[n - 1:1]};
  else if (shift)               // shift AQ
   AQ <= {1'b0,AQ[n * 2 - 1:1]};
endmodule
