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

module TEAMN_ARITHMETIC_LOGIC_UNIT ( B0, B1, B2, B3, B4, B5,
B6, B7, A, B, C, D);
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


//    SIGNALS

wire N01695;
wire N01707;
wire N01719;
wire N01946;
wire N02029;
wire N02036;
wire N02087;

// GATE INSTANCES


XOR21_H \31 ( 
	.A( B3 ) , 
	.B( B1 ) , 
	.Q( N02036 ) 
 ) ;

XOR21_H U1( 
	.A( N02087 ) , 
	.B( N01695 ) , 
	.Q( A ) 
 ) ;

XOR21_H U2( 
	.A( N01707 ) , 
	.B( N01719 ) , 
	.Q( N01946 ) 
 ) ;

XOR21_H U3( 
	.A( A ) , 
	.B( N01946 ) , 
	.Q( D ) 
 ) ;

XOR21_H U4( 
	.A( N02029 ) , 
	.B( N02036 ) , 
	.Q( C ) 
 ) ;

XOR21_H U5( 
	.A( N01695 ) , 
	.B( N01707 ) , 
	.Q( B ) 
 ) ;

XOR21_H \71 ( 
	.A( B1 ) , 
	.B( B7 ) , 
	.Q( N01695 ) 
 ) ;

XOR21_H \46 ( 
	.A( B4 ) , 
	.B( B6 ) , 
	.Q( N01719 ) 
 ) ;

XOR21_H \50 ( 
	.A( B0 ) , 
	.B( B5 ) , 
	.Q( N02087 ) 
 ) ;

XOR21_H \54 ( 
	.A( B5 ) , 
	.B( B4 ) , 
	.Q( N02029 ) 
 ) ;

XOR21_H \23 ( 
	.A( B2 ) , 
	.B( B3 ) , 
	.Q( N01707 ) 
 ) ;

endmodule


module TEAMN_COUNTERDEC ( CLOCK, NRESET, DSTROBE, DREADY);
input CLOCK;
input NRESET;
input DSTROBE;
output DREADY;


//    SIGNALS

wire N06330;
wire N06340;
wire N06414;
wire N06428;
wire N06676;
wire N06690;
wire N06760;
wire N07584;
wire N07599;
wire N077862;
wire Q0;

// GATE INSTANCES


XOR21_H U3( 
	.A( N06330 ) , 
	.B( Q0 ) , 
	.Q( N06340 ) 
 ) ;

XOR21_H U4( 
	.A( N06414 ) , 
	.B( N077862 ) , 
	.Q( N06676 ) 
 ) ;

NAND21_H U5( 
	.A( N06330 ) , 
	.B( Q0 ) , 
	.Q( N077862 ) 
 ) ;

NOR31_H U6( 
	.A( N06428 ) , 
	.B( N06330 ) , 
	.C( DSTROBE ) , 
	.Q( N06760 ) 
 ) ;

NOR21_H U7( 
	.A( N06760 ) , 
	.B( Q0 ) , 
	.Q( N06690 ) 
 ) ;

NOR31_H U8( 
	.A( N06414 ) , 
	.B( N07584 ) , 
	.C( N07599 ) , 
	.Q( DREADY ) 
 ) ;

DFC1_H FFQ0( 
	.C( CLOCK ) , 
	.D( N06690 ) , 
	.Q( Q0 ) , 
	.QN( N07599 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FFQ1( 
	.C( CLOCK ) , 
	.D( N06340 ) , 
	.Q( N06330 ) , 
	.QN( N07584 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FFQ2( 
	.C( CLOCK ) , 
	.D( N06676 ) , 
	.Q( N06428 ) , 
	.QN( N06414 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module DECODER ( D0, D1, D2, D3, B1, B3, B5, B7, A, B, C, D,
DREADY, NRESET);
output D0;
output D1;
output D2;
output D3;
input B1;
input B3;
input B5;
input B7;
input A;
input B;
input C;
input D;
input DREADY;
input NRESET;


//    SIGNALS

wire N01617;
wire N02042;
wire N07127;
wire N07131;
wire N07135;
wire N07168;
wire N07185;
wire N07202;
wire N09217;
wire N09221;
wire N09230;

// GATE INSTANCES


INV1_H U14( 
	.A( A ) , 
	.Q( N07202 ) 
 ) ;

INV1_H U15( 
	.A( B ) , 
	.Q( N07185 ) 
 ) ;

INV1_H U16( 
	.A( C ) , 
	.Q( N07168 ) 
 ) ;

NOR41_H U17( 
	.A( D ) , 
	.B( C ) , 
	.C( B ) , 
	.D( N07202 ) , 
	.Q( N07135 ) 
 ) ;

NOR41_H U18( 
	.A( A ) , 
	.B( C ) , 
	.C( D ) , 
	.D( N07185 ) , 
	.Q( N07131 ) 
 ) ;

NOR41_H U19( 
	.A( A ) , 
	.B( B ) , 
	.C( D ) , 
	.D( N07168 ) , 
	.Q( N07127 ) 
 ) ;

XOR21_H U4( 
	.A( N07135 ) , 
	.B( B3 ) , 
	.Q( N09221 ) 
 ) ;

DFC1_H U20( 
	.C( DREADY ) , 
	.D( N09217 ) , 
	.Q( D0 ) , 
	.RN( NRESET ) 
 ) ;

XOR21_H U5( 
	.A( N07131 ) , 
	.B( B5 ) , 
	.Q( N02042 ) 
 ) ;

DFC1_H U21( 
	.C( DREADY ) , 
	.D( N09221 ) , 
	.Q( D1 ) , 
	.RN( NRESET ) 
 ) ;

XOR21_H U6( 
	.A( N07127 ) , 
	.B( B7 ) , 
	.Q( N09230 ) 
 ) ;

DFC1_H U22( 
	.C( DREADY ) , 
	.D( N02042 ) , 
	.Q( D2 ) , 
	.RN( NRESET ) 
 ) ;

XOR21_H U8( 
	.A( N01617 ) , 
	.B( B1 ) , 
	.Q( N09217 ) 
 ) ;

DFC1_H U23( 
	.C( DREADY ) , 
	.D( N09230 ) , 
	.Q( D3 ) , 
	.RN( NRESET ) 
 ) ;

NOR41_H U9( 
	.A( A ) , 
	.B( B ) , 
	.C( C ) , 
	.D( D ) , 
	.Q( N01617 ) 
 ) ;

endmodule


module TEAMN_SHIFT_REGRISTER ( DDATA, B7, B6, B5, B4, B3, B2,
B1, B0, CLOCK, NRESET);
input DDATA;
output B7;
output B6;
output B5;
output B4;
output B3;
output B2;
output B1;
output B0;
input CLOCK;
input NRESET;


//    SIGNALS


// GATE INSTANCES

wire DDATA;
wire B7;
alias_bit alias_bit1 (B7, DDATA);

DFC1_H FF0( 
	.C( CLOCK ) , 
	.D( B1 ) , 
	.Q( B0 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FF1( 
	.C( CLOCK ) , 
	.D( B2 ) , 
	.Q( B1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FF2( 
	.C( CLOCK ) , 
	.D( B3 ) , 
	.Q( B2 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FF3( 
	.C( CLOCK ) , 
	.D( B4 ) , 
	.Q( B3 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FF4( 
	.C( CLOCK ) , 
	.D( B5 ) , 
	.Q( B4 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FF5( 
	.C( CLOCK ) , 
	.D( B6 ) , 
	.Q( B5 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H FF6( 
	.C( CLOCK ) , 
	.D( B7 ) , 
	.Q( B6 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMN_DECODER ( DATA, CLOCK, RESET, STROBE, DREADY, D0,
D1, D2, D3, DVALID, DERROR);
input DATA;
input CLOCK;
input RESET;
input STROBE;
output DREADY;
output D0;
output D1;
output D2;
output D3;
output DVALID;
output DERROR;


//    SIGNALS

wire N00536;
wire N00548;
wire N00560;
wire N00572;
wire N00584;
wire N00596;
wire N00608;
wire N00620;
wire N00894;
wire N00906;
wire N00918;
wire N00933;
wire N06999;
wire N07759;
wire N08741;
wire N102920;

// GATE INSTANCES


NAND41_H U1( 
	.A( N00894 ) , 
	.B( N00906 ) , 
	.C( N00918 ) , 
	.D( N00933 ) , 
	.Q( N06999 ) 
 ) ;

NAND21_H U2( 
	.A( N06999 ) , 
	.B( N00933 ) , 
	.Q( N07759 ) 
 ) ;

NAND21_H U4( 
	.A( DREADY ) , 
	.B( N06999 ) , 
	.Q( N102920 ) 
 ) ;

INV1_H U5( 
	.A( N102920 ) , 
	.Q( DERROR ) 
 ) ;

DFC1_H U9( 
	.C( CLOCK ) , 
	.D( STROBE ) , 
	.Q( N08741 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U10( 
	.C( DREADY ) , 
	.D( N07759 ) , 
	.Q( DVALID ) , 
	.RN( RESET ) 
 ) ;

TEAMN_SHIFT_REGRISTER RECEIVER ( 
	.DDATA( DATA ) , 
	.B7( N00536 ) , 
	.B6( N00548 ) , 
	.B5( N00560 ) , 
	.B4( N00572 ) , 
	.B3( N00584 ) , 
	.B2( N00596 ) , 
	.B1( N00608 ) , 
	.B0( N00620 ) , 
	.CLOCK( CLOCK ) , 
	.NRESET( RESET ) 
 ) ;

TEAMN_COUNTERDEC COUNTER ( 
	.CLOCK( CLOCK ) , 
	.NRESET( RESET ) , 
	.DSTROBE( N08741 ) , 
	.DREADY( DREADY ) 
 ) ;

TEAMN_ARITHMETIC_LOGIC_UNIT ALU ( 
	.B0( N00620 ) , 
	.B1( N00608 ) , 
	.B2( N00596 ) , 
	.B3( N00584 ) , 
	.B4( N00572 ) , 
	.B5( N00560 ) , 
	.B6( N00548 ) , 
	.B7( N00536 ) , 
	.A( N00894 ) , 
	.B( N00906 ) , 
	.C( N00918 ) , 
	.D( N00933 ) 
 ) ;

DECODER DECODER ( 
	.D0( D0 ) , 
	.D1( D1 ) , 
	.D2( D2 ) , 
	.D3( D3 ) , 
	.B1( N00608 ) , 
	.B3( N00584 ) , 
	.B5( N00560 ) , 
	.B7( N00536 ) , 
	.A( N00894 ) , 
	.B( N00906 ) , 
	.C( N00918 ) , 
	.D( N00933 ) , 
	.DREADY( DREADY ) , 
	.NRESET( RESET ) 
 ) ;

endmodule


module NEWENCODER ( D0, D1, D2, D3, B0, B2, B4, B6);
input D0;
input D1;
input D2;
input D3;
output B0;
output B2;
output B4;
output B6;


//    SIGNALS

wire D0D2;
wire D1D3;

// GATE INSTANCES


XOR21_H U1( 
	.A( D0 ) , 
	.B( D2 ) , 
	.Q( D0D2 ) 
 ) ;

XOR21_H U2( 
	.A( D1 ) , 
	.B( D3 ) , 
	.Q( D1D3 ) 
 ) ;

XNR21_H U3( 
	.A( D0D2 ) , 
	.B( D1 ) , 
	.Q( B4 ) 
 ) ;

XNR21_H U4( 
	.A( D0D2 ) , 
	.B( D3 ) , 
	.Q( B0 ) 
 ) ;

XNR21_H U6( 
	.A( D0 ) , 
	.B( D1D3 ) , 
	.Q( B2 ) 
 ) ;

XOR21_H U7( 
	.A( D1D3 ) , 
	.B( D2 ) , 
	.Q( B6 ) 
 ) ;

endmodule


module TEAMN_MUX ( D0, D1, D2, D3, D4, D5, D6, D7, Q2, Q1, Q0,
OUTPUT, ESTROBE);
input D0;
input D1;
input D2;
input D3;
input D4;
input D5;
input D6;
input D7;
input Q2;
input Q1;
input Q0;
output OUTPUT;
input ESTROBE;


//    SIGNALS

wire N00933;
wire N00941;
wire N00948;
wire N00952;
wire N00959;
wire N00966;
wire N03294;
wire N03312;

// GATE INSTANCES


MUX21_H U1( 
	.A( N03312 ) , 
	.B( D1 ) , 
	.Q( N00933 ) , 
	.S( Q0 ) 
 ) ;

MUX21_H U5( 
	.A( N00933 ) , 
	.B( N00941 ) , 
	.Q( N00959 ) , 
	.S( Q1 ) 
 ) ;

MUX21_H U6( 
	.A( N00948 ) , 
	.B( N00952 ) , 
	.Q( N00966 ) , 
	.S( Q1 ) 
 ) ;

MUX21_H U7( 
	.A( N00959 ) , 
	.B( N00966 ) , 
	.Q( OUTPUT ) , 
	.S( Q2 ) 
 ) ;

MUX21_H U8( 
	.A( D2 ) , 
	.B( D3 ) , 
	.Q( N00941 ) , 
	.S( Q0 ) 
 ) ;

MUX21_H U9( 
	.A( D4 ) , 
	.B( D5 ) , 
	.Q( N00948 ) , 
	.S( Q0 ) 
 ) ;

MUX21_H U10( 
	.A( D6 ) , 
	.B( D7 ) , 
	.Q( N00952 ) , 
	.S( Q0 ) 
 ) ;

NAND21_H U11( 
	.A( ESTROBE ) , 
	.B( D0 ) , 
	.Q( N03294 ) 
 ) ;

INV1_H U12( 
	.A( N03294 ) , 
	.Q( N03312 ) 
 ) ;

endmodule


module \TEAMN_COUNTER(V1)  ( CLOCK, RESET, Q0, Q1, Q2, INPUT, ESTROBE);
input CLOCK;
input RESET;
output Q0;
output Q1;
output Q2;
input INPUT;
output ESTROBE;


//    SIGNALS

wire N00666;
wire N02920;
wire N046381;
wire N04804;
wire N04838;
wire N05198;
wire N05688;

// GATE INSTANCES


XOR21_H U3( 
	.A( Q1 ) , 
	.B( Q0 ) , 
	.Q( N00666 ) 
 ) ;

XOR21_H U4( 
	.A( N02920 ) , 
	.B( N046381 ) , 
	.Q( N04804 ) 
 ) ;

NAND21_H U5( 
	.A( Q1 ) , 
	.B( Q0 ) , 
	.Q( N046381 ) 
 ) ;

NOR31_H U6( 
	.A( Q2 ) , 
	.B( Q1 ) , 
	.C( INPUT ) , 
	.Q( N05198 ) 
 ) ;

NOR21_H U7( 
	.A( N05198 ) , 
	.B( Q0 ) , 
	.Q( N04838 ) 
 ) ;

NOR41_H U8( 
	.A( Q2 ) , 
	.B( Q1 ) , 
	.C( Q0 ) , 
	.D( N05688 ) , 
	.Q( ESTROBE ) 
 ) ;

INV1_H U9( 
	.A( INPUT ) , 
	.Q( N05688 ) 
 ) ;

DFC1_H FFQ0( 
	.C( CLOCK ) , 
	.D( N04838 ) , 
	.Q( Q0 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H FFQ1( 
	.C( CLOCK ) , 
	.D( N00666 ) , 
	.Q( Q1 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H FFQ2( 
	.C( CLOCK ) , 
	.D( N04804 ) , 
	.Q( Q2 ) , 
	.QN( N02920 ) , 
	.RN( RESET ) 
 ) ;

endmodule


module ENCODER ( EDATA, CLOCK, RESET, INPUT, D0, D1, D2, D3,
ESTROBE);
output EDATA;
input CLOCK;
input RESET;
input INPUT;
input D0;
input D1;
input D2;
input D3;
output ESTROBE;


//    SIGNALS

wire N10054;
wire N10068;
wire N10082;
wire N10094;
wire N10260;
wire N10264;
wire N10276;
wire N10288;

// GATE INSTANCES


DFC1_H U1( 
	.C( CLOCK ) , 
	.D( INPUT ) , 
	.Q( N10260 ) , 
	.RN( INPUT ) 
 ) ;

\TEAMN_COUNTER(V1)  COUNTER ( 
	.CLOCK( CLOCK ) , 
	.RESET( RESET ) , 
	.Q0( N10288 ) , 
	.Q1( N10276 ) , 
	.Q2( N10264 ) , 
	.INPUT( N10260 ) , 
	.ESTROBE( ESTROBE ) 
 ) ;

NEWENCODER ENCODER ( 
	.D0( D0 ) , 
	.D1( D1 ) , 
	.D2( D2 ) , 
	.D3( D3 ) , 
	.B0( N10082 ) , 
	.B2( N10054 ) , 
	.B4( N10068 ) , 
	.B6( N10094 ) 
 ) ;

TEAMN_MUX MUX ( 
	.D0( N10082 ) , 
	.D1( D0 ) , 
	.D2( N10054 ) , 
	.D3( D1 ) , 
	.D4( N10068 ) , 
	.D5( D2 ) , 
	.D6( N10094 ) , 
	.D7( D3 ) , 
	.Q2( N10264 ) , 
	.Q1( N10276 ) , 
	.Q0( N10288 ) , 
	.OUTPUT( EDATA ) , 
	.ESTROBE( ESTROBE ) 
 ) ;

endmodule


module TEAMN_HALFADDER ( A, B, SUM, CARRY);
input A;
input B;
output SUM;
output CARRY;


//    SIGNALS

wire N00147;

// GATE INSTANCES


INV1_H U4( 
	.A( N00147 ) , 
	.Q( CARRY ) 
 ) ;

NAND21_H U5( 
	.A( A ) , 
	.B( B ) , 
	.Q( N00147 ) 
 ) ;

XOR21_H U6( 
	.A( A ) , 
	.B( B ) , 
	.Q( SUM ) 
 ) ;

endmodule


module TEAMN_FULLADDER ( A, B, CIN, SUM, COUT);
input A;
input B;
input CIN;
output SUM;
output COUT;


//    SIGNALS

wire N00114;
wire N00118;
wire N00134;
wire N00146;

// GATE INSTANCES


INV1_H U2( 
	.A( N00146 ) , 
	.Q( COUT ) 
 ) ;

NOR21_H U3( 
	.A( N00134 ) , 
	.B( N00118 ) , 
	.Q( N00146 ) 
 ) ;

TEAMN_HALFADDER HALFADDER1 ( 
	.A( A ) , 
	.B( B ) , 
	.SUM( N00114 ) , 
	.CARRY( N00118 ) 
 ) ;

TEAMN_HALFADDER HALFADDER2 ( 
	.A( N00114 ) , 
	.B( CIN ) , 
	.SUM( SUM ) , 
	.CARRY( N00134 ) 
 ) ;

endmodule


module TEAMN_4BIT_ADDER ( A4, A8, A3, A5, A9, A6, A10, A7, A11,
Q7, Q6, Q5, Q4, Q3);
input A4;
input A8;
input A3;
input A5;
input A9;
input A6;
input A10;
input A7;
input A11;
output Q7;
output Q6;
output Q5;
output Q4;
output Q3;


//    SIGNALS

wire N00172;
wire N00185;
wire N00198;

// GATE INSTANCES


TEAMN_FULLADDER FULLADDER0 ( 
	.A( A4 ) , 
	.B( A8 ) , 
	.CIN( A3 ) , 
	.SUM( Q3 ) , 
	.COUT( N00172 ) 
 ) ;

TEAMN_FULLADDER FULLADDER1 ( 
	.A( A5 ) , 
	.B( A9 ) , 
	.CIN( N00172 ) , 
	.SUM( Q4 ) , 
	.COUT( N00185 ) 
 ) ;

TEAMN_FULLADDER FULLADDER2 ( 
	.A( A6 ) , 
	.B( A10 ) , 
	.CIN( N00185 ) , 
	.SUM( Q5 ) , 
	.COUT( N00198 ) 
 ) ;

TEAMN_FULLADDER FULLADDER3 ( 
	.A( A7 ) , 
	.B( A11 ) , 
	.CIN( N00198 ) , 
	.SUM( Q6 ) , 
	.COUT( Q7 ) 
 ) ;

endmodule


module TEAMN_SEQUENCER ( DATAIN, CLOCK, RESET, PORTOUT);
input DATAIN;
input CLOCK;
input RESET;
output PORTOUT;


//    SIGNALS

wire N00469;
wire N01113;
wire N01142;
wire N01291;
wire N01785;
wire N01937;
wire N02735;
wire N02747;
wire N02896;
wire N02920;
wire N03185;
wire N03206;
wire N03661;
wire N04014;
wire N111352;
wire N111642;
wire N117090;
wire N117092;
wire N15964;
wire Q2N;

// GATE INSTANCES


NAND41_H U14( 
	.A( DATAIN ) , 
	.B( N01785 ) , 
	.C( N02735 ) , 
	.D( N02896 ) , 
	.Q( N01113 ) 
 ) ;

NAND31_H U8( 
	.A( N01291 ) , 
	.B( N01785 ) , 
	.C( N02920 ) , 
	.Q( N03661 ) 
 ) ;

NAND31_H U9( 
	.A( DATAIN ) , 
	.B( N01785 ) , 
	.C( N02747 ) , 
	.Q( N00469 ) 
 ) ;

INV1_H U24( 
	.A( DATAIN ) , 
	.Q( N01291 ) 
 ) ;

NAND31_H U25( 
	.A( N01785 ) , 
	.B( N02735 ) , 
	.C( N02920 ) , 
	.Q( N01142 ) 
 ) ;

NAND41_H U26( 
	.A( DATAIN ) , 
	.B( N01937 ) , 
	.C( N02735 ) , 
	.D( N02896 ) , 
	.Q( N04014 ) 
 ) ;

XOR21_H U29( 
	.A( N01785 ) , 
	.B( DATAIN ) , 
	.Q( N111352 ) 
 ) ;

NAND21_H U30( 
	.A( N111352 ) , 
	.B( N02920 ) , 
	.Q( N111642 ) 
 ) ;

NAND21_H U31( 
	.A( N111642 ) , 
	.B( N01113 ) , 
	.Q( N03206 ) 
 ) ;

NAND21_H U32( 
	.A( N117090 ) , 
	.B( DATAIN ) , 
	.Q( N117092 ) 
 ) ;

NAND21_H U33( 
	.A( N117092 ) , 
	.B( N01142 ) , 
	.Q( N03185 ) 
 ) ;

XOR21_H U34( 
	.A( N02896 ) , 
	.B( N02735 ) , 
	.Q( N117090 ) 
 ) ;

INV1_H U35( 
	.A( N01113 ) , 
	.Q( N15964 ) 
 ) ;

NAND31_H U36( 
	.A( N03661 ) , 
	.B( N00469 ) , 
	.C( N04014 ) , 
	.Q( Q2N ) 
 ) ;

DFC1_H U37( 
	.C( CLOCK ) , 
	.D( N15964 ) , 
	.Q( PORTOUT ) , 
	.RN( RESET ) 
 ) ;

DFC1_H Q0( 
	.C( CLOCK ) , 
	.D( N03206 ) , 
	.Q( N02896 ) , 
	.QN( N02920 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H Q1( 
	.C( CLOCK ) , 
	.D( N03185 ) , 
	.Q( N02735 ) , 
	.QN( N02747 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H Q2( 
	.C( CLOCK ) , 
	.D( Q2N ) , 
	.Q( N01785 ) , 
	.QN( N01937 ) , 
	.RN( RESET ) 
 ) ;

endmodule


module TEAMN_RINGOSCILLATOR ( ENABLE, OUTPUT, RESET);
input ENABLE;
output OUTPUT;
input RESET;


//    SIGNALS

wire N07978;
wire N07982;
wire N07986;
wire N07990;
wire N07994;
wire N07998;
wire N08010;
wire N08647;
wire N09131;
wire N09149;
wire N09167;
wire N09185;
wire N09203;
wire N09210;
wire N09222;
wire N09249;
wire N09261;
wire N09287;
wire N09787;
wire N09801;

// GATE INSTANCES


INV1_H U23( 
	.A( N07978 ) , 
	.Q( N07982 ) 
 ) ;

INV1_H U24( 
	.A( N07982 ) , 
	.Q( N07986 ) 
 ) ;

INV1_H U25( 
	.A( N07986 ) , 
	.Q( N07990 ) 
 ) ;

INV1_H U26( 
	.A( N07990 ) , 
	.Q( N07994 ) 
 ) ;

INV1_H U27( 
	.A( N07994 ) , 
	.Q( N07998 ) 
 ) ;

INV1_H U28( 
	.A( N07998 ) , 
	.Q( N08010 ) 
 ) ;

NAND21_H U35( 
	.A( ENABLE ) , 
	.B( N08010 ) , 
	.Q( N07978 ) 
 ) ;

DFC1_H U36( 
	.C( N08010 ) , 
	.D( N09131 ) , 
	.Q( N09203 ) , 
	.QN( N09131 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U37( 
	.C( N09203 ) , 
	.D( N09149 ) , 
	.Q( N09210 ) , 
	.QN( N09149 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U38( 
	.C( N09210 ) , 
	.D( N09167 ) , 
	.Q( N09222 ) , 
	.QN( N09167 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U39( 
	.C( N09222 ) , 
	.D( N09185 ) , 
	.Q( N08647 ) , 
	.QN( N09185 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U40( 
	.C( N08647 ) , 
	.D( N09261 ) , 
	.Q( N09249 ) , 
	.QN( N09261 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U41( 
	.C( N09249 ) , 
	.D( N09287 ) , 
	.Q( N09787 ) , 
	.QN( N09287 ) , 
	.RN( RESET ) 
 ) ;

DFC1_H U44( 
	.C( N09787 ) , 
	.D( N09801 ) , 
	.Q( OUTPUT ) , 
	.QN( N09801 ) , 
	.RN( RESET ) 
 ) ;

endmodule


module TEAMN_DESIGN ( A0, A1, A2, A12, Q0, Q1, Q12,
A3, A4, A5, A6, A7, A8, A9, A10, A11, Q3, Q4, Q5, Q6, Q7, Q15, Q16, Q17, Q18,
Q19, Q20, Q21, Q22, Q23);
input A0;
input A1;
input A2;
input A12;
output Q0;
output Q1;
output Q12;
input A3;
input A4;
input A5;
input A6;
input A7;
input A8;
input A9;
input A10;
input A11;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
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


INV1_H U1( 
	.A( A0 ) , 
	.Q( Q0 ) 
 ) ;

ENCODER ENCODER ( 
	.EDATA( Q16 ) , 
	.CLOCK( A12 ) , 
	.RESET( A1 ) , 
	.INPUT( A3 ) , 
	.D0( A4 ) , 
	.D1( A5 ) , 
	.D2( A6 ) , 
	.D3( A7 ) , 
	.ESTROBE( Q15 ) 
 ) ;

TEAMN_SEQUENCER SEQUENCER ( 
	.DATAIN( A3 ) , 
	.CLOCK( A12 ) , 
	.RESET( A1 ) , 
	.PORTOUT( Q12 ) 
 ) ;

TEAMN_4BIT_ADDER \4BITADDER  ( 
	.A4( A4 ) , 
	.A8( A8 ) , 
	.A3( A3 ) , 
	.A5( A5 ) , 
	.A9( A9 ) , 
	.A6( A6 ) , 
	.A10( A10 ) , 
	.A7( A7 ) , 
	.A11( A11 ) , 
	.Q7( Q7 ) , 
	.Q6( Q6 ) , 
	.Q5( Q5 ) , 
	.Q4( Q4 ) , 
	.Q3( Q3 ) 
 ) ;

TEAMN_RINGOSCILLATOR RINGOSCILLATOR ( 
	.ENABLE( A2 ) , 
	.OUTPUT( Q1 ) , 
	.RESET( A1 ) 
 ) ;

TEAMN_DECODER DECODER ( 
	.DATA( A9 ) , 
	.CLOCK( A12 ) , 
	.RESET( A1 ) , 
	.STROBE( A8 ) , 
	.DREADY( Q17 ) , 
	.D0( Q18 ) , 
	.D1( Q19 ) , 
	.D2( Q20 ) , 
	.D3( Q21 ) , 
	.DVALID( Q22 ) , 
	.DERROR( Q23 ) 
 ) ;

endmodule

