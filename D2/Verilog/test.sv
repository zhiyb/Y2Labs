`timescale 1ns/1ps

module test;

logic A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19, A20, A21, A22, A23;
logic Q0, Q1, Q3, Q4, Q5, Q6, Q7, Q12, Q15, Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23;

TEAMJ_DESIGN dsn (.*);

logic inv_a, inv_q;
assign A0 = inv_a;
assign inv_q = Q0;

initial
begin
  inv_a = 1'b0;
  #100 inv_a = 1'b1;
  #100 inv_a = 1'b0;
  #100 inv_a = 1'b1;
  #100 inv_a = 1'b0;
  #100 inv_a = 1'b1;
  #100 inv_a = 1'b0;
  #100 inv_a = 'b1;
  #100 inv_a = 1'b0;
end

logic osc_n_reset, osc_enable, osc_oscout;
assign A1 = osc_n_reset;
assign A2 = osc_enable;
assign osc_oscout = Q1;

initial
begin
  osc_n_reset = 1'b1;
  osc_enable = 1'b0;
  #10 osc_n_reset = 1'b0;
  #90 osc_n_reset = 1'b1;
  #4000 osc_enable = 1'b1;
end

logic adder_cin;
logic [3:0] adder_x, adder_y;
logic [4:0] adder_xy;

assign A3 = adder_cin;
assign {A7, A6, A5, A4} = adder_x;
assign {A11, A10, A9, A8} = adder_y;
assign adder_xy = {Q7, Q6, Q5, Q4, Q3};

initial
begin
  adder_x = 4'd0;
  adder_y = 4'd0;
  adder_cin = 1'b0;
  do
  begin
    do
    begin
      do
        #100 adder_x++;
      while (adder_x != 4'd0);
      #100 adder_y++;
    end
    while (adder_y != 4'd0);
    #100 adder_cin++;
  end
  while (adder_cin != 1'b0);
end

logic seq_clock, seq_n_reset, seq_datain, seq_matchall;
logic [53:0] seq;
assign A12 = seq_clock;
assign A13 = seq_n_reset;
assign A14 = seq_datain;
assign seq_matchall = Q12;
assign seq = 54'b111100101110010111101110010111001110010111100111100101;

initial
begin
  seq_clock = 1'b0;
  seq_n_reset = 1'b1;
  seq_datain = 1'b0;
  #10 seq_n_reset = 1'b0;
  #90 seq_n_reset = 1'b1;
  for (int i = 0; i < 54; i++)
  begin
    seq_datain = (seq >> i) & 1'b1;
    #50 seq_clock = 1'b1;
    #50 seq_clock = 1'b0;
  end
end

endmodule
