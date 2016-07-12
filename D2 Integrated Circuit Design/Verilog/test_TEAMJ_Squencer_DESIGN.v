// Verilog test bench for D2 chip design

`timescale 1ns/1ps

module test_TEAMJ_Squencer_DESIGN;

// declare DUT input signals as "reg"
// declare DUT output signals as "wire"

reg A12;
reg A13;
reg A14;
wire Q12;
integer errors_Q12;

// declare error count

integer errors;

// instance Device Under Test
//   assumes top-level OrCAD schematic is named "TEAMJ_Squencer_DESIGN"

`ifdef DUT
  `DUT DUT(
`else
  TEAMJ_DESIGN DUT(
`endif
   .A12(A12),
   .A13(A13),
   .A14(A14),
   .Q12(Q12)
);

// monitor the I/O
initial
  begin
    $display( "Simulation Begins" );
    $display ( "  AAA  Q" );
    $display ( "  111  1" );
    $display ( "  234  2" );
    $display ( "        " );
    `ifdef no_monitor
    `else
    $monitor ( "  ",
      A12,
      A13,
      A14,
      "  ",
      Q12,
      "  @ %d ns", $time   );
    `endif
  end

// stimulii

initial
  begin
    errors = 0;
    errors_Q12 = 0;
    $display ( "v 000  0");
    apply_vector ( 3'b000,1'b0,
                   3'b111,1'b1);
    $display ( "v 000  X");
    apply_vector ( 3'b000,1'bX,
                   3'b111,1'b0);
    $display ( "v 100  X");
    apply_vector ( 3'b100,1'bX,
                   3'b111,1'b0);
    $display ( "v 000  0");
    apply_vector ( 3'b000,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  1");
    apply_vector ( 3'b011,1'b1,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 010  X");
    apply_vector ( 3'b010,1'bX,
                   3'b111,1'b0);
    $display ( "v 110  X");
    apply_vector ( 3'b110,1'bX,
                   3'b111,1'b0);
    $display ( "v 010  0");
    apply_vector ( 3'b010,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 011  X");
    apply_vector ( 3'b011,1'bX,
                   3'b111,1'b0);
    $display ( "v 111  X");
    apply_vector ( 3'b111,1'bX,
                   3'b111,1'b0);
    $display ( "v 011  0");
    apply_vector ( 3'b011,1'b0,
                   3'b111,1'b1);
    $display ( "v 000  0");
    apply_vector ( 3'b000,1'b0,
                   3'b111,1'b1);
    if ( errors == 0 )
      begin
        $display( "Simulation OK" );
        $display( "All vectors passed" );
      end
    else
      begin
        $display( "" );
        $display( "Simulation Failed" );
        $display( "" );
        if (  errors_Q12 > 0 )
          $display ( "       ", errors_Q12, " errors with Q12",) ;
        $display( "" );
        $display( "Total: ", errors, " errors");
        $display( "" );
      end
    $stop;
    $finish;
  end

// function declaration

task apply_vector;

  input [2:0] stimulus_vector;
  input [0:0] expected_vector;
  input [2:0] stimulus_mask;
  input [0:0] expected_mask;

  begin
    `ifdef set_x_to_0
      {A12,A13,A14} = stimulus_vector & stimulus_mask ;
    `else
      {A12,A13,A14} = stimulus_vector;
    `endif
    #500
    check_vector( expected_vector, expected_mask );
    #500
    $display("");
  end

endtask
task check_vector;

  input [0:0] expected_vector;
  input [0:0] mask_vector;

  reg [0:0] received_vector;
  reg [0:0] difference_vector;

  integer local_errors;

  begin
    local_errors = 0;
    received_vector = {Q12};
    difference_vector = ( received_vector ^ expected_vector ) & mask_vector ;
    $display( "r      %b", received_vector );
    $display( "       %s", error_point( difference_vector ) );
    if ( expected_vector[0] !== 1'bX )
      if ( expected_vector[0] !== Q12)
        begin
          $display( "error with Q12 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q12 = errors_Q12 + 1;
        end
    if ( local_errors > 0 ) $display( "" );
    errors = errors + local_errors;
  end

endtask
function [7:0] error_point;

  input [0:0] in_vector;
  integer i, j;
  begin
    error_point[ 7 : 0 ] = ( in_vector[ 0 ] === 0 ) ? " " : "^";
  end

endfunction


endmodule

