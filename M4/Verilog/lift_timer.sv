timeunit 1ns;
timeprecision 100ps;

module lift_timer #(parameter t)
 (input logic clock, n_reset, clear,
  output logic timeout);

logic [$clog2(t) - 1 : 0] cnt;

always_ff @(posedge clock, negedge n_reset)
  if (~n_reset)
    cnt <= '0;
  else if (clear)
    cnt <= '0;
  else if (cnt != t - 1)
    cnt <= cnt + 1'b1;

assign timeout = cnt == t - 1;

endmodule
