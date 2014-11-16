`timescale 1ns/1ps

module alias_vector (a, a);
parameter size = 1;
inout [size-1:0] a;
endmodule

module alias_bit (a, a);
inout a;
endmodule


module glbl;

endmodule

module TEAMM_DECODER_SHIFTER ( B0, B1, B2, B3, B4, B5, B6, B7,
CLK, RESET, DATAIN);
output B0;
output B1;
output B2;
output B3;
output B4;
output B5;
output B6;
output B7;
input CLK;
input RESET;
input DATAIN;


//    SIGNALS


// GATE INSTANCES

wire DATAIN;
wire B7;
alias_bit alias_bit1 (B7, DATAIN);

DFC1_H U2( 
	.C( CLK ) , 
	.D( DATAIN ) , 
	.Q( B6 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( B6 ) , 
	.Q( B5 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U4( 
	.C( CLK ) , 
	.D( B5 ) , 
	.Q( B4 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U5( 
	.C( CLK ) , 
	.D( B4 ) , 
	.Q( B3 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U6( 
	.C( CLK ) , 
	.D( B3 ) , 
	.Q( B2 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U7( 
	.C( CLK ) , 
	.D( B2 ) , 
	.Q( B1 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U8( 
	.C( CLK ) , 
	.D( B1 ) , 
	.Q( B0 ) , 
	.RN( RESET ) 
 ) ;

endmodule


module TEAMM_DECODER_OUTPUT ( DREADY, D0, D1, D2, D3, \D0+ ,
\D1+ , \D2+ , \D3+ , CLOCK, NRESET);
input DREADY;
input D0;
input D1;
input D2;
input D3;
output \D0+ ;
output \D1+ ;
output \D2+ ;
output \D3+ ;
input CLOCK;
input NRESET;


//    SIGNALS

wire N00238;
wire N00918;
wire N01080;
wire N01242;

// GATE INSTANCES


DFC1_H U1( 
	.C( CLOCK ) , 
	.D( N00238 ) , 
	.Q( \D0+  ) , 
	.RN( NRESET ) 
 ) ;

MUX21_H U5( 
	.A( \D0+  ) , 
	.B( D0 ) , 
	.Q( N00238 ) , 
	.S( DREADY ) 
 ) ;

DFC1_H U6( 
	.C( CLOCK ) , 
	.D( N00918 ) , 
	.Q( \D1+  ) , 
	.RN( NRESET ) 
 ) ;

MUX21_H U7( 
	.A( \D1+  ) , 
	.B( D1 ) , 
	.Q( N00918 ) , 
	.S( DREADY ) 
 ) ;

DFC1_H U8( 
	.C( CLOCK ) , 
	.D( N01080 ) , 
	.Q( \D2+  ) , 
	.RN( NRESET ) 
 ) ;

MUX21_H U9( 
	.A( \D2+  ) , 
	.B( D2 ) , 
	.Q( N01080 ) , 
	.S( DREADY ) 
 ) ;

DFC1_H U10( 
	.C( CLOCK ) , 
	.D( N01242 ) , 
	.Q( \D3+  ) , 
	.RN( NRESET ) 
 ) ;

MUX21_H U11( 
	.A( \D3+  ) , 
	.B( D3 ) , 
	.Q( N01242 ) , 
	.S( DREADY ) 
 ) ;

endmodule


module TEAMM_DECODER_ALU ( B0, B1, B2, B3, B4, B5, B6, B7, A,
B, C, D, D0, D1, D2, D3);
input B0;
input B1;
input B2;
input B3;
input B4;
input B5;
input B6;
input B7;
output A;
output B;
output C;
output D;
output D0;
output D1;
output D2;
output D3;


//    SIGNALS

wire N00794;
wire N00796;
wire N01023;
wire N01571;
wire N03877;
wire N04043;
wire N05582;
wire N05621;

// GATE INSTANCES

wire B1;
wire D0;
alias_bit alias_bit1 (D0, B1);
wire B3;
wire D1;
alias_bit alias_bit2 (D1, B3);
wire B5;
wire D2;
alias_bit alias_bit3 (D2, B5);
wire B7;
wire D3;
alias_bit alias_bit4 (D3, B7);

XOR21_H U13( 
	.A( N00794 ) , 
	.B( B2 ) , 
	.Q( N01023 ) 
 ) ;

XOR21_H U14( 
	.A( N01023 ) , 
	.B( B3 ) , 
	.Q( B ) 
 ) ;

XOR21_H U15( 
	.A( C ) , 
	.B( N03877 ) , 
	.Q( D ) 
 ) ;

XOR21_H U1( 
	.A( B1 ) , 
	.B( B7 ) , 
	.Q( N00794 ) 
 ) ;

XOR21_H U2( 
	.A( N00794 ) , 
	.B( B0 ) , 
	.Q( N00796 ) 
 ) ;

XOR21_H U3( 
	.A( N00796 ) , 
	.B( B5 ) , 
	.Q( A ) 
 ) ;

XOR21_H U6( 
	.A( B1 ) , 
	.B( B3 ) , 
	.Q( N05582 ) 
 ) ;

XOR21_H U7( 
	.A( B4 ) , 
	.B( B5 ) , 
	.Q( N05621 ) 
 ) ;

XOR21_H U8( 
	.A( N05582 ) , 
	.B( N05621 ) , 
	.Q( C ) 
 ) ;

XOR21_H U9( 
	.A( B0 ) , 
	.B( B2 ) , 
	.Q( N01571 ) 
 ) ;

XOR21_H U11( 
	.A( B6 ) , 
	.B( B7 ) , 
	.Q( N04043 ) 
 ) ;

XOR21_H U12( 
	.A( N01571 ) , 
	.B( N04043 ) , 
	.Q( N03877 ) 
 ) ;

endmodule


module TEAMM_DECODER_CORRECTION ( B0, B1, B2, B3, B4, B5, B6,
B7, DERROR, DVALID, D0, D1, D2, D3);
input B0;
input B1;
input B2;
input B3;
input B4;
input B5;
input B6;
input B7;
output DERROR;
output DVALID;
output D0;
output D1;
output D2;
output D3;


//    SIGNALS

wire N03975;
wire N03984;
wire N04004;
wire N04022;
wire N05592;
wire N06446;
wire N06584;
wire N07087;
wire N07119;
wire N07560;
wire N07655;
wire N07697;
wire N07701;
wire N07705;
wire N07794;

// GATE INSTANCES


NAND41_H U15( 
	.A( N03975 ) , 
	.B( N03984 ) , 
	.C( N04004 ) , 
	.D( N04022 ) , 
	.Q( DERROR ) 
 ) ;

NAND21_H U16( 
	.A( N04022 ) , 
	.B( DERROR ) , 
	.Q( DVALID ) 
 ) ;

NOR41_H U21( 
	.A( N03975 ) , 
	.B( N03984 ) , 
	.C( N04004 ) , 
	.D( N04022 ) , 
	.Q( N06446 ) 
 ) ;

XOR21_H U22( 
	.A( N06446 ) , 
	.B( N05592 ) , 
	.Q( D0 ) 
 ) ;

INV1_H U23( 
	.A( N03975 ) , 
	.Q( N06584 ) 
 ) ;

NOR41_H U24( 
	.A( N06584 ) , 
	.B( N03984 ) , 
	.C( N04004 ) , 
	.D( N04022 ) , 
	.Q( N07087 ) 
 ) ;

XOR21_H U25( 
	.A( N07087 ) , 
	.B( N07119 ) , 
	.Q( D1 ) 
 ) ;

NOR41_H U26( 
	.A( N03975 ) , 
	.B( N07560 ) , 
	.C( N04004 ) , 
	.D( N04022 ) , 
	.Q( N07701 ) 
 ) ;

NOR41_H U27( 
	.A( N03975 ) , 
	.B( N03984 ) , 
	.C( N07655 ) , 
	.D( N04022 ) , 
	.Q( N07697 ) 
 ) ;

XOR21_H U28( 
	.A( N07701 ) , 
	.B( N07705 ) , 
	.Q( D2 ) 
 ) ;

XOR21_H U29( 
	.A( N07697 ) , 
	.B( N07794 ) , 
	.Q( D3 ) 
 ) ;

INV1_H U30( 
	.A( N03984 ) , 
	.Q( N07560 ) 
 ) ;

INV1_H U31( 
	.A( N04004 ) , 
	.Q( N07655 ) 
 ) ;

TEAMM_DECODER_ALU COMBINATIONALLOGIC0 ( 
	.B0( B0 ) , 
	.B1( B1 ) , 
	.B2( B2 ) , 
	.B3( B3 ) , 
	.B4( B4 ) , 
	.B5( B5 ) , 
	.B6( B6 ) , 
	.B7( B7 ) , 
	.A( N03975 ) , 
	.B( N03984 ) , 
	.C( N04004 ) , 
	.D( N04022 ) , 
	.D0( N05592 ) , 
	.D1( N07119 ) , 
	.D2( N07705 ) , 
	.D3( N07794 ) 
 ) ;

endmodule


module TEAMM_DECODER_COUNTER ( NRESET, CLOCK, S0, S1, S2, DREADY,
DSTROBE);
input NRESET;
input CLOCK;
output S0;
output S1;
output S2;
output DREADY;
input DSTROBE;


//    SIGNALS

wire N00167;
wire N00420;
wire N00516;
wire N00604;
wire N01804;
wire N04485;
wire N046191;
wire N05643;
wire N06300;

// GATE INSTANCES


INV1_H U15( 
	.A( N04485 ) , 
	.Q( N05643 ) 
 ) ;

NOR41_H U16( 
	.A( S0 ) , 
	.B( S1 ) , 
	.C( DSTROBE ) , 
	.D( S2 ) , 
	.Q( N04485 ) 
 ) ;

DFC1_H U17( 
	.C( CLOCK ) , 
	.D( N05643 ) , 
	.Q( N06300 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U1( 
	.C( CLOCK ) , 
	.D( N00604 ) , 
	.Q( S0 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( CLOCK ) , 
	.D( N00167 ) , 
	.Q( S1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U3( 
	.C( CLOCK ) , 
	.D( N00516 ) , 
	.Q( S2 ) , 
	.RN( NRESET ) 
 ) ;

XOR21_H U4( 
	.A( S0 ) , 
	.B( N06300 ) , 
	.Q( N00604 ) 
 ) ;

XOR21_H U5( 
	.A( S1 ) , 
	.B( S0 ) , 
	.Q( N00167 ) 
 ) ;

XOR21_H U6( 
	.A( S2 ) , 
	.B( N046191 ) , 
	.Q( N00516 ) 
 ) ;

NAND21_H U7( 
	.A( S1 ) , 
	.B( S0 ) , 
	.Q( N00420 ) 
 ) ;

INV1_H U8( 
	.A( N00420 ) , 
	.Q( N046191 ) 
 ) ;

NAND31_H U9( 
	.A( S2 ) , 
	.B( S1 ) , 
	.C( S0 ) , 
	.Q( N01804 ) 
 ) ;

INV1_H U10( 
	.A( N01804 ) , 
	.Q( DREADY ) 
 ) ;

endmodule


module TEAMM_DEOCDER ( NRESET, DDATA, DSTROBE, CLOCK, DD0, DD1,
DD2, DD3, DREADY, DERROR, DVALID);
input NRESET;
input DDATA;
input DSTROBE;
input CLOCK;
output DD0;
output DD1;
output DD2;
output DD3;
output DREADY;
output DERROR;
output DVALID;


//    SIGNALS

wire N13186;
wire N13192;
wire N13198;
wire N13204;
wire N13210;
wire N13216;
wire N13222;
wire N13228;
wire N13234;
wire N13240;
wire N13246;
wire N13252;
wire N133342;
wire N13384;
wire N13408;
wire N13414;
wire N13420;
wire N13426;

// GATE INSTANCES


NAND21_H U1( 
	.A( DREADY ) , 
	.B( N13384 ) , 
	.Q( N133342 ) 
 ) ;

INV1_H U2( 
	.A( N133342 ) , 
	.Q( DERROR ) 
 ) ;

MUX21_H U3( 
	.A( DVALID ) , 
	.B( N13426 ) , 
	.Q( DVALID ) , 
	.S( DREADY ) 
 ) ;

TEAMM_DECODER_CORRECTION CORRECTIONBLOCK ( 
	.B0( N13186 ) , 
	.B1( N13192 ) , 
	.B2( N13198 ) , 
	.B3( N13204 ) , 
	.B4( N13210 ) , 
	.B5( N13216 ) , 
	.B6( N13222 ) , 
	.B7( N13228 ) , 
	.DERROR( N13384 ) , 
	.DVALID( N13426 ) , 
	.D0( N13234 ) , 
	.D1( N13240 ) , 
	.D2( N13246 ) , 
	.D3( N13252 ) 
 ) ;

TEAMM_DECODER_OUTPUT DATAOUTPUT ( 
	.DREADY( DREADY ) , 
	.D0( N13234 ) , 
	.D1( N13240 ) , 
	.D2( N13246 ) , 
	.D3( N13252 ) , 
	.\D0+ ( DD0 ) , 
	.\D1+ ( DD1 ) , 
	.\D2+ ( DD2 ) , 
	.\D3+ ( DD3 ) , 
	.CLOCK( CLOCK ) , 
	.NRESET( NRESET ) 
 ) ;

TEAMM_DECODER_COUNTER STATEMACHINE ( 
	.NRESET( NRESET ) , 
	.CLOCK( CLOCK ) , 
	.S0( N13408 ) , 
	.S1( N13414 ) , 
	.S2( N13420 ) , 
	.DREADY( DREADY ) , 
	.DSTROBE( DSTROBE ) 
 ) ;

TEAMM_DECODER_SHIFTER \SHIFT#20REGISTER  ( 
	.B0( N13186 ) , 
	.B1( N13192 ) , 
	.B2( N13198 ) , 
	.B3( N13204 ) , 
	.B4( N13210 ) , 
	.B5( N13216 ) , 
	.B6( N13222 ) , 
	.B7( N13228 ) , 
	.CLK( CLOCK ) , 
	.RESET( NRESET ) , 
	.DATAIN( DDATA ) 
 ) ;

endmodule


module TEAMM_ENCODER_ALU ( D0, D1, D2, D3, B1, B0, B2, B3, B4,
B5, B6, B7);
input D0;
input D1;
input D2;
input D3;
output B1;
output B0;
output B2;
output B3;
output B4;
output B5;
output B6;
output B7;


//    SIGNALS

wire N00658;
wire N00953;
wire N00962;
wire N00972;

// GATE INSTANCES

wire D0;
wire B1;
alias_bit alias_bit1 (B1, D0);
wire D1;
wire B3;
alias_bit alias_bit2 (B3, D1);
wire D2;
wire B5;
alias_bit alias_bit3 (B5, D2);
wire D3;
wire B7;
alias_bit alias_bit4 (B7, D3);

XOR21_H U2( 
	.A( N00658 ) , 
	.B( B7 ) , 
	.Q( B0 ) 
 ) ;

XNR21_H U3( 
	.A( B1 ) , 
	.B( B5 ) , 
	.Q( N00658 ) 
 ) ;

XNR21_H U4( 
	.A( B1 ) , 
	.B( B3 ) , 
	.Q( N00953 ) 
 ) ;

XOR21_H U5( 
	.A( N00953 ) , 
	.B( B7 ) , 
	.Q( B2 ) 
 ) ;

XNR21_H U6( 
	.A( B1 ) , 
	.B( B3 ) , 
	.Q( N00962 ) 
 ) ;

XOR21_H U7( 
	.A( N00962 ) , 
	.B( B5 ) , 
	.Q( B4 ) 
 ) ;

XOR21_H U8( 
	.A( N00972 ) , 
	.B( B7 ) , 
	.Q( B6 ) 
 ) ;

XOR21_H U9( 
	.A( B3 ) , 
	.B( B5 ) , 
	.Q( N00972 ) 
 ) ;

endmodule


module TEAMM_ENCODER_COUNTER ( RESET, S0, S1, CLK, ENABLE, ESTROBE,
S2);
input RESET;
output S0;
output S1;
input CLK;
input ENABLE;
output ESTROBE;
output S2;


//    SIGNALS

wire N15311;
wire N15317;
wire N15323;
wire N15329;
wire N15339;
wire N15359;
wire N15363;
wire N15369;
wire N15565;
wire N15691;
wire N15695;
wire N15699;
wire N15703;
wire N15751;
wire N15861;
wire N15879;
wire N15897;
wire N15933;
wire N15943;
wire N15959;

// GATE INSTANCES


NOR41_H U13( 
	.A( N15565 ) , 
	.B( S0 ) , 
	.C( S1 ) , 
	.D( S2 ) , 
	.Q( ESTROBE ) 
 ) ;

DFC1_H U14( 
	.C( CLK ) , 
	.D( N15751 ) , 
	.Q( N15339 ) , 
	.RN( RESET ) 
 ) ;

NAND31_H U15( 
	.A( S0 ) , 
	.B( S1 ) , 
	.C( S2 ) , 
	.Q( N15943 ) 
 ) ;

NAND31_H U16( 
	.A( N15897 ) , 
	.B( N15879 ) , 
	.C( N15861 ) , 
	.Q( N15933 ) 
 ) ;

NAND21_H U17( 
	.A( N15943 ) , 
	.B( N15933 ) , 
	.Q( N15959 ) 
 ) ;

NAND21_H U18( 
	.A( ENABLE ) , 
	.B( N15959 ) , 
	.Q( N15751 ) 
 ) ;

DFC1_H U1( 
	.C( CLK ) , 
	.D( N15359 ) , 
	.Q( S0 ) , 
	.QN( N15861 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U2( 
	.C( CLK ) , 
	.D( N15363 ) , 
	.Q( S1 ) , 
	.QN( N15879 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( N15369 ) , 
	.Q( S2 ) , 
	.QN( N15897 ) , 
	.RN( RESET ) 
 ) ;

XOR21_H U4( 
	.A( S0 ) , 
	.B( N15339 ) , 
	.Q( N15359 ) 
 ) ;

XOR21_H U5( 
	.A( S1 ) , 
	.B( N15329 ) , 
	.Q( N15363 ) 
 ) ;

XOR21_H U6( 
	.A( S2 ) , 
	.B( N15311 ) , 
	.Q( N15369 ) 
 ) ;

NAND21_H U7( 
	.A( S0 ) , 
	.B( N15339 ) , 
	.Q( N15323 ) 
 ) ;

NAND21_H U8( 
	.A( S1 ) , 
	.B( N15329 ) , 
	.Q( N15317 ) 
 ) ;

INV1_H U10( 
	.A( N15323 ) , 
	.Q( N15329 ) 
 ) ;

INV1_H U11( 
	.A( N15317 ) , 
	.Q( N15311 ) 
 ) ;

INV1_H U12( 
	.A( N15339 ) , 
	.Q( N15565 ) 
 ) ;

endmodule


module TEAMM_ENCODER_MULTIPLEXER ( D0, D1, D2, D3, D4, D5, D6,
D7, S2, S1, S0, D_OUT);
input D0;
input D1;
input D2;
input D3;
input D4;
input D5;
input D6;
input D7;
input S2;
input S1;
input S0;
output D_OUT;


//    SIGNALS

wire N00321;
wire N00333;
wire N00345;
wire N00357;
wire N00448;
wire N00472;

// GATE INSTANCES


MUX21_H U1( 
	.A( D0 ) , 
	.B( D1 ) , 
	.Q( N00321 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U2( 
	.A( D2 ) , 
	.B( D3 ) , 
	.Q( N00472 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U3( 
	.A( D4 ) , 
	.B( D5 ) , 
	.Q( N00448 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U4( 
	.A( D6 ) , 
	.B( D7 ) , 
	.Q( N00333 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U5( 
	.A( N00321 ) , 
	.B( N00472 ) , 
	.Q( N00345 ) , 
	.S( S1 ) 
 ) ;

MUX21_H U6( 
	.A( N00448 ) , 
	.B( N00333 ) , 
	.Q( N00357 ) , 
	.S( S1 ) 
 ) ;

MUX21_H U7( 
	.A( N00345 ) , 
	.B( N00357 ) , 
	.Q( D_OUT ) , 
	.S( S2 ) 
 ) ;

endmodule


module TEAMM_ENCODER ( ED0, ED1, ED2, ED3, ESTART, CLOCK, NRESET,
EDATA, ESTROBE);
input ED0;
input ED1;
input ED2;
input ED3;
input ESTART;
input CLOCK;
input NRESET;
output EDATA;
output ESTROBE;


//    SIGNALS

wire N04533;
wire N04539;
wire N04543;
wire N04549;
wire N04553;
wire N04559;
wire N04563;
wire N04569;
wire N04699;
wire N04705;
wire N04711;

// GATE INSTANCES


TEAMM_ENCODER_COUNTER COUNTER ( 
	.RESET( NRESET ) , 
	.S0( N04699 ) , 
	.S1( N04705 ) , 
	.CLK( CLOCK ) , 
	.ENABLE( ESTART ) , 
	.ESTROBE( ESTROBE ) , 
	.S2( N04711 ) 
 ) ;

TEAMM_ENCODER_ALU ALU ( 
	.D0( ED0 ) , 
	.D1( ED1 ) , 
	.D2( ED2 ) , 
	.D3( ED3 ) , 
	.B1( N04533 ) , 
	.B0( N04539 ) , 
	.B2( N04543 ) , 
	.B3( N04549 ) , 
	.B4( N04553 ) , 
	.B5( N04559 ) , 
	.B6( N04563 ) , 
	.B7( N04569 ) 
 ) ;

TEAMM_ENCODER_MULTIPLEXER MULTIPEXER ( 
	.D0( N04533 ) , 
	.D1( N04539 ) , 
	.D2( N04543 ) , 
	.D3( N04549 ) , 
	.D4( N04553 ) , 
	.D5( N04559 ) , 
	.D6( N04563 ) , 
	.D7( N04569 ) , 
	.S2( N04711 ) , 
	.S1( N04705 ) , 
	.S0( N04699 ) , 
	.D_OUT( EDATA ) 
 ) ;

endmodule


module TEAMM_INVERTOR ( A, Q);
input A;
output Q;


//    SIGNALS


// GATE INSTANCES


INV1_H U1( 
	.A( A ) , 
	.Q( Q ) 
 ) ;

endmodule


module TEAMM_RINGOSCILLATOR ( NRESET, ENABLE, OSCOUT);
input NRESET;
input ENABLE;
output OSCOUT;


//    SIGNALS

wire N204591;
wire N204811;
wire N205031;
wire N205251;
wire N20779;
wire N20875;
wire N20881;
wire N20887;
wire N20893;
wire N20897;
wire N20905;
wire N20913;
wire N20951;
wire N20991;
wire N21005;
wire N21215;

// GATE INSTANCES


DFC1_H U13( 
	.C( N20991 ) , 
	.D( N21005 ) , 
	.QN( N21005 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U14( 
	.C( N21005 ) , 
	.D( N20897 ) , 
	.QN( N20897 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U15( 
	.C( N20897 ) , 
	.D( N20905 ) , 
	.QN( N20905 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U16( 
	.C( N20905 ) , 
	.D( N20913 ) , 
	.QN( N20913 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U17( 
	.C( N20913 ) , 
	.D( OSCOUT ) , 
	.QN( OSCOUT ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U18( 
	.A( N20951 ) , 
	.B( N20951 ) , 
	.Q( N20893 ) 
 ) ;

NAND21_H U1( 
	.A( ENABLE ) , 
	.B( N20779 ) , 
	.Q( N21215 ) 
 ) ;

BUF4_H U2( 
	.A( N20893 ) , 
	.Q( N20875 ) 
 ) ;

BUF4_H U3( 
	.A( N20875 ) , 
	.Q( N20881 ) 
 ) ;

BUF4_H U4( 
	.A( N20881 ) , 
	.Q( N20887 ) 
 ) ;

BUF4_H U5( 
	.A( N20887 ) , 
	.Q( N20779 ) 
 ) ;

INV1_H U6( 
	.A( N21215 ) , 
	.Q( N204591 ) 
 ) ;

INV1_H U7( 
	.A( N204591 ) , 
	.Q( N204811 ) 
 ) ;

INV1_H U8( 
	.A( N204811 ) , 
	.Q( N205031 ) 
 ) ;

INV1_H U9( 
	.A( N205031 ) , 
	.Q( N205251 ) 
 ) ;

INV1_H U10( 
	.A( N205251 ) , 
	.Q( N20951 ) 
 ) ;

DFC1_H U12( 
	.C( N20779 ) , 
	.D( N20991 ) , 
	.QN( N20991 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMM_HALFADDER ( A, B, SUM, CARRY);
input A;
input B;
output SUM;
output CARRY;


//    SIGNALS

wire N00115;

// GATE INSTANCES


INV1_H U1( 
	.A( N00115 ) , 
	.Q( CARRY ) 
 ) ;

XOR21_H U2( 
	.A( A ) , 
	.B( B ) , 
	.Q( SUM ) 
 ) ;

NAND21_H U3( 
	.A( A ) , 
	.B( B ) , 
	.Q( N00115 ) 
 ) ;

endmodule


module TEAMM_FULLADDER ( A, B, CIN, SUM, CARRY);
input A;
input B;
input CIN;
output SUM;
output CARRY;


//    SIGNALS

wire N00091;
wire N00239;
wire N00261;
wire N002730;

// GATE INSTANCES


XOR21_H U1( 
	.A( N00239 ) , 
	.B( N00261 ) , 
	.Q( N002730 ) 
 ) ;

INV1_H U2( 
	.A( N002730 ) , 
	.Q( CARRY ) 
 ) ;

TEAMM_HALFADDER HALFADDER0 ( 
	.A( A ) , 
	.B( B ) , 
	.SUM( N00091 ) , 
	.CARRY( N00261 ) 
 ) ;

TEAMM_HALFADDER HALFADDER1 ( 
	.A( CIN ) , 
	.B( N00091 ) , 
	.SUM( SUM ) , 
	.CARRY( N00239 ) 
 ) ;

endmodule


module TEAMM_4BITADDER ( CARRYIN, X0, X1, X2, X3, Y0, Y1, Y2,
Y3, CARRYOUT, XY0, XY1, XY2, XY3);
input CARRYIN;
input X0;
input X1;
input X2;
input X3;
input Y0;
input Y1;
input Y2;
input Y3;
output CARRYOUT;
output XY0;
output XY1;
output XY2;
output XY3;


//    SIGNALS

wire N00311;
wire N00315;
wire N00319;

// GATE INSTANCES


TEAMM_FULLADDER FULLADDER0 ( 
	.A( X0 ) , 
	.B( Y0 ) , 
	.CIN( CARRYIN ) , 
	.SUM( XY0 ) , 
	.CARRY( N00311 ) 
 ) ;

TEAMM_FULLADDER FULLADDER1 ( 
	.A( X1 ) , 
	.B( Y1 ) , 
	.CIN( N00311 ) , 
	.SUM( XY1 ) , 
	.CARRY( N00315 ) 
 ) ;

TEAMM_FULLADDER FULLADDER2 ( 
	.A( X2 ) , 
	.B( Y2 ) , 
	.CIN( N00315 ) , 
	.SUM( XY2 ) , 
	.CARRY( N00319 ) 
 ) ;

TEAMM_FULLADDER FULLADDER3 ( 
	.A( X3 ) , 
	.B( Y3 ) , 
	.CIN( N00319 ) , 
	.SUM( XY3 ) , 
	.CARRY( CARRYOUT ) 
 ) ;

endmodule


module TEAMM_SEQUENCER_D0 ( D0, Q2, \~I , \~Q0 , \~Q2 , I, Q1,
Q0);
output D0;
input Q2;
input \~I ;
input \~Q0 ;
input \~Q2 ;
input I;
input Q1;
input Q0;


//    SIGNALS

wire N04490;
wire N04504;
wire N04514;
wire N04580;

// GATE INSTANCES


NAND31_H U1( 
	.A( Q2 ) , 
	.B( Q1 ) , 
	.C( I ) , 
	.Q( N04490 ) 
 ) ;

NAND31_H U2( 
	.A( Q2 ) , 
	.B( \~Q0  ) , 
	.C( \~I  ) , 
	.Q( N04504 ) 
 ) ;

NAND41_H U5( 
	.A( N04490 ) , 
	.B( N04504 ) , 
	.C( N04514 ) , 
	.D( N04580 ) , 
	.Q( D0 ) 
 ) ;

NAND31_H U6( 
	.A( \~Q2  ) , 
	.B( \~Q0  ) , 
	.C( I ) , 
	.Q( N04514 ) 
 ) ;

NAND31_H U7( 
	.A( Q2 ) , 
	.B( Q0 ) , 
	.C( I ) , 
	.Q( N04580 ) 
 ) ;

endmodule


module TEAMM_SEQUENCER_Z ( \~Q2 , \~Q1 , \~Q0 , \~I , Z);
input \~Q2 ;
input \~Q1 ;
input \~Q0 ;
input \~I ;
output Z;


//    SIGNALS


// GATE INSTANCES


NOR41_H U1( 
	.A( \~Q2  ) , 
	.B( \~Q1  ) , 
	.C( \~Q0  ) , 
	.D( \~I  ) , 
	.Q( Z ) 
 ) ;

endmodule


module TEAMM_SEQUENCER_D2 ( Q2, \~Q1 , \~Q0 , \~I , D2, \~Q2 ,
Q1, I, Q0);
input Q2;
input \~Q1 ;
input \~Q0 ;
input \~I ;
output D2;
input \~Q2 ;
input Q1;
input I;
input Q0;


//    SIGNALS

wire N03630;
wire N03634;
wire N03654;
wire N03664;

// GATE INSTANCES


NAND41_H U1( 
	.A( I ) , 
	.B( \~Q2  ) , 
	.C( Q1 ) , 
	.D( Q0 ) , 
	.Q( N03630 ) 
 ) ;

NAND41_H U5( 
	.A( N03630 ) , 
	.B( N03634 ) , 
	.C( N03654 ) , 
	.D( N03664 ) , 
	.Q( D2 ) 
 ) ;

NAND31_H U6( 
	.A( Q2 ) , 
	.B( \~Q1  ) , 
	.C( \~Q0  ) , 
	.Q( N03664 ) 
 ) ;

NAND31_H U7( 
	.A( \~I  ) , 
	.B( Q2 ) , 
	.C( \~Q0  ) , 
	.Q( N03654 ) 
 ) ;

NAND31_H U8( 
	.A( \~I  ) , 
	.B( Q2 ) , 
	.C( \~Q1  ) , 
	.Q( N03634 ) 
 ) ;

endmodule


module TEAMM_SEQUENCER_D1 ( D1, Q2, Q1, I, Q0);
output D1;
input Q2;
input Q1;
input I;
input Q0;


//    SIGNALS

wire N07280;
wire N07308;

// GATE INSTANCES


NOR21_H U1( 
	.A( N07308 ) , 
	.B( N07280 ) , 
	.Q( D1 ) 
 ) ;

XNR21_H U2( 
	.A( I ) , 
	.B( Q2 ) , 
	.Q( N07308 ) 
 ) ;

XNR21_H U3( 
	.A( Q1 ) , 
	.B( Q0 ) , 
	.Q( N07280 ) 
 ) ;

endmodule


module TEAMM_SEQUENCER ( DATAIN, CLOCK, NRESET, MATCHALL);
input DATAIN;
input CLOCK;
input NRESET;
output MATCHALL;


//    SIGNALS

wire N13756;
wire N13774;
wire N13816;
wire N13820;
wire N13824;
wire N13832;
wire N13840;
wire N13848;
wire N13858;
wire N14210;
wire N14228;

// GATE INSTANCES


INV1_H U2( 
	.A( DATAIN ) , 
	.Q( N13816 ) 
 ) ;

DFC1_H R_D0( 
	.C( CLOCK ) , 
	.D( N14210 ) , 
	.Q( N13848 ) , 
	.QN( N13858 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H R_D1( 
	.C( CLOCK ) , 
	.D( N13774 ) , 
	.Q( N13832 ) , 
	.QN( N13840 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H R_D2( 
	.C( CLOCK ) , 
	.D( N13756 ) , 
	.Q( N13820 ) , 
	.QN( N13824 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H Z_OUT( 
	.C( CLOCK ) , 
	.D( N14228 ) , 
	.Q( MATCHALL ) , 
	.RN( NRESET ) 
 ) ;

TEAMM_SEQUENCER_D1 D1 ( 
	.D1( N13774 ) , 
	.Q2( N13820 ) , 
	.Q1( N13832 ) , 
	.I( DATAIN ) , 
	.Q0( N13848 ) 
 ) ;

TEAMM_SEQUENCER_D2 D2 ( 
	.Q2( N13820 ) , 
	.\~Q1 ( N13840 ) , 
	.\~Q0 ( N13858 ) , 
	.\~I ( N13816 ) , 
	.D2( N13756 ) , 
	.\~Q2 ( N13824 ) , 
	.Q1( N13832 ) , 
	.I( DATAIN ) , 
	.Q0( N13848 ) 
 ) ;

TEAMM_SEQUENCER_Z Z ( 
	.\~Q2 ( N13816 ) , 
	.\~Q1 ( N13824 ) , 
	.\~Q0 ( N13840 ) , 
	.\~I ( N13858 ) , 
	.Z( N14228 ) 
 ) ;

TEAMM_SEQUENCER_D0 D0 ( 
	.D0( N14210 ) , 
	.Q2( N13820 ) , 
	.\~I ( N13816 ) , 
	.\~Q0 ( N13858 ) , 
	.\~Q2 ( N13824 ) , 
	.I( DATAIN ) , 
	.Q1( N13832 ) , 
	.Q0( N13848 ) 
 ) ;

endmodule


module TEAMM_DESIGN ( A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10,
A11, A12, Q0, Q1, Q3, Q4, Q5, Q6, Q7, Q12, Q15, Q16, Q17, Q18, Q19,
Q20, Q21, Q22, Q23);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input A6;
input A7;
input A8;
input A9;
input A10;
input A11;
input A12;
output Q0;
output Q1;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
output Q12;
output Q15;
output Q16;
output Q17;
output Q18;
output Q19;
output Q20;
output Q21;
output Q22;
output Q23;


//    SIGNALS


// GATE INSTANCES


TEAMM_DEOCDER DECODER ( 
	.NRESET( A1 ) , 
	.DDATA( A9 ) , 
	.DSTROBE( A8 ) , 
	.CLOCK( A12 ) , 
	.DD0( Q18 ) , 
	.DD1( Q19 ) , 
	.DD2( Q20 ) , 
	.DD3( Q21 ) , 
	.DREADY( Q17 ) , 
	.DERROR( Q23 ) , 
	.DVALID( Q22 ) 
 ) ;

TEAMM_4BITADDER \4-BIT#20ADDER  ( 
	.CARRYIN( A3 ) , 
	.X0( A4 ) , 
	.X1( A5 ) , 
	.X2( A6 ) , 
	.X3( A7 ) , 
	.Y0( A8 ) , 
	.Y1( A9 ) , 
	.Y2( A10 ) , 
	.Y3( A11 ) , 
	.CARRYOUT( Q7 ) , 
	.XY0( Q3 ) , 
	.XY1( Q4 ) , 
	.XY2( Q5 ) , 
	.XY3( Q6 ) 
 ) ;

TEAMM_RINGOSCILLATOR \RING#20OSCILLATOR  ( 
	.NRESET( A1 ) , 
	.ENABLE( A2 ) , 
	.OSCOUT( Q1 ) 
 ) ;

TEAMM_ENCODER ENCODER ( 
	.ED0( A4 ) , 
	.ED1( A5 ) , 
	.ED2( A6 ) , 
	.ED3( A7 ) , 
	.ESTART( A3 ) , 
	.CLOCK( A12 ) , 
	.NRESET( A1 ) , 
	.EDATA( Q16 ) , 
	.ESTROBE( Q15 ) 
 ) ;

TEAMM_SEQUENCER \8-BIT#20SEQUENCER  ( 
	.DATAIN( A3 ) , 
	.CLOCK( A12 ) , 
	.NRESET( A1 ) , 
	.MATCHALL( Q12 ) 
 ) ;

TEAMM_INVERTOR INVERTOR ( 
	.A( A0 ) , 
	.Q( Q0 ) 
 ) ;

endmodule

