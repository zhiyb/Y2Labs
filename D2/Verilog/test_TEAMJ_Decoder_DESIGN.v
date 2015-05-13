// Verilog test bench for D2 chip design

`timescale 1ns/1ps

module test_TEAMJ_Decoder_DESIGN;

// declare DUT input signals as "reg"
// declare DUT output signals as "wire"

reg A15;
reg A16;
reg A22;
reg A23;
wire Q17;
wire Q18;
wire Q19;
wire Q20;
wire Q21;
wire Q22;
wire Q23;
integer errors_Q17;
integer errors_Q18;
integer errors_Q19;
integer errors_Q20;
integer errors_Q21;
integer errors_Q22;
integer errors_Q23;

// declare error count

integer errors;

// instance Device Under Test
//   assumes top-level OrCAD schematic is named "TEAMJ_Decoder_DESIGN"

`ifdef DUT
  `DUT DUT(
`else
  TEAMJ_DESIGN DUT(
`endif
   .A15(A15),
   .A16(A16),
   .A22(A22),
   .A23(A23),
   .Q17(Q17),
   .Q18(Q18),
   .Q19(Q19),
   .Q20(Q20),
   .Q21(Q21),
   .Q22(Q22),
   .Q23(Q23)
);

// monitor the I/O
initial
  begin
    $display( "Simulation Begins" );
    $display ( "  AAAA  QQQQQQQ" );
    $display ( "  1122  1112222" );
    $display ( "  5623  7890123" );
    $display ( "               " );
    `ifdef no_monitor
    `else
    $monitor ( "  ",
      A15,
      A16,
      A22,
      A23,
      "  ",
      Q17,
      Q18,
      Q19,
      Q20,
      Q21,
      Q22,
      Q23,
      "  @ %d ns", $time   );
    `endif
  end

// stimulii

initial
  begin
    errors = 0;
    errors_Q17 = 0;
    errors_Q18 = 0;
    errors_Q19 = 0;
    errors_Q20 = 0;
    errors_Q21 = 0;
    errors_Q22 = 0;
    errors_Q23 = 0;
    $display ( "v 0000  0000000");
    apply_vector ( 4'b0000,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0000  XXXXXXX");
    apply_vector ( 4'b0000,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1000  XXXXXXX");
    apply_vector ( 4'b1000,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0000  0000000");
    apply_vector ( 4'b0000,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000000");
    apply_vector ( 4'b0110,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000000");
    apply_vector ( 4'b0100,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000000");
    apply_vector ( 4'b0100,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000000");
    apply_vector ( 4'b0100,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000000");
    apply_vector ( 4'b0100,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000000");
    apply_vector ( 4'b0100,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000000");
    apply_vector ( 4'b0100,7'b0000000,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100010");
    apply_vector ( 4'b0100,7'b1100010,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100010");
    apply_vector ( 4'b0110,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010111");
    apply_vector ( 4'b0100,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000010");
    apply_vector ( 4'b0111,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000010");
    apply_vector ( 4'b0100,7'b1000010,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110111");
    apply_vector ( 4'b0100,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001111");
    apply_vector ( 4'b0100,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111010");
    apply_vector ( 4'b0111,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111010");
    apply_vector ( 4'b0100,7'b1111010,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101111");
    apply_vector ( 4'b0100,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011010");
    apply_vector ( 4'b0100,7'b1011010,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011010");
    apply_vector ( 4'b0110,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100011");
    apply_vector ( 4'b0100,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1100111");
    apply_vector ( 4'b0100,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010010");
    apply_vector ( 4'b0111,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010010");
    apply_vector ( 4'b0100,7'b1010010,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000111");
    apply_vector ( 4'b0100,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1000011");
    apply_vector ( 4'b0100,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110010");
    apply_vector ( 4'b0100,7'b1110010,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110010");
    apply_vector ( 4'b0110,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001010");
    apply_vector ( 4'b0100,7'b1001010,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001010");
    apply_vector ( 4'b0110,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1010011");
    apply_vector ( 4'b0100,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111111");
    apply_vector ( 4'b0100,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1111011");
    apply_vector ( 4'b0100,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101010");
    apply_vector ( 4'b0111,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101010");
    apply_vector ( 4'b0100,7'b1101010,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1001011");
    apply_vector ( 4'b0100,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011011");
    apply_vector ( 4'b0100,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1101011");
    apply_vector ( 4'b0100,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1011111");
    apply_vector ( 4'b0100,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1110011");
    apply_vector ( 4'b0100,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  1XXXX01");
    apply_vector ( 4'b0100,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100011");
    apply_vector ( 4'b0101,7'b1100011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100010");
    apply_vector ( 4'b0111,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100010");
    apply_vector ( 4'b0101,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100010");
    apply_vector ( 4'b0100,7'b0100010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010110");
    apply_vector ( 4'b0101,7'b1010110,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010110");
    apply_vector ( 4'b0110,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000011");
    apply_vector ( 4'b0101,7'b1000011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000010");
    apply_vector ( 4'b0110,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000010");
    apply_vector ( 4'b0101,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000010");
    apply_vector ( 4'b0100,7'b0000010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110110");
    apply_vector ( 4'b0111,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110110");
    apply_vector ( 4'b0101,7'b1110110,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001110");
    apply_vector ( 4'b0111,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001110");
    apply_vector ( 4'b0101,7'b1001110,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111011");
    apply_vector ( 4'b0101,7'b1111011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111010");
    apply_vector ( 4'b0110,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111010");
    apply_vector ( 4'b0101,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111010");
    apply_vector ( 4'b0100,7'b0111010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101110");
    apply_vector ( 4'b0101,7'b1101110,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101110");
    apply_vector ( 4'b0110,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011011");
    apply_vector ( 4'b0101,7'b1011011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011010");
    apply_vector ( 4'b0111,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011010");
    apply_vector ( 4'b0101,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011010");
    apply_vector ( 4'b0100,7'b0011010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0100110");
    apply_vector ( 4'b0111,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100110");
    apply_vector ( 4'b0101,7'b1100110,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010011");
    apply_vector ( 4'b0101,7'b1010011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0010010");
    apply_vector ( 4'b0110,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010010");
    apply_vector ( 4'b0100,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010010");
    apply_vector ( 4'b0101,7'b0010010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1010111");
    apply_vector ( 4'b0101,7'b1010111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0010110");
    apply_vector ( 4'b0111,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0010110");
    apply_vector ( 4'b0100,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0010110");
    apply_vector ( 4'b0101,7'b0010110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000110");
    apply_vector ( 4'b0101,7'b1000110,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0000110");
    apply_vector ( 4'b0110,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110111");
    apply_vector ( 4'b0101,7'b1110111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0110110");
    apply_vector ( 4'b0110,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110110");
    apply_vector ( 4'b0100,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110110");
    apply_vector ( 4'b0101,7'b0110110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1110011");
    apply_vector ( 4'b0101,7'b1110011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0110010");
    apply_vector ( 4'b0111,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0110010");
    apply_vector ( 4'b0100,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0110010");
    apply_vector ( 4'b0101,7'b0110010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001111");
    apply_vector ( 4'b0101,7'b1001111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0001110");
    apply_vector ( 4'b0110,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001110");
    apply_vector ( 4'b0100,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001110");
    apply_vector ( 4'b0101,7'b0001110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1001011");
    apply_vector ( 4'b0101,7'b1001011,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0001010");
    apply_vector ( 4'b0111,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0001010");
    apply_vector ( 4'b0100,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0001010");
    apply_vector ( 4'b0101,7'b0001010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1100111");
    apply_vector ( 4'b0101,7'b1100111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0100110");
    apply_vector ( 4'b0110,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0100110");
    apply_vector ( 4'b0100,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0100110");
    apply_vector ( 4'b0101,7'b0100110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111110");
    apply_vector ( 4'b0101,7'b1111110,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0111110");
    apply_vector ( 4'b0110,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1000111");
    apply_vector ( 4'b0101,7'b1000111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0000110");
    apply_vector ( 4'b0111,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0000110");
    apply_vector ( 4'b0100,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0000110");
    apply_vector ( 4'b0101,7'b0000110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101011");
    apply_vector ( 4'b0101,7'b1101011,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0101010");
    apply_vector ( 4'b0110,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101010");
    apply_vector ( 4'b0100,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101010");
    apply_vector ( 4'b0101,7'b0101010,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1101111");
    apply_vector ( 4'b0101,7'b1101111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0101110");
    apply_vector ( 4'b0111,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0101110");
    apply_vector ( 4'b0100,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0101110");
    apply_vector ( 4'b0101,7'b0101110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1111111");
    apply_vector ( 4'b0101,7'b1111111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0111110");
    apply_vector ( 4'b0111,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0111110");
    apply_vector ( 4'b0100,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0111110");
    apply_vector ( 4'b0101,7'b0111110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0XXXX00");
    apply_vector ( 4'b0110,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXX00");
    apply_vector ( 4'b0100,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0011110");
    apply_vector ( 4'b0111,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011110");
    apply_vector ( 4'b0101,7'b1011110,
                   4'b1111,7'b1111111);
    $display ( "v 0110  XXXXXXX");
    apply_vector ( 4'b0110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1110  XXXXXXX");
    apply_vector ( 4'b1110,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0110  0011110");
    apply_vector ( 4'b0110,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0011110");
    apply_vector ( 4'b0101,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1XXXX01");
    apply_vector ( 4'b0101,7'b1XXXX01,
                   4'b1111,7'b1000011);
    $display ( "v 0111  XXXXXXX");
    apply_vector ( 4'b0111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1111  XXXXXXX");
    apply_vector ( 4'b1111,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0111  0XXXX00");
    apply_vector ( 4'b0111,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  0XXXX00");
    apply_vector ( 4'b0101,7'b0XXXX00,
                   4'b1111,7'b1000011);
    $display ( "v 0101  XXXXXXX");
    apply_vector ( 4'b0101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1101  XXXXXXX");
    apply_vector ( 4'b1101,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0101  1011111");
    apply_vector ( 4'b0101,7'b1011111,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0011110");
    apply_vector ( 4'b0100,7'b0011110,
                   4'b1111,7'b1111111);
    $display ( "v 0100  XXXXXXX");
    apply_vector ( 4'b0100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 1100  XXXXXXX");
    apply_vector ( 4'b1100,7'bXXXXXXX,
                   4'b1111,7'b0000000);
    $display ( "v 0100  0XXXXX0");
    apply_vector ( 4'b0100,7'b0XXXXX0,
                   4'b1111,7'b1000001);
    $display ( "v 0100  0XXXXX0");
    apply_vector ( 4'b0100,7'b0XXXXX0,
                   4'b1111,7'b1000001);
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
        if (  errors_Q17 > 0 )
          $display ( "       ", errors_Q17, " errors with Q17",) ;
        if (  errors_Q18 > 0 )
          $display ( "       ", errors_Q18, " errors with Q18",) ;
        if (  errors_Q19 > 0 )
          $display ( "       ", errors_Q19, " errors with Q19",) ;
        if (  errors_Q20 > 0 )
          $display ( "       ", errors_Q20, " errors with Q20",) ;
        if (  errors_Q21 > 0 )
          $display ( "       ", errors_Q21, " errors with Q21",) ;
        if (  errors_Q22 > 0 )
          $display ( "       ", errors_Q22, " errors with Q22",) ;
        if (  errors_Q23 > 0 )
          $display ( "       ", errors_Q23, " errors with Q23",) ;
        $display( "" );
        $display( "Total: ", errors, " errors");
        $display( "" );
      end
    $stop;
    $finish;
  end

// function declaration

task apply_vector;

  input [3:0] stimulus_vector;
  input [6:0] expected_vector;
  input [3:0] stimulus_mask;
  input [6:0] expected_mask;

  begin
    `ifdef set_x_to_0
      {A15,A16,A22,A23} = stimulus_vector & stimulus_mask ;
    `else
      {A15,A16,A22,A23} = stimulus_vector;
    `endif
    #500
    check_vector( expected_vector, expected_mask );
    #500
    $display("");
  end

endtask
task check_vector;

  input [6:0] expected_vector;
  input [6:0] mask_vector;

  reg [6:0] received_vector;
  reg [6:0] difference_vector;

  integer local_errors;

  begin
    local_errors = 0;
    received_vector = {Q17,Q18,Q19,Q20,Q21,Q22,Q23};
    difference_vector = ( received_vector ^ expected_vector ) & mask_vector ;
    $display( "r       %b", received_vector );
    $display( "        %s", error_point( difference_vector ) );
    if ( expected_vector[6] !== 1'bX )
      if ( expected_vector[6] !== Q17)
        begin
          $display( "error with Q17 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q17 = errors_Q17 + 1;
        end
    if ( expected_vector[5] !== 1'bX )
      if ( expected_vector[5] !== Q18)
        begin
          $display( "error with Q18 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q18 = errors_Q18 + 1;
        end
    if ( expected_vector[4] !== 1'bX )
      if ( expected_vector[4] !== Q19)
        begin
          $display( "error with Q19 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q19 = errors_Q19 + 1;
        end
    if ( expected_vector[3] !== 1'bX )
      if ( expected_vector[3] !== Q20)
        begin
          $display( "error with Q20 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q20 = errors_Q20 + 1;
        end
    if ( expected_vector[2] !== 1'bX )
      if ( expected_vector[2] !== Q21)
        begin
          $display( "error with Q21 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q21 = errors_Q21 + 1;
        end
    if ( expected_vector[1] !== 1'bX )
      if ( expected_vector[1] !== Q22)
        begin
          $display( "error with Q22 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q22 = errors_Q22 + 1;
        end
    if ( expected_vector[0] !== 1'bX )
      if ( expected_vector[0] !== Q23)
        begin
          $display( "error with Q23 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q23 = errors_Q23 + 1;
        end
    if ( local_errors > 0 ) $display( "" );
    errors = errors + local_errors;
  end

endtask
function [55:0] error_point;

  input [6:0] in_vector;
  integer i, j;
  begin
    error_point[ 7 : 0 ] = ( in_vector[ 0 ] === 0 ) ? " " : "^";
    error_point[ 15 : 8 ] = ( in_vector[ 1 ] === 0 ) ? " " : "^";
    error_point[ 23 : 16 ] = ( in_vector[ 2 ] === 0 ) ? " " : "^";
    error_point[ 31 : 24 ] = ( in_vector[ 3 ] === 0 ) ? " " : "^";
    error_point[ 39 : 32 ] = ( in_vector[ 4 ] === 0 ) ? " " : "^";
    error_point[ 47 : 40 ] = ( in_vector[ 5 ] === 0 ) ? " " : "^";
    error_point[ 55 : 48 ] = ( in_vector[ 6 ] === 0 ) ? " " : "^";
  end

endfunction


endmodule

