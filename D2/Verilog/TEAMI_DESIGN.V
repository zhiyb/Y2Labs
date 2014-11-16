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

module TEAMI_SYNDROME ( B2, B1, B4, B3, B6, B5, B0, B7, A, B,
C, D, DERROR, DVALID);
input B2;
input B1;
input B4;
input B3;
input B6;
input B5;
input B0;
input B7;
output A;
output B;
output C;
output D;
output DERROR;
output DVALID;


//    SIGNALS

wire \B0+B5 ;
wire \B0+B6 ;
wire \B1+B3 ;
wire \B1+B7 ;
wire \B2+B3 ;
wire \B4+B5 ;
wire N11577;
wire N11961;

// GATE INSTANCES


XOR21_H U13( 
	.A( \B4+B5  ) , 
	.B( \B0+B6  ) , 
	.Q( N11577 ) 
 ) ;

XOR21_H U14( 
	.A( N11961 ) , 
	.B( N11577 ) , 
	.Q( D ) 
 ) ;

NAND41_H U16( 
	.A( A ) , 
	.B( B ) , 
	.C( C ) , 
	.D( D ) , 
	.Q( DERROR ) 
 ) ;

NAND21_H U17( 
	.A( DERROR ) , 
	.B( D ) , 
	.Q( DVALID ) 
 ) ;

XOR21_H U1( 
	.A( B1 ) , 
	.B( B7 ) , 
	.Q( \B1+B7  ) 
 ) ;

XOR21_H U2( 
	.A( B2 ) , 
	.B( B3 ) , 
	.Q( \B2+B3  ) 
 ) ;

XOR21_H U4( 
	.A( B0 ) , 
	.B( B5 ) , 
	.Q( \B0+B5  ) 
 ) ;

XOR21_H U5( 
	.A( B1 ) , 
	.B( B3 ) , 
	.Q( \B1+B3  ) 
 ) ;

XOR21_H U6( 
	.A( B4 ) , 
	.B( B5 ) , 
	.Q( \B4+B5  ) 
 ) ;

XOR21_H U7( 
	.A( B0 ) , 
	.B( B6 ) , 
	.Q( \B0+B6  ) 
 ) ;

XOR21_H U9( 
	.A( \B1+B7  ) , 
	.B( \B0+B5  ) , 
	.Q( A ) 
 ) ;

XOR21_H U10( 
	.A( \B1+B7  ) , 
	.B( \B2+B3  ) , 
	.Q( B ) 
 ) ;

XOR21_H U11( 
	.A( \B1+B3  ) , 
	.B( \B4+B5  ) , 
	.Q( C ) 
 ) ;

XOR21_H U12( 
	.A( \B1+B7  ) , 
	.B( \B2+B3  ) , 
	.Q( N11961 ) 
 ) ;

endmodule


module TEAMI_STATEMACHINE ( DSTROBE, CLOCK, NRESET, DREADY);
input DSTROBE;
input CLOCK;
input NRESET;
output DREADY;


//    SIGNALS

wire DREADY0;
wire N00387;
wire N00399;
wire N00403;
wire N00728;
wire N00732;
wire N00744;
wire N00785;
wire N00800;
wire N02173;
wire N02177;
wire N02187;
wire N03167;
wire NQ0;
wire NQ1;
wire NQ2;
wire OQ0;
wire OQ1;
wire OQ2;
wire Q0N;
wire Q1N;
wire Q2N;

// GATE INSTANCES


INV1_H U13( 
	.A( N03167 ) , 
	.Q( DREADY0 ) 
 ) ;

DFC1_H U14( 
	.C( CLOCK ) , 
	.D( N02173 ) , 
	.Q( DREADY ) , 
	.QN( N02187 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U1( 
	.A( OQ2 ) , 
	.B( NQ0 ) , 
	.Q( N00403 ) 
 ) ;

NAND21_H U2( 
	.A( NQ1 ) , 
	.B( OQ2 ) , 
	.Q( N00399 ) 
 ) ;

NAND21_H U3( 
	.A( NQ0 ) , 
	.B( OQ1 ) , 
	.Q( N00800 ) 
 ) ;

NAND21_H U4( 
	.A( OQ0 ) , 
	.B( NQ1 ) , 
	.Q( N00785 ) 
 ) ;

NAND21_H U5( 
	.A( NQ0 ) , 
	.B( OQ2 ) , 
	.Q( N00744 ) 
 ) ;

NAND21_H U6( 
	.A( NQ0 ) , 
	.B( OQ1 ) , 
	.Q( N00728 ) 
 ) ;

NAND21_H U7( 
	.A( DSTROBE ) , 
	.B( NQ0 ) , 
	.Q( N00732 ) 
 ) ;

NAND31_H U8( 
	.A( OQ0 ) , 
	.B( OQ1 ) , 
	.C( NQ2 ) , 
	.Q( N00387 ) 
 ) ;

NAND31_H U9( 
	.A( N00387 ) , 
	.B( N00399 ) , 
	.C( N00403 ) , 
	.Q( Q2N ) 
 ) ;

DFC1_H Q0( 
	.C( CLOCK ) , 
	.D( Q0N ) , 
	.Q( OQ0 ) , 
	.QN( NQ0 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H Q1( 
	.C( CLOCK ) , 
	.D( Q1N ) , 
	.Q( OQ1 ) , 
	.QN( NQ1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H Q2( 
	.C( CLOCK ) , 
	.D( Q2N ) , 
	.Q( OQ2 ) , 
	.QN( NQ2 ) , 
	.RN( NRESET ) 
 ) ;

NAND31_H U10( 
	.A( N00732 ) , 
	.B( N00728 ) , 
	.C( N00744 ) , 
	.Q( Q0N ) 
 ) ;

DFC1_H Q3( 
	.C( CLOCK ) , 
	.D( DREADY0 ) , 
	.Q( N02173 ) , 
	.QN( N02177 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U11( 
	.A( N00785 ) , 
	.B( N00800 ) , 
	.Q( Q1N ) 
 ) ;

NAND31_H U12( 
	.A( OQ2 ) , 
	.B( OQ1 ) , 
	.C( OQ0 ) , 
	.Q( N03167 ) 
 ) ;

endmodule


module TEAMI_SYNDROME_DECODER ( A, B, C, D, AOUT, BOUT, COUT,
DOUT);
input A;
input B;
input C;
input D;
output AOUT;
output BOUT;
output COUT;
output DOUT;


//    SIGNALS

wire N04206;
wire N04278;
wire N04354;

// GATE INSTANCES


NOR41_H U2( 
	.A( A ) , 
	.B( B ) , 
	.C( C ) , 
	.D( D ) , 
	.Q( AOUT ) 
 ) ;

NOR41_H U5( 
	.A( N04206 ) , 
	.B( B ) , 
	.C( C ) , 
	.D( D ) , 
	.Q( BOUT ) 
 ) ;

NOR41_H U6( 
	.A( A ) , 
	.B( N04278 ) , 
	.C( C ) , 
	.D( D ) , 
	.Q( COUT ) 
 ) ;

NOR41_H U7( 
	.A( A ) , 
	.B( B ) , 
	.C( N04354 ) , 
	.D( D ) , 
	.Q( DOUT ) 
 ) ;

INV1_H U8( 
	.A( A ) , 
	.Q( N04206 ) 
 ) ;

INV1_H U9( 
	.A( B ) , 
	.Q( N04278 ) 
 ) ;

INV1_H U10( 
	.A( C ) , 
	.Q( N04354 ) 
 ) ;

endmodule


module TEAMI_SHIFT_REGISTOR ( NRESET, CLK, DDATA, NB1, NB3, NB5,
NB7, B0, B1, B2, B3, B4, B5, B6, B7, NB0, NB2, NB4, NB6);
input NRESET;
input CLK;
input DDATA;
output NB1;
output NB3;
output NB5;
output NB7;
output B0;
output B1;
output B2;
output B3;
output B4;
output B5;
output B6;
output B7;
output NB0;
output NB2;
output NB4;
output NB6;


//    SIGNALS


// GATE INSTANCES


DFC1_H U1( 
	.C( CLK ) , 
	.D( DDATA ) , 
	.Q( B7 ) , 
	.QN( NB7 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( CLK ) , 
	.D( B7 ) , 
	.Q( B6 ) , 
	.QN( NB6 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( B6 ) , 
	.Q( B5 ) , 
	.QN( NB5 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U4( 
	.C( CLK ) , 
	.D( B5 ) , 
	.Q( B4 ) , 
	.QN( NB4 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U5( 
	.C( CLK ) , 
	.D( B4 ) , 
	.Q( B3 ) , 
	.QN( NB3 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U6( 
	.C( CLK ) , 
	.D( B3 ) , 
	.Q( B2 ) , 
	.QN( NB2 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U7( 
	.C( CLK ) , 
	.D( B2 ) , 
	.Q( B1 ) , 
	.QN( NB1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U8( 
	.C( CLK ) , 
	.D( B1 ) , 
	.Q( B0 ) , 
	.QN( NB0 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMI_CORRECTOR ( B0, B1, B2, B3, NB0, NB1, NB2, NB3,
A, B, C, D, DD0, DD1, DD2, DD3, SCLOCK, NRESET, DVAL, DVALID,
DERR, DERROR);
input B0;
input B1;
input B2;
input B3;
input NB0;
input NB1;
input NB2;
input NB3;
input A;
input B;
input C;
input D;
output DD0;
output DD1;
output DD2;
output DD3;
input SCLOCK;
input NRESET;
input DVAL;
output DVALID;
input DERR;
output DERROR;


//    SIGNALS

wire N02550;
wire N02554;
wire N02558;
wire N02562;
wire N02866;
wire N02870;
wire N02874;
wire N05550;
wire N05734;
wire N05854;
wire N05982;
wire N06104;

// GATE INSTANCES


MUX21_H U1( 
	.A( B0 ) , 
	.B( NB0 ) , 
	.Q( N02550 ) , 
	.S( A ) 
 ) ;

MUX21_H U2( 
	.A( B1 ) , 
	.B( NB1 ) , 
	.Q( N02554 ) , 
	.S( B ) 
 ) ;

MUX21_H U3( 
	.A( B2 ) , 
	.B( NB2 ) , 
	.Q( N02558 ) , 
	.S( C ) 
 ) ;

MUX21_H U4( 
	.A( B3 ) , 
	.B( NB3 ) , 
	.Q( N02562 ) , 
	.S( D ) 
 ) ;

DFC1_H U5( 
	.C( SCLOCK ) , 
	.D( N02550 ) , 
	.Q( DD0 ) , 
	.QN( N02866 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U6( 
	.C( SCLOCK ) , 
	.D( N02554 ) , 
	.Q( DD1 ) , 
	.QN( N02870 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U7( 
	.C( SCLOCK ) , 
	.D( N02558 ) , 
	.Q( DD2 ) , 
	.QN( N02874 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U8( 
	.C( SCLOCK ) , 
	.D( N02562 ) , 
	.Q( DD3 ) , 
	.QN( N05550 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U9( 
	.C( SCLOCK ) , 
	.D( DVAL ) , 
	.Q( DVALID ) , 
	.QN( N05734 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U10( 
	.C( SCLOCK ) , 
	.D( DERR ) , 
	.Q( N05982 ) , 
	.QN( N05854 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U11( 
	.A( N05982 ) , 
	.B( SCLOCK ) , 
	.Q( N06104 ) 
 ) ;

INV1_H U12( 
	.A( N06104 ) , 
	.Q( DERROR ) 
 ) ;

endmodule


module TEAMI_DECODER ( NRESET, CLOCK, DDATA, DSTROBE, DD0, DD1,
DD2, DD3, DREADY, DVALID, DERROR);
input NRESET;
input CLOCK;
input DDATA;
input DSTROBE;
output DD0;
output DD1;
output DD2;
output DD3;
output DREADY;
output DVALID;
output DERROR;


//    SIGNALS

wire N03358;
wire N03362;
wire N03366;
wire N03370;
wire N03374;
wire N03378;
wire N03382;
wire N03386;
wire N03390;
wire N03394;
wire N03398;
wire N03402;
wire N04493;
wire N04497;
wire N04501;
wire N04505;
wire N04659;
wire N04663;
wire N04667;
wire N04671;
wire N17918;
wire N17922;

// GATE INSTANCES


TEAMI_SYNDROME SYNDROME ( 
	.B2( N03366 ) , 
	.B1( N03362 ) , 
	.B4( N03374 ) , 
	.B3( N03370 ) , 
	.B6( N03382 ) , 
	.B5( N03378 ) , 
	.B0( N03358 ) , 
	.B7( N03386 ) , 
	.A( N03390 ) , 
	.B( N03394 ) , 
	.C( N03398 ) , 
	.D( N03402 ) , 
	.DERROR( N17918 ) , 
	.DVALID( N17922 ) 
 ) ;

TEAMI_SYNDROME_DECODER SYNDROME_DECODER ( 
	.A( N03390 ) , 
	.B( N03394 ) , 
	.C( N03398 ) , 
	.D( N03402 ) , 
	.AOUT( N04659 ) , 
	.BOUT( N04663 ) , 
	.COUT( N04667 ) , 
	.DOUT( N04671 ) 
 ) ;

TEAMI_CORRECTOR CORRECTOR ( 
	.B0( N03362 ) , 
	.B1( N03370 ) , 
	.B2( N03378 ) , 
	.B3( N03386 ) , 
	.NB0( N04493 ) , 
	.NB1( N04497 ) , 
	.NB2( N04501 ) , 
	.NB3( N04505 ) , 
	.A( N04659 ) , 
	.B( N04663 ) , 
	.C( N04667 ) , 
	.D( N04671 ) , 
	.DD0( DD0 ) , 
	.DD1( DD1 ) , 
	.DD2( DD2 ) , 
	.DD3( DD3 ) , 
	.SCLOCK( DREADY ) , 
	.NRESET( NRESET ) , 
	.DVAL( N17922 ) , 
	.DVALID( DVALID ) , 
	.DERR( N17918 ) , 
	.DERROR( DERROR ) 
 ) ;

TEAMI_SHIFT_REGISTOR SHIFT_REGISTOR ( 
	.NRESET( NRESET ) , 
	.CLK( CLOCK ) , 
	.DDATA( DDATA ) , 
	.NB1( N04493 ) , 
	.NB3( N04497 ) , 
	.NB5( N04501 ) , 
	.NB7( N04505 ) , 
	.B0( N03358 ) , 
	.B1( N03362 ) , 
	.B2( N03366 ) , 
	.B3( N03370 ) , 
	.B4( N03374 ) , 
	.B5( N03378 ) , 
	.B6( N03382 ) , 
	.B7( N03386 ) 
 ) ;

TEAMI_STATEMACHINE STATE_MACHINE ( 
	.DSTROBE( DSTROBE ) , 
	.CLOCK( CLOCK ) , 
	.NRESET( NRESET ) , 
	.DREADY( DREADY ) 
 ) ;

endmodule


module TEAMI_FULLADDER ( A, B, CARRYIN, SUM, CARRYOUT);
input A;
input B;
input CARRYIN;
output SUM;
output CARRYOUT;


//    SIGNALS

wire N02243;
wire N02309;
wire N02323;

// GATE INSTANCES


XOR21_H U1( 
	.A( A ) , 
	.B( B ) , 
	.Q( N02243 ) 
 ) ;

XOR21_H U2( 
	.A( N02243 ) , 
	.B( CARRYIN ) , 
	.Q( SUM ) 
 ) ;

NAND21_H U3( 
	.A( N02243 ) , 
	.B( CARRYIN ) , 
	.Q( N02309 ) 
 ) ;

NAND21_H U4( 
	.A( A ) , 
	.B( B ) , 
	.Q( N02323 ) 
 ) ;

NAND21_H U5( 
	.A( N02309 ) , 
	.B( N02323 ) , 
	.Q( CARRYOUT ) 
 ) ;

endmodule


module TEAMI_4BITADDER ( CARRYIN, X0, X1, X2, X3, Y0, Y1, Y2,
Y3, XY0, XY1, XY2, XY3, CARRYOUT);
input CARRYIN;
input X0;
input X1;
input X2;
input X3;
input Y0;
input Y1;
input Y2;
input Y3;
output XY0;
output XY1;
output XY2;
output XY3;
output CARRYOUT;


//    SIGNALS

wire N02012;
wire N02034;
wire N02096;

// GATE INSTANCES


TEAMI_FULLADDER FULLADDER ( 
	.A( X0 ) , 
	.B( Y0 ) , 
	.CARRYIN( CARRYIN ) , 
	.SUM( XY0 ) , 
	.CARRYOUT( N02012 ) 
 ) ;

TEAMI_FULLADDER FULLADDER1 ( 
	.A( X1 ) , 
	.B( Y1 ) , 
	.CARRYIN( N02012 ) , 
	.SUM( XY1 ) , 
	.CARRYOUT( N02034 ) 
 ) ;

TEAMI_FULLADDER FULLADDER2 ( 
	.A( X2 ) , 
	.B( Y2 ) , 
	.CARRYIN( N02034 ) , 
	.SUM( XY2 ) , 
	.CARRYOUT( N02096 ) 
 ) ;

TEAMI_FULLADDER FULLADDER3 ( 
	.A( X3 ) , 
	.B( Y3 ) , 
	.CARRYIN( N02096 ) , 
	.SUM( XY3 ) , 
	.CARRYOUT( CARRYOUT ) 
 ) ;

endmodule


module TEAMI_SEQUENCE_RECOGNIZER ( DATAIN, CLOCK, NRESET, MATCHALL);
input DATAIN;
input CLOCK;
input NRESET;
output MATCHALL;


//    SIGNALS

wire N12136;
wire N12148;
wire N12160;
wire N12192;
wire N12216;
wire N12240;
wire N12286;
wire N12308;
wire N12318;
wire N12324;
wire N12582;
wire N12592;
wire N12606;
wire N12610;
wire N12762;
wire N12768;
wire N12880;
wire N12890;
wire N12908;
wire N12934;
wire N12948;
wire N13150;
wire N13184;

// GATE INSTANCES


INV1_H U15( 
	.A( DATAIN ) , 
	.Q( N12192 ) 
 ) ;

NAND41_H U16( 
	.A( N12148 ) , 
	.B( N12240 ) , 
	.C( N12286 ) , 
	.D( N12192 ) , 
	.Q( N12324 ) 
 ) ;

NAND41_H U17( 
	.A( N12136 ) , 
	.B( N12240 ) , 
	.C( N12160 ) , 
	.D( N12192 ) , 
	.Q( N12606 ) 
 ) ;

NAND41_H U18( 
	.A( N12136 ) , 
	.B( N12216 ) , 
	.C( N12286 ) , 
	.D( N12192 ) , 
	.Q( N12610 ) 
 ) ;

NAND41_H Q1N1( 
	.A( N12582 ) , 
	.B( N12592 ) , 
	.C( N12606 ) , 
	.D( N12610 ) , 
	.Q( N12890 ) 
 ) ;

NAND31_H U2( 
	.A( N12136 ) , 
	.B( N12216 ) , 
	.C( N12192 ) , 
	.Q( N12318 ) 
 ) ;

NAND41_H Q0N1( 
	.A( N12948 ) , 
	.B( N12934 ) , 
	.C( N12762 ) , 
	.D( N12768 ) , 
	.Q( N12908 ) 
 ) ;

NAND31_H U5( 
	.A( N12148 ) , 
	.B( N12240 ) , 
	.C( DATAIN ) , 
	.Q( N12582 ) 
 ) ;

NAND21_H U20( 
	.A( N12160 ) , 
	.B( DATAIN ) , 
	.Q( N12948 ) 
 ) ;

NAND21_H U21( 
	.A( N12240 ) , 
	.B( DATAIN ) , 
	.Q( N12934 ) 
 ) ;

NAND31_H U6( 
	.A( N12148 ) , 
	.B( N12286 ) , 
	.C( DATAIN ) , 
	.Q( N12592 ) 
 ) ;

NAND21_H U22( 
	.A( N12136 ) , 
	.B( DATAIN ) , 
	.Q( N12762 ) 
 ) ;

NAND21_H U23( 
	.A( N12136 ) , 
	.B( N12160 ) , 
	.Q( N12768 ) 
 ) ;

NAND31_H U25( 
	.A( N12136 ) , 
	.B( N12160 ) , 
	.C( N12192 ) , 
	.Q( N12308 ) 
 ) ;

DFC1_H U28( 
	.C( CLOCK ) , 
	.D( N13150 ) , 
	.Q( MATCHALL ) , 
	.QN( N13184 ) , 
	.RN( NRESET ) 
 ) ;

NOR41_H U29( 
	.A( N12148 ) , 
	.B( N12216 ) , 
	.C( N12160 ) , 
	.D( N12192 ) , 
	.Q( N13150 ) 
 ) ;

NAND31_H Q2N1( 
	.A( N12308 ) , 
	.B( N12318 ) , 
	.C( N12324 ) , 
	.Q( N12880 ) 
 ) ;

DFC1_H Q0( 
	.C( CLOCK ) , 
	.D( N12908 ) , 
	.Q( N12286 ) , 
	.QN( N12160 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H Q1( 
	.C( CLOCK ) , 
	.D( N12890 ) , 
	.Q( N12240 ) , 
	.QN( N12216 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H Q2( 
	.C( CLOCK ) , 
	.D( N12880 ) , 
	.Q( N12136 ) , 
	.QN( N12148 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMI_RINGOSCILLATOR ( ENABLE, NRESET, OSCOUT);
input ENABLE;
input NRESET;
output OSCOUT;


//    SIGNALS

wire N05483;
wire N05491;
wire N05721;
wire N05739;
wire N05757;
wire N05771;
wire N05797;
wire N05819;
wire N05825;
wire N05835;
wire N05841;
wire N05875;
wire N05901;
wire N05931;
wire N05949;
wire N05955;
wire N06141;
wire N06147;
wire N06161;
wire N06815;

// GATE INSTANCES


DFC1_H U13( 
	.C( N05771 ) , 
	.D( N05797 ) , 
	.Q( N05835 ) , 
	.QN( N05797 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U14( 
	.C( N05797 ) , 
	.D( N05841 ) , 
	.Q( N05825 ) , 
	.QN( N05841 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U15( 
	.C( N05901 ) , 
	.D( N05931 ) , 
	.Q( OSCOUT ) , 
	.QN( N05931 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U16( 
	.C( N05841 ) , 
	.D( N05875 ) , 
	.Q( N05949 ) , 
	.QN( N05875 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U17( 
	.C( N05875 ) , 
	.D( N05901 ) , 
	.Q( N05955 ) , 
	.QN( N05901 ) , 
	.RN( NRESET ) 
 ) ;

INV1_H U18( 
	.A( N06141 ) , 
	.Q( N05721 ) 
 ) ;

INV1_H U19( 
	.A( N06147 ) , 
	.Q( N06141 ) 
 ) ;

INV1_H U20( 
	.A( N06815 ) , 
	.Q( N06161 ) 
 ) ;

NAND21_H U6( 
	.A( ENABLE ) , 
	.B( N05721 ) , 
	.Q( N06815 ) 
 ) ;

INV1_H U21( 
	.A( N06161 ) , 
	.Q( N05483 ) 
 ) ;

NAND21_H U7( 
	.A( N05483 ) , 
	.B( N05483 ) , 
	.Q( N05491 ) 
 ) ;

NAND21_H U8( 
	.A( N05491 ) , 
	.B( N05491 ) , 
	.Q( N06147 ) 
 ) ;

DFC1_H U11( 
	.C( N05721 ) , 
	.D( N05739 ) , 
	.Q( N05757 ) , 
	.QN( N05739 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U12( 
	.C( N05739 ) , 
	.D( N05771 ) , 
	.Q( N05819 ) , 
	.QN( N05771 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMI_INVERTER ( IN, OUT);
input IN;
output OUT;


//    SIGNALS


// GATE INSTANCES


INV1_H U1( 
	.A( IN ) , 
	.Q( OUT ) 
 ) ;

endmodule


module TEAMI_DESIGN ( A0, Q0, A1, A2, Q1, A14, A12, Q12,
A3, A4, A5, A6, A7, A8, A9, A10, A11, Q3, Q4, Q5, Q6, Q7,
Q18, Q19, Q20, Q21, Q22, Q23, Q17);
input A0;
output Q0;
input A1;
input A2;
output Q1;
input A14;
input A12;
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
output Q18;
output Q19;
output Q20;
output Q21;
output Q22;
output Q23;
output Q17;


//    SIGNALS


// GATE INSTANCES


TEAMI_SEQUENCE_RECOGNIZER SEQUENCE_RECOGNITION ( 
	.DATAIN( A3 ) , 
	.CLOCK( A12 ) , 
	.NRESET( A1 ) , 
	.MATCHALL( Q12 ) 
 ) ;

TEAMI_INVERTER INVERTER ( 
	.IN( A0 ) , 
	.OUT( Q0 ) 
 ) ;

TEAMI_4BITADDER \4BIT_ADDER  ( 
	.CARRYIN( A3 ) , 
	.X0( A4 ) , 
	.X1( A5 ) , 
	.X2( A6 ) , 
	.X3( A7 ) , 
	.Y0( A8 ) , 
	.Y1( A9 ) , 
	.Y2( A10 ) , 
	.Y3( A11 ) , 
	.XY0( Q3 ) , 
	.XY1( Q4 ) , 
	.XY2( Q5 ) , 
	.XY3( Q6 ) , 
	.CARRYOUT( Q7 ) 
 ) ;

TEAMI_RINGOSCILLATOR RING_OSCILLATOR ( 
	.ENABLE( A2 ) , 
	.NRESET( A1 ) , 
	.OSCOUT( Q1 ) 
 ) ;

TEAMI_DECODER DECODER ( 
	.NRESET( A1 ) , 
	.CLOCK( A12 ) , 
	.DDATA( A9 ) , 
	.DSTROBE( A8 ) , 
	.DD0( Q18 ) , 
	.DD1( Q19 ) , 
	.DD2( Q20 ) , 
	.DD3( Q21 ) , 
	.DREADY( Q17 ) , 
	.DVALID( Q22 ) , 
	.DERROR( Q23 ) 
 ) ;

endmodule

