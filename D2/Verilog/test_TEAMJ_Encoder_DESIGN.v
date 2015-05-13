// Verilog test bench for D2 chip design

`timescale 1ns/1ps

module test_TEAMJ_Encoder_DESIGN;

// declare DUT input signals as "reg"
// declare DUT output signals as "wire"

reg A15;
reg A16;
reg A17;
reg A18;
reg A19;
reg A20;
reg A21;
wire Q15;
wire Q16;
integer errors_Q15;
integer errors_Q16;

// declare error count

integer errors;

// instance Device Under Test
//   assumes top-level OrCAD schematic is named "TEAMJ_Encoder_DESIGN"

`ifdef DUT
  `DUT DUT(
`else
  TEAMJ_DESIGN DUT(
`endif
   .A15(A15),
   .A16(A16),
   .A17(A17),
   .A18(A18),
   .A19(A19),
   .A20(A20),
   .A21(A21),
   .Q15(Q15),
   .Q16(Q16)
);

// monitor the I/O
initial
  begin
    $display( "Simulation Begins" );
    $display ( "  AAAAAAA  QQ" );
    $display ( "  1111122  11" );
    $display ( "  5678901  56" );
    $display ( "             " );
    `ifdef no_monitor
    `else
    $monitor ( "  ",
      A15,
      A16,
      A17,
      A18,
      A19,
      A20,
      A21,
      "  ",
      Q15,
      Q16,
      "  @ %d ns", $time   );
    `endif
  end

// stimulii

initial
  begin
    errors = 0;
    errors_Q15 = 0;
    errors_Q16 = 0;
    $display ( "v 0000000  00");
    apply_vector ( 7'b0000000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0000000  XX");
    apply_vector ( 7'b0000000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1000000  XX");
    apply_vector ( 7'b1000000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0000000  00");
    apply_vector ( 7'b0000000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0110000  XX");
    apply_vector ( 7'b0110000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110000  XX");
    apply_vector ( 7'b1110000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110000  11");
    apply_vector ( 7'b0110000,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  00");
    apply_vector ( 7'b0100000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  01");
    apply_vector ( 7'b0100000,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  00");
    apply_vector ( 7'b0100000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  01");
    apply_vector ( 7'b0100000,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  00");
    apply_vector ( 7'b0100000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  00");
    apply_vector ( 7'b0100000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  00");
    apply_vector ( 7'b0100000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0111000  XX");
    apply_vector ( 7'b0111000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111000  XX");
    apply_vector ( 7'b1111000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111000  10");
    apply_vector ( 7'b0111000,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  01");
    apply_vector ( 7'b0101000,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  00");
    apply_vector ( 7'b0101000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  00");
    apply_vector ( 7'b0101000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  00");
    apply_vector ( 7'b0101000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  00");
    apply_vector ( 7'b0101000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  00");
    apply_vector ( 7'b0101000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101000  XX");
    apply_vector ( 7'b0101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101000  XX");
    apply_vector ( 7'b1101000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101000  00");
    apply_vector ( 7'b0101000,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0110100  XX");
    apply_vector ( 7'b0110100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110100  XX");
    apply_vector ( 7'b1110100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110100  11");
    apply_vector ( 7'b0110100,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  00");
    apply_vector ( 7'b0100100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  00");
    apply_vector ( 7'b0100100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  01");
    apply_vector ( 7'b0100100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  00");
    apply_vector ( 7'b0100100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  00");
    apply_vector ( 7'b0100100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  01");
    apply_vector ( 7'b0100100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100100  XX");
    apply_vector ( 7'b0100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100100  XX");
    apply_vector ( 7'b1100100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100100  00");
    apply_vector ( 7'b0100100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0111100  XX");
    apply_vector ( 7'b0111100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111100  XX");
    apply_vector ( 7'b1111100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111100  10");
    apply_vector ( 7'b0111100,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  01");
    apply_vector ( 7'b0101100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  01");
    apply_vector ( 7'b0101100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  01");
    apply_vector ( 7'b0101100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  01");
    apply_vector ( 7'b0101100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  00");
    apply_vector ( 7'b0101100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  01");
    apply_vector ( 7'b0101100,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101100  XX");
    apply_vector ( 7'b0101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101100  XX");
    apply_vector ( 7'b1101100,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101100  00");
    apply_vector ( 7'b0101100,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0110010  XX");
    apply_vector ( 7'b0110010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110010  XX");
    apply_vector ( 7'b1110010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110010  10");
    apply_vector ( 7'b0110010,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  00");
    apply_vector ( 7'b0100010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  01");
    apply_vector ( 7'b0100010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  00");
    apply_vector ( 7'b0100010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  00");
    apply_vector ( 7'b0100010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  01");
    apply_vector ( 7'b0100010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  01");
    apply_vector ( 7'b0100010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100010  XX");
    apply_vector ( 7'b0100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100010  XX");
    apply_vector ( 7'b1100010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100010  00");
    apply_vector ( 7'b0100010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0111010  XX");
    apply_vector ( 7'b0111010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111010  XX");
    apply_vector ( 7'b1111010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111010  11");
    apply_vector ( 7'b0111010,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  01");
    apply_vector ( 7'b0101010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  00");
    apply_vector ( 7'b0101010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  00");
    apply_vector ( 7'b0101010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  01");
    apply_vector ( 7'b0101010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  01");
    apply_vector ( 7'b0101010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  01");
    apply_vector ( 7'b0101010,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101010  XX");
    apply_vector ( 7'b0101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101010  XX");
    apply_vector ( 7'b1101010,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101010  00");
    apply_vector ( 7'b0101010,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0110110  XX");
    apply_vector ( 7'b0110110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110110  XX");
    apply_vector ( 7'b1110110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110110  10");
    apply_vector ( 7'b0110110,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  00");
    apply_vector ( 7'b0100110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  00");
    apply_vector ( 7'b0100110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  01");
    apply_vector ( 7'b0100110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  01");
    apply_vector ( 7'b0100110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  01");
    apply_vector ( 7'b0100110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  00");
    apply_vector ( 7'b0100110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100110  XX");
    apply_vector ( 7'b0100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100110  XX");
    apply_vector ( 7'b1100110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100110  00");
    apply_vector ( 7'b0100110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0111110  XX");
    apply_vector ( 7'b0111110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111110  XX");
    apply_vector ( 7'b1111110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111110  11");
    apply_vector ( 7'b0111110,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  01");
    apply_vector ( 7'b0101110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  01");
    apply_vector ( 7'b0101110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  01");
    apply_vector ( 7'b0101110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  00");
    apply_vector ( 7'b0101110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  01");
    apply_vector ( 7'b0101110,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  00");
    apply_vector ( 7'b0101110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101110  XX");
    apply_vector ( 7'b0101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101110  XX");
    apply_vector ( 7'b1101110,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101110  00");
    apply_vector ( 7'b0101110,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0110001  XX");
    apply_vector ( 7'b0110001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110001  XX");
    apply_vector ( 7'b1110001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110001  10");
    apply_vector ( 7'b0110001,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  00");
    apply_vector ( 7'b0100001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  00");
    apply_vector ( 7'b0100001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  00");
    apply_vector ( 7'b0100001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  01");
    apply_vector ( 7'b0100001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  00");
    apply_vector ( 7'b0100001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  01");
    apply_vector ( 7'b0100001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100001  XX");
    apply_vector ( 7'b0100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100001  XX");
    apply_vector ( 7'b1100001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100001  01");
    apply_vector ( 7'b0100001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0111001  XX");
    apply_vector ( 7'b0111001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111001  XX");
    apply_vector ( 7'b1111001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111001  11");
    apply_vector ( 7'b0111001,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  01");
    apply_vector ( 7'b0101001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  01");
    apply_vector ( 7'b0101001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  00");
    apply_vector ( 7'b0101001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  00");
    apply_vector ( 7'b0101001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  00");
    apply_vector ( 7'b0101001,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  01");
    apply_vector ( 7'b0101001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101001  XX");
    apply_vector ( 7'b0101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101001  XX");
    apply_vector ( 7'b1101001,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101001  01");
    apply_vector ( 7'b0101001,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0110101  XX");
    apply_vector ( 7'b0110101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110101  XX");
    apply_vector ( 7'b1110101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110101  10");
    apply_vector ( 7'b0110101,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  00");
    apply_vector ( 7'b0100101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  01");
    apply_vector ( 7'b0100101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  01");
    apply_vector ( 7'b0100101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  00");
    apply_vector ( 7'b0100101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  00");
    apply_vector ( 7'b0100101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  00");
    apply_vector ( 7'b0100101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100101  XX");
    apply_vector ( 7'b0100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100101  XX");
    apply_vector ( 7'b1100101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100101  01");
    apply_vector ( 7'b0100101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0111101  XX");
    apply_vector ( 7'b0111101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111101  XX");
    apply_vector ( 7'b1111101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111101  11");
    apply_vector ( 7'b0111101,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  01");
    apply_vector ( 7'b0101101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  00");
    apply_vector ( 7'b0101101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  01");
    apply_vector ( 7'b0101101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  01");
    apply_vector ( 7'b0101101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  00");
    apply_vector ( 7'b0101101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  00");
    apply_vector ( 7'b0101101,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101101  XX");
    apply_vector ( 7'b0101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101101  XX");
    apply_vector ( 7'b1101101,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101101  01");
    apply_vector ( 7'b0101101,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0110011  XX");
    apply_vector ( 7'b0110011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110011  XX");
    apply_vector ( 7'b1110011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110011  11");
    apply_vector ( 7'b0110011,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  00");
    apply_vector ( 7'b0100011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  00");
    apply_vector ( 7'b0100011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  00");
    apply_vector ( 7'b0100011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  00");
    apply_vector ( 7'b0100011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  01");
    apply_vector ( 7'b0100011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  00");
    apply_vector ( 7'b0100011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100011  XX");
    apply_vector ( 7'b0100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100011  XX");
    apply_vector ( 7'b1100011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100011  01");
    apply_vector ( 7'b0100011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0111011  XX");
    apply_vector ( 7'b0111011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111011  XX");
    apply_vector ( 7'b1111011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111011  10");
    apply_vector ( 7'b0111011,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  01");
    apply_vector ( 7'b0101011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  01");
    apply_vector ( 7'b0101011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  00");
    apply_vector ( 7'b0101011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  01");
    apply_vector ( 7'b0101011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  01");
    apply_vector ( 7'b0101011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  00");
    apply_vector ( 7'b0101011,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101011  XX");
    apply_vector ( 7'b0101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101011  XX");
    apply_vector ( 7'b1101011,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101011  01");
    apply_vector ( 7'b0101011,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0110111  XX");
    apply_vector ( 7'b0110111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1110111  XX");
    apply_vector ( 7'b1110111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0110111  11");
    apply_vector ( 7'b0110111,2'b11,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  00");
    apply_vector ( 7'b0100111,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  01");
    apply_vector ( 7'b0100111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  01");
    apply_vector ( 7'b0100111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  01");
    apply_vector ( 7'b0100111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  01");
    apply_vector ( 7'b0100111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  01");
    apply_vector ( 7'b0100111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100111  XX");
    apply_vector ( 7'b0100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100111  XX");
    apply_vector ( 7'b1100111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100111  01");
    apply_vector ( 7'b0100111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0111111  XX");
    apply_vector ( 7'b0111111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1111111  XX");
    apply_vector ( 7'b1111111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0111111  10");
    apply_vector ( 7'b0111111,2'b10,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  01");
    apply_vector ( 7'b0101111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  00");
    apply_vector ( 7'b0101111,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  01");
    apply_vector ( 7'b0101111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  00");
    apply_vector ( 7'b0101111,2'b00,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  01");
    apply_vector ( 7'b0101111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  01");
    apply_vector ( 7'b0101111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0101111  XX");
    apply_vector ( 7'b0101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1101111  XX");
    apply_vector ( 7'b1101111,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0101111  01");
    apply_vector ( 7'b0101111,2'b01,
                   7'b1111111,2'b11);
    $display ( "v 0100000  XX");
    apply_vector ( 7'b0100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 1100000  XX");
    apply_vector ( 7'b1100000,2'bXX,
                   7'b1111111,2'b00);
    $display ( "v 0100000  0X");
    apply_vector ( 7'b0100000,2'b0X,
                   7'b1111111,2'b10);
    $display ( "v 0100000  0X");
    apply_vector ( 7'b0100000,2'b0X,
                   7'b1111111,2'b10);
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
        if (  errors_Q15 > 0 )
          $display ( "       ", errors_Q15, " errors with Q15",) ;
        if (  errors_Q16 > 0 )
          $display ( "       ", errors_Q16, " errors with Q16",) ;
        $display( "" );
        $display( "Total: ", errors, " errors");
        $display( "" );
      end
    $stop;
    $finish;
  end

// function declaration

task apply_vector;

  input [6:0] stimulus_vector;
  input [1:0] expected_vector;
  input [6:0] stimulus_mask;
  input [1:0] expected_mask;

  begin
    `ifdef set_x_to_0
      {A15,A16,A17,A18,A19,A20,A21} = stimulus_vector & stimulus_mask ;
    `else
      {A15,A16,A17,A18,A19,A20,A21} = stimulus_vector;
    `endif
    #500
    check_vector( expected_vector, expected_mask );
    #500
    $display("");
  end

endtask
task check_vector;

  input [1:0] expected_vector;
  input [1:0] mask_vector;

  reg [1:0] received_vector;
  reg [1:0] difference_vector;

  integer local_errors;

  begin
    local_errors = 0;
    received_vector = {Q15,Q16};
    difference_vector = ( received_vector ^ expected_vector ) & mask_vector ;
    $display( "r          %b", received_vector );
    $display( "           %s", error_point( difference_vector ) );
    if ( expected_vector[1] !== 1'bX )
      if ( expected_vector[1] !== Q15)
        begin
          $display( "error with Q15 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q15 = errors_Q15 + 1;
        end
    if ( expected_vector[0] !== 1'bX )
      if ( expected_vector[0] !== Q16)
        begin
          $display( "error with Q16 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q16 = errors_Q16 + 1;
        end
    if ( local_errors > 0 ) $display( "" );
    errors = errors + local_errors;
  end

endtask
function [15:0] error_point;

  input [1:0] in_vector;
  integer i, j;
  begin
    error_point[ 7 : 0 ] = ( in_vector[ 0 ] === 0 ) ? " " : "^";
    error_point[ 15 : 8 ] = ( in_vector[ 1 ] === 0 ) ? " " : "^";
  end

endfunction


endmodule

