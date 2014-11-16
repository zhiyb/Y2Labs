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

module TEAMK_DECODER_SEQ ( DSTROBE, D_READY, CLOCK, N_RESET);
input DSTROBE;
output D_READY;
input CLOCK;
input N_RESET;


//    SIGNALS

wire ESTBAR;
wire N01633;
wire N01640;
wire N01651;
wire N01747;
wire N01754;
wire N01823;
wire N01954;
wire N01961;
wire N01965;
wire N01972;
wire N02272;
wire N02862;
wire N04777;
wire N05482;
wire S0;
wire S0BAR;
wire S1;
wire S1BAR;
wire S2;
wire S2BAR;

// GATE INSTANCES


NAND31_H U13( 
	.A( S2BAR ) , 
	.B( S1 ) , 
	.C( S0 ) , 
	.Q( N01954 ) 
 ) ;

NAND21_H U14( 
	.A( S2 ) , 
	.B( S0BAR ) , 
	.Q( N01961 ) 
 ) ;

NAND21_H U15( 
	.A( S1BAR ) , 
	.B( S2 ) , 
	.Q( N01965 ) 
 ) ;

NAND31_H U16( 
	.A( N01954 ) , 
	.B( N01961 ) , 
	.C( N01965 ) , 
	.Q( N01972 ) 
 ) ;

DFC1_H U17( 
	.C( CLOCK ) , 
	.D( N02272 ) , 
	.Q( N05482 ) , 
	.QN( N02862 ) , 
	.RN( N_RESET ) 
 ) ;

NOR31_H U18( 
	.A( S0BAR ) , 
	.B( S1BAR ) , 
	.C( S2BAR ) , 
	.Q( N02272 ) 
 ) ;

INV1_H U19( 
	.A( DSTROBE ) , 
	.Q( ESTBAR ) 
 ) ;

DFC1_H U20( 
	.C( CLOCK ) , 
	.D( N05482 ) , 
	.Q( D_READY ) , 
	.RN( N_RESET ) 
 ) ;

NAND21_H U6( 
	.A( S0BAR ) , 
	.B( S2 ) , 
	.Q( N01633 ) 
 ) ;

NAND21_H U7( 
	.A( S0BAR ) , 
	.B( S1 ) , 
	.Q( N01640 ) 
 ) ;

NAND31_H U9( 
	.A( N01633 ) , 
	.B( N01640 ) , 
	.C( ESTBAR ) , 
	.Q( N01651 ) 
 ) ;

DFC1_H F0( 
	.C( CLOCK ) , 
	.D( N01651 ) , 
	.Q( S0 ) , 
	.QN( S0BAR ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H F1( 
	.C( CLOCK ) , 
	.D( N01823 ) , 
	.Q( S1 ) , 
	.QN( S1BAR ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H F2( 
	.C( CLOCK ) , 
	.D( N01972 ) , 
	.Q( S2 ) , 
	.QN( S2BAR ) , 
	.RN( N_RESET ) 
 ) ;

NAND21_H U10( 
	.A( S0BAR ) , 
	.B( S1 ) , 
	.Q( N01747 ) 
 ) ;

NAND21_H U11( 
	.A( S1BAR ) , 
	.B( S0 ) , 
	.Q( N01754 ) 
 ) ;

NAND21_H U12( 
	.A( N01747 ) , 
	.B( N01754 ) , 
	.Q( N01823 ) 
 ) ;

endmodule


module TEAMK_DECODER_SHI ( B3, B2, B1, B0, B7, B6, B5, B4, NRESET,
CLOCK, DDATA);
output B3;
output B2;
output B1;
output B0;
output B7;
output B6;
output B5;
output B4;
input NRESET;
input CLOCK;
input DDATA;


//    SIGNALS

wire N02154;
wire N02158;
wire N02162;
wire N02166;
wire N02170;
wire N02174;
wire N02178;
wire N02182;

// GATE INSTANCES


DFC1_H U1( 
	.C( CLOCK ) , 
	.D( DDATA ) , 
	.Q( B7 ) , 
	.QN( N02154 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( CLOCK ) , 
	.D( B7 ) , 
	.Q( B6 ) , 
	.QN( N02158 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U3( 
	.C( CLOCK ) , 
	.D( B6 ) , 
	.Q( B5 ) , 
	.QN( N02162 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U4( 
	.C( CLOCK ) , 
	.D( B5 ) , 
	.Q( B4 ) , 
	.QN( N02166 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U5( 
	.C( CLOCK ) , 
	.D( B4 ) , 
	.Q( B3 ) , 
	.QN( N02182 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U6( 
	.C( CLOCK ) , 
	.D( B3 ) , 
	.Q( B2 ) , 
	.QN( N02178 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U7( 
	.C( CLOCK ) , 
	.D( B2 ) , 
	.Q( B1 ) , 
	.QN( N02174 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U8( 
	.C( CLOCK ) , 
	.D( B1 ) , 
	.Q( B0 ) , 
	.QN( N02170 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMK_DECODER_OP ( B1, B3, B5, B7, D0, D1, D2, D3, D_READY,
N_RESET, VALID, ERROR, DVALID, DERROR);
input B1;
input B3;
input B5;
input B7;
output D0;
output D1;
output D2;
output D3;
input D_READY;
input N_RESET;
input VALID;
input ERROR;
output DVALID;
output DERROR;


//    SIGNALS

wire N00724;
wire N00728;
wire N00732;
wire N00736;
wire N154702;
wire N15642;

// GATE INSTANCES


DFC1_H U1( 
	.C( D_READY ) , 
	.D( B1 ) , 
	.Q( D0 ) , 
	.QN( N00728 ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U2( 
	.C( D_READY ) , 
	.D( B3 ) , 
	.Q( D1 ) , 
	.QN( N00724 ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U3( 
	.C( D_READY ) , 
	.D( B5 ) , 
	.Q( D2 ) , 
	.QN( N00732 ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U4( 
	.C( D_READY ) , 
	.D( B7 ) , 
	.Q( D3 ) , 
	.QN( N00736 ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U5( 
	.C( D_READY ) , 
	.D( VALID ) , 
	.Q( DVALID ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U6( 
	.C( D_READY ) , 
	.D( ERROR ) , 
	.Q( N15642 ) , 
	.RN( N_RESET ) 
 ) ;

NAND21_H U21( 
	.A( N15642 ) , 
	.B( D_READY ) , 
	.Q( N154702 ) 
 ) ;

INV1_H U22( 
	.A( N154702 ) , 
	.Q( DERROR ) 
 ) ;

endmodule


module TEAMK_DECODER_JUD ( A, B, C, D, D0, D1, D2, D3, B1, B3,
B5, B7, VALID, ERROR);
input A;
input B;
input C;
input D;
output D0;
output D1;
output D2;
output D3;
input B1;
input B3;
input B5;
input B7;
output VALID;
output ERROR;


//    SIGNALS

wire N007404;
wire N009131;
wire N009491;
wire N01412;
wire N01664;
wire N03472;
wire N05775;
wire N19330;
wire QABAR;
wire QBBAR;
wire QCBAR;

// GATE INSTANCES


INV1_H U13( 
	.A( B1 ) , 
	.Q( N009131 ) 
 ) ;

INV1_H U14( 
	.A( B3 ) , 
	.Q( N009491 ) 
 ) ;

INV1_H U15( 
	.A( B5 ) , 
	.Q( N03472 ) 
 ) ;

INV1_H U16( 
	.A( B7 ) , 
	.Q( N05775 ) 
 ) ;

NAND41_H U17( 
	.A( A ) , 
	.B( B ) , 
	.C( C ) , 
	.D( D ) , 
	.Q( ERROR ) 
 ) ;

NAND21_H U18( 
	.A( D ) , 
	.B( ERROR ) , 
	.Q( VALID ) 
 ) ;

NOR41_H U5( 
	.A( D ) , 
	.B( C ) , 
	.C( B ) , 
	.D( A ) , 
	.Q( N01412 ) 
 ) ;

NOR41_H U6( 
	.A( D ) , 
	.B( C ) , 
	.C( B ) , 
	.D( QABAR ) , 
	.Q( N007404 ) 
 ) ;

INV1_H U21( 
	.A( A ) , 
	.Q( QABAR ) 
 ) ;

NOR41_H U7( 
	.A( D ) , 
	.B( C ) , 
	.C( QBBAR ) , 
	.D( A ) , 
	.Q( N01664 ) 
 ) ;

INV1_H U22( 
	.A( B ) , 
	.Q( QBBAR ) 
 ) ;

NOR41_H U8( 
	.A( D ) , 
	.B( QCBAR ) , 
	.C( B ) , 
	.D( A ) , 
	.Q( N19330 ) 
 ) ;

INV1_H U23( 
	.A( C ) , 
	.Q( QCBAR ) 
 ) ;

MUX21_H U9( 
	.A( B1 ) , 
	.B( N009131 ) , 
	.Q( D0 ) , 
	.S( N01412 ) 
 ) ;

MUX21_H U10( 
	.A( B3 ) , 
	.B( N009491 ) , 
	.Q( D1 ) , 
	.S( N007404 ) 
 ) ;

MUX21_H U11( 
	.A( B5 ) , 
	.B( N03472 ) , 
	.Q( D2 ) , 
	.S( N01664 ) 
 ) ;

MUX21_H U12( 
	.A( B7 ) , 
	.B( N05775 ) , 
	.Q( D3 ) , 
	.S( N19330 ) 
 ) ;

endmodule


module TEAMK_DECODER_IP ( B0, B3, B1, B2, B4, B5, B6, B7, A,
B, C, D);
input B0;
input B3;
input B1;
input B2;
input B4;
input B5;
input B6;
input B7;
output A;
output B;
output C;
output D;


//    SIGNALS

wire N00506;
wire N00513;
wire N00571;
wire N00643;
wire N00650;
wire N00726;
wire N00772;
wire N04161;

// GATE INSTANCES


XOR21_H U1( 
	.A( B0 ) , 
	.B( B5 ) , 
	.Q( N00506 ) 
 ) ;

XOR21_H U2( 
	.A( B1 ) , 
	.B( B7 ) , 
	.Q( N00513 ) 
 ) ;

XOR21_H U3( 
	.A( B2 ) , 
	.B( B3 ) , 
	.Q( N00571 ) 
 ) ;

XOR21_H U4( 
	.A( B1 ) , 
	.B( B3 ) , 
	.Q( N00643 ) 
 ) ;

XOR21_H U5( 
	.A( B4 ) , 
	.B( B5 ) , 
	.Q( N00650 ) 
 ) ;

XOR21_H U6( 
	.A( B6 ) , 
	.B( B7 ) , 
	.Q( N00726 ) 
 ) ;

XOR21_H U7( 
	.A( N00506 ) , 
	.B( N00513 ) , 
	.Q( A ) 
 ) ;

XOR21_H U8( 
	.A( N00571 ) , 
	.B( N00513 ) , 
	.Q( B ) 
 ) ;

XOR21_H U9( 
	.A( N00643 ) , 
	.B( N00650 ) , 
	.Q( C ) 
 ) ;

XOR21_H U10( 
	.A( C ) , 
	.B( N00726 ) , 
	.Q( N00772 ) 
 ) ;

XOR21_H U11( 
	.A( N00772 ) , 
	.B( N04161 ) , 
	.Q( D ) 
 ) ;

XOR21_H U12( 
	.A( B0 ) , 
	.B( B2 ) , 
	.Q( N04161 ) 
 ) ;

endmodule


module TEAMK_DECODER ( D_DATA, N_RESET, CLOCK, DSTROBE, D0, D1,
D2, D3, DVALID, D_ERROR, D_READY);
input D_DATA;
input N_RESET;
input CLOCK;
input DSTROBE;
output D0;
output D1;
output D2;
output D3;
output DVALID;
output D_ERROR;
output D_READY;


//    SIGNALS

wire N00183;
wire N00209;
wire N00213;
wire N00217;
wire N00221;
wire N00225;
wire N00229;
wire N00233;
wire N00382;
wire N02211;
wire N02219;
wire N02225;
wire N07303;
wire N07307;
wire N07311;
wire N07315;
wire N07319;
wire N07323;

// GATE INSTANCES


TEAMK_DECODER_JUD JUD ( 
	.A( N00382 ) , 
	.B( N02211 ) , 
	.C( N02219 ) , 
	.D( N02225 ) , 
	.D0( N07303 ) , 
	.D1( N07307 ) , 
	.D2( N07311 ) , 
	.D3( N07315 ) , 
	.B1( N00209 ) , 
	.B3( N00217 ) , 
	.B5( N00225 ) , 
	.B7( N00233 ) , 
	.VALID( N07319 ) , 
	.ERROR( N07323 ) 
 ) ;

TEAMK_DECODER_IP IP ( 
	.B0( N00183 ) , 
	.B3( N00217 ) , 
	.B1( N00209 ) , 
	.B2( N00213 ) , 
	.B4( N00221 ) , 
	.B5( N00225 ) , 
	.B6( N00229 ) , 
	.B7( N00233 ) , 
	.A( N00382 ) , 
	.B( N02211 ) , 
	.C( N02219 ) , 
	.D( N02225 ) 
 ) ;

TEAMK_DECODER_SHI SHIFTREG ( 
	.B3( N00217 ) , 
	.B2( N00213 ) , 
	.B1( N00209 ) , 
	.B0( N00183 ) , 
	.B7( N00233 ) , 
	.B6( N00229 ) , 
	.B5( N00225 ) , 
	.B4( N00221 ) , 
	.NRESET( N_RESET ) , 
	.CLOCK( CLOCK ) , 
	.DDATA( D_DATA ) 
 ) ;

TEAMK_DECODER_SEQ SEQ ( 
	.DSTROBE( DSTROBE ) , 
	.D_READY( D_READY ) , 
	.CLOCK( CLOCK ) , 
	.N_RESET( N_RESET ) 
 ) ;

TEAMK_DECODER_OP OUT ( 
	.B1( N07303 ) , 
	.B3( N07307 ) , 
	.B5( N07311 ) , 
	.B7( N07315 ) , 
	.D0( D0 ) , 
	.D1( D1 ) , 
	.D2( D2 ) , 
	.D3( D3 ) , 
	.D_READY( D_READY ) , 
	.N_RESET( N_RESET ) , 
	.VALID( N07319 ) , 
	.ERROR( N07323 ) , 
	.DVALID( DVALID ) , 
	.DERROR( D_ERROR ) 
 ) ;

endmodule


module TEAMK_HALFADDER ( A, B, SUM, CARRY);
input A;
input B;
output SUM;
output CARRY;


//    SIGNALS

wire N00523;

// GATE INSTANCES


INV1_H U1( 
	.A( N00523 ) , 
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
	.Q( N00523 ) 
 ) ;

endmodule


module TEAMK_FULLADDER ( A, B, CARRYIN, CARRYOUT, SUM);
input A;
input B;
input CARRYIN;
output CARRYOUT;
output SUM;


//    SIGNALS

wire N00215;
wire N00325;
wire N00348;
wire N01286;

// GATE INSTANCES


NOR21_H U1( 
	.A( N00215 ) , 
	.B( N00325 ) , 
	.Q( N01286 ) 
 ) ;

INV1_H U3( 
	.A( N01286 ) , 
	.Q( CARRYOUT ) 
 ) ;

TEAMK_HALFADDER HALFADDER ( 
	.A( A ) , 
	.B( B ) , 
	.SUM( N00348 ) , 
	.CARRY( N00215 ) 
 ) ;

TEAMK_HALFADDER HALFADDER1 ( 
	.A( N00348 ) , 
	.B( CARRYIN ) , 
	.SUM( SUM ) , 
	.CARRY( N00325 ) 
 ) ;

endmodule


module TEAMK_ADDER ( CARRYIN, X0, Y0, X1, Y1, X2, Y2, X3, Y3,
XY0, XY1, XY2, XY3, CARRYOUT);
input CARRYIN;
input X0;
input Y0;
input X1;
input Y1;
input X2;
input Y2;
input X3;
input Y3;
output XY0;
output XY1;
output XY2;
output XY3;
output CARRYOUT;


//    SIGNALS

wire N00475;
wire N00532;
wire N00582;

// GATE INSTANCES


TEAMK_FULLADDER FULLADDER ( 
	.A( X0 ) , 
	.B( Y0 ) , 
	.CARRYIN( CARRYIN ) , 
	.CARRYOUT( N00475 ) , 
	.SUM( XY0 ) 
 ) ;

TEAMK_FULLADDER FULLADDER1 ( 
	.A( X1 ) , 
	.B( Y1 ) , 
	.CARRYIN( N00475 ) , 
	.CARRYOUT( N00532 ) , 
	.SUM( XY1 ) 
 ) ;

TEAMK_FULLADDER FULLADDER2 ( 
	.A( X2 ) , 
	.B( Y2 ) , 
	.CARRYIN( N00532 ) , 
	.CARRYOUT( N00582 ) , 
	.SUM( XY2 ) 
 ) ;

TEAMK_FULLADDER FULLADDER3 ( 
	.A( X3 ) , 
	.B( Y3 ) , 
	.CARRYIN( N00582 ) , 
	.CARRYOUT( CARRYOUT ) , 
	.SUM( XY3 ) 
 ) ;

endmodule


module TEAMK_RINGOSCILLATOR ( NRESET, ENABLE, OSCOUT);
input NRESET;
input ENABLE;
output OSCOUT;


//    SIGNALS

wire N11456;
wire N11469;
wire N11473;
wire N11477;
wire N11485;
wire N11492;
wire N11496;
wire N11500;
wire N11504;
wire N11508;
wire N11548;
wire N11637;
wire N11655;
wire N11673;
wire N11691;
wire N11709;
wire N11727;
wire N11745;
wire N11757;
wire N11772;
wire N11787;
wire N11802;

// GATE INSTANCES


DFC1_H U45( 
	.C( N11772 ) , 
	.D( N11691 ) , 
	.Q( N11787 ) , 
	.QN( N11691 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U46( 
	.C( N11787 ) , 
	.D( N11709 ) , 
	.Q( N11802 ) , 
	.QN( N11709 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U47( 
	.C( N11802 ) , 
	.D( N11727 ) , 
	.Q( OSCOUT ) , 
	.QN( N11727 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( N11508 ) , 
	.D( N11637 ) , 
	.Q( N11745 ) , 
	.QN( N11637 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U4( 
	.A( ENABLE ) , 
	.B( N11508 ) , 
	.Q( N11456 ) 
 ) ;

NAND21_H U5( 
	.A( ENABLE ) , 
	.B( N11456 ) , 
	.Q( N11469 ) 
 ) ;

NAND21_H U6( 
	.A( ENABLE ) , 
	.B( N11469 ) , 
	.Q( N11473 ) 
 ) ;

NAND21_H U7( 
	.A( ENABLE ) , 
	.B( N11473 ) , 
	.Q( N11477 ) 
 ) ;

NAND21_H U8( 
	.A( ENABLE ) , 
	.B( N11477 ) , 
	.Q( N11548 ) 
 ) ;

NAND21_H U9( 
	.A( ENABLE ) , 
	.B( N11548 ) , 
	.Q( N11485 ) 
 ) ;

INV1_H U38( 
	.A( N11485 ) , 
	.Q( N11492 ) 
 ) ;

INV1_H U39( 
	.A( N11492 ) , 
	.Q( N11496 ) 
 ) ;

INV1_H U40( 
	.A( N11496 ) , 
	.Q( N11500 ) 
 ) ;

INV1_H U41( 
	.A( N11500 ) , 
	.Q( N11504 ) 
 ) ;

INV1_H U42( 
	.A( N11504 ) , 
	.Q( N11508 ) 
 ) ;

DFC1_H U43( 
	.C( N11745 ) , 
	.D( N11655 ) , 
	.Q( N11757 ) , 
	.QN( N11655 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U44( 
	.C( N11757 ) , 
	.D( N11673 ) , 
	.Q( N11772 ) , 
	.QN( N11673 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMK_MUX ( B0, B1, B2, B3, B4, B5, B6, B7, S0, S1, S2,
CLOCK, NRESET, EDATA, ENABLE);
input B0;
input B1;
input B2;
input B3;
input B4;
input B5;
input B6;
input B7;
input S0;
input S1;
input S2;
input CLOCK;
input NRESET;
output EDATA;
input ENABLE;


//    SIGNALS

wire N001772;
wire N00405;
wire N00412;
wire N00419;
wire N00426;
wire N00489;
wire N00496;
wire N04815;
wire N04929;

// GATE INSTANCES


MUX21_H U1( 
	.A( B0 ) , 
	.B( B1 ) , 
	.Q( N00419 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U2( 
	.A( B2 ) , 
	.B( B3 ) , 
	.Q( N00426 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U3( 
	.A( B4 ) , 
	.B( B5 ) , 
	.Q( N00405 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U4( 
	.A( B6 ) , 
	.B( B7 ) , 
	.Q( N00412 ) , 
	.S( S0 ) 
 ) ;

MUX21_H U5( 
	.A( N00419 ) , 
	.B( N00426 ) , 
	.Q( N00489 ) , 
	.S( S1 ) 
 ) ;

MUX21_H U6( 
	.A( N00405 ) , 
	.B( N00412 ) , 
	.Q( N00496 ) , 
	.S( S1 ) 
 ) ;

MUX21_H U7( 
	.A( N00489 ) , 
	.B( N00496 ) , 
	.Q( N001772 ) , 
	.S( S2 ) 
 ) ;

DFC1_H U8( 
	.C( CLOCK ) , 
	.D( N04815 ) , 
	.Q( EDATA ) , 
	.RN( NRESET ) 
 ) ;

NOR21_H U9( 
	.A( N04929 ) , 
	.B( ENABLE ) , 
	.Q( N04815 ) 
 ) ;

INV1_H U10( 
	.A( N001772 ) , 
	.Q( N04929 ) 
 ) ;

endmodule


module TEAMK_ENCODER_SEQ ( CLOCK, ESTART, S2, S1, S0, NRESET,
ENABLE, ESTROBE);
input CLOCK;
input ESTART;
output S2;
output S1;
output S0;
input NRESET;
output ENABLE;
output ESTROBE;


//    SIGNALS

wire N11710;
wire N11732;
wire N11736;
wire N12034;
wire N12490;
wire N12917;
wire N12924;
wire N12928;
wire N12935;
wire S0BAR;
wire S1BAR;
wire S2BAR;

// GATE INSTANCES


NAND21_H U14( 
	.A( S2 ) , 
	.B( S0BAR ) , 
	.Q( N11732 ) 
 ) ;

NAND21_H U15( 
	.A( S0BAR ) , 
	.B( S1 ) , 
	.Q( N11736 ) 
 ) ;

NOR31_H U16( 
	.A( S0BAR ) , 
	.B( S1 ) , 
	.C( S2 ) , 
	.Q( ESTROBE ) 
 ) ;

NAND21_H U17( 
	.A( ESTART ) , 
	.B( S0BAR ) , 
	.Q( N11710 ) 
 ) ;

NAND31_H U2( 
	.A( N11710 ) , 
	.B( N11732 ) , 
	.C( N11736 ) , 
	.Q( N12034 ) 
 ) ;

XOR21_H U6( 
	.A( S0 ) , 
	.B( S1 ) , 
	.Q( N12490 ) 
 ) ;

NAND31_H U7( 
	.A( N12917 ) , 
	.B( N12924 ) , 
	.C( N12928 ) , 
	.Q( N12935 ) 
 ) ;

NAND31_H U8( 
	.A( S2BAR ) , 
	.B( S1 ) , 
	.C( S0 ) , 
	.Q( N12917 ) 
 ) ;

NAND21_H U9( 
	.A( S2 ) , 
	.B( S1BAR ) , 
	.Q( N12924 ) 
 ) ;

DFC1_H F0( 
	.C( CLOCK ) , 
	.D( N12034 ) , 
	.Q( S0 ) , 
	.QN( S0BAR ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H F1( 
	.C( CLOCK ) , 
	.D( N12490 ) , 
	.Q( S1 ) , 
	.QN( S1BAR ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H F2( 
	.C( CLOCK ) , 
	.D( N12935 ) , 
	.Q( S2 ) , 
	.QN( S2BAR ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U10( 
	.A( S2 ) , 
	.B( S0BAR ) , 
	.Q( N12928 ) 
 ) ;

NOR41_H U11( 
	.A( ESTART ) , 
	.B( S2 ) , 
	.C( S1 ) , 
	.D( S0 ) , 
	.Q( ENABLE ) 
 ) ;

endmodule


module TEAMK_ENCODER_IP ( D0, D1, D2, D3, B0, B1, B2, B3, B4,
B5, B6, B7);
input D0;
input D1;
input D2;
input D3;
output B0;
output B1;
output B2;
output B3;
output B4;
output B5;
output B6;
output B7;


//    SIGNALS

wire N00382;
wire N00416;
wire N00701;

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

XOR21_H U1( 
	.A( N00382 ) , 
	.B( B3 ) , 
	.Q( N00701 ) 
 ) ;

XOR21_H U2( 
	.A( B5 ) , 
	.B( B7 ) , 
	.Q( N00416 ) 
 ) ;

XOR21_H U3( 
	.A( N00382 ) , 
	.B( N00416 ) , 
	.Q( B0 ) 
 ) ;

XOR21_H U4( 
	.A( B3 ) , 
	.B( N00416 ) , 
	.Q( B6 ) 
 ) ;

XOR21_H U5( 
	.A( B5 ) , 
	.B( N00701 ) , 
	.Q( B4 ) 
 ) ;

XOR21_H U6( 
	.A( B7 ) , 
	.B( N00701 ) , 
	.Q( B2 ) 
 ) ;

INV1_H U7( 
	.A( B1 ) , 
	.Q( N00382 ) 
 ) ;

endmodule


module TEAMK_ENCODER ( EDATA, ESTROBE, D0, D1, D2, D3, CLOCK,
ESTART, NRESET);
output EDATA;
output ESTROBE;
input D0;
input D1;
input D2;
input D3;
input CLOCK;
input ESTART;
input NRESET;


//    SIGNALS

wire N00095;
wire N00099;
wire N00103;
wire N00107;
wire N00111;
wire N00115;
wire N00119;
wire N00123;
wire N00127;
wire N00131;
wire N00135;
wire N05978;

// GATE INSTANCES


TEAMK_ENCODER_SEQ SEQN ( 
	.CLOCK( CLOCK ) , 
	.ESTART( ESTART ) , 
	.S2( N00095 ) , 
	.S1( N00099 ) , 
	.S0( N00103 ) , 
	.NRESET( NRESET ) , 
	.ENABLE( N05978 ) , 
	.ESTROBE( ESTROBE ) 
 ) ;

TEAMK_ENCODER_IP ENCODER_IP ( 
	.D0( D0 ) , 
	.D1( D1 ) , 
	.D2( D2 ) , 
	.D3( D3 ) , 
	.B0( N00107 ) , 
	.B1( N00111 ) , 
	.B2( N00115 ) , 
	.B3( N00119 ) , 
	.B4( N00123 ) , 
	.B5( N00127 ) , 
	.B6( N00131 ) , 
	.B7( N00135 ) 
 ) ;

TEAMK_MUX MUXN ( 
	.B0( N00107 ) , 
	.B1( N00111 ) , 
	.B2( N00115 ) , 
	.B3( N00119 ) , 
	.B4( N00123 ) , 
	.B5( N00127 ) , 
	.B6( N00131 ) , 
	.B7( N00135 ) , 
	.S0( N00103 ) , 
	.S1( N00099 ) , 
	.S2( N00095 ) , 
	.CLOCK( CLOCK ) , 
	.NRESET( NRESET ) , 
	.EDATA( EDATA ) , 
	.ENABLE( N05978 ) 
 ) ;

endmodule


module TEAMK_SEQUENCE ( DATAIN, NRESET, MATCHALL, CLOCK);
input DATAIN;
input NRESET;
output MATCHALL;
input CLOCK;


//    SIGNALS

wire D;
wire DBAR;
wire N05601;
wire N06292;
wire N06304;
wire N06320;
wire N06469;
wire N06556;
wire N06797;
wire N07030;
wire N07195;
wire N09757;
wire N29811;
wire N32515;
wire N32524;
wire N32746;
wire N32933;
wire S0;
wire S0BAR;
wire S1;
wire S1BAR;
wire S2;
wire S2BAR;

// GATE INSTANCES


NOR41_H U15( 
	.A( S0BAR ) , 
	.B( S1BAR ) , 
	.C( S2BAR ) , 
	.D( DBAR ) , 
	.Q( MATCHALL ) 
 ) ;

DFC1_H U16( 
	.C( CLOCK ) , 
	.D( DATAIN ) , 
	.Q( D ) , 
	.QN( DBAR ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U18( 
	.A( S0BAR ) , 
	.B( D ) , 
	.Q( N32515 ) 
 ) ;

NAND21_H U19( 
	.A( S1 ) , 
	.B( D ) , 
	.Q( N32524 ) 
 ) ;

NAND41_H U2( 
	.A( N06797 ) , 
	.B( N09757 ) , 
	.C( N07195 ) , 
	.D( N06469 ) , 
	.Q( N07030 ) 
 ) ;

NAND41_H U3( 
	.A( N06320 ) , 
	.B( N06556 ) , 
	.C( N06304 ) , 
	.D( N06292 ) , 
	.Q( N05601 ) 
 ) ;

NAND41_H U4( 
	.A( S0 ) , 
	.B( S1 ) , 
	.C( S2BAR ) , 
	.D( DBAR ) , 
	.Q( N06292 ) 
 ) ;

NAND41_H U5( 
	.A( S0BAR ) , 
	.B( S1BAR ) , 
	.C( S2 ) , 
	.D( D ) , 
	.Q( N06304 ) 
 ) ;

NAND31_H U21( 
	.A( S2 ) , 
	.B( S1 ) , 
	.C( S0BAR ) , 
	.Q( N32933 ) 
 ) ;

NAND41_H U6( 
	.A( S0 ) , 
	.B( S1BAR ) , 
	.C( S2 ) , 
	.D( DBAR ) , 
	.Q( N06556 ) 
 ) ;

NAND31_H U22( 
	.A( N32933 ) , 
	.B( N32524 ) , 
	.C( N32515 ) , 
	.Q( N32746 ) 
 ) ;

NAND41_H U7( 
	.A( S0BAR ) , 
	.B( S1 ) , 
	.C( S2 ) , 
	.D( DBAR ) , 
	.Q( N06320 ) 
 ) ;

NAND31_H U23( 
	.A( S0 ) , 
	.B( S1BAR ) , 
	.C( S2 ) , 
	.Q( N06469 ) 
 ) ;

NAND41_H U9( 
	.A( S0BAR ) , 
	.B( S1 ) , 
	.C( S2 ) , 
	.D( DBAR ) , 
	.Q( N07195 ) 
 ) ;

DFC1_H D0( 
	.C( CLOCK ) , 
	.D( N32746 ) , 
	.Q( S0 ) , 
	.QN( S0BAR ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H D1( 
	.C( CLOCK ) , 
	.D( N07030 ) , 
	.Q( S1 ) , 
	.QN( S1BAR ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H D2( 
	.C( CLOCK ) , 
	.D( N05601 ) , 
	.Q( S2 ) , 
	.QN( S2BAR ) , 
	.RN( NRESET ) 
 ) ;

NAND31_H U10( 
	.A( S0 ) , 
	.B( S2BAR ) , 
	.C( D ) , 
	.Q( N09757 ) 
 ) ;

NAND31_H U11( 
	.A( S1 ) , 
	.B( S2BAR ) , 
	.C( D ) , 
	.Q( N06797 ) 
 ) ;

endmodule


module TEAMK_DESIGN ( A2, A1, Q1, A3, A4, A5, A6, A7, A8, A9,
A10, A11, Q3, Q4, Q5, Q6, Q7, A12, Q12, Q22, Q23, A0, Q0, Q18, Q17,
Q21, Q20, Q19, Q15, Q16);
input A2;
input A1;
output Q1;
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
input A12;
output Q15;
output Q16;
output Q12;
output Q22;
output Q23;
input A0;
output Q0;
output Q18;
output Q17;
output Q21;
output Q20;
output Q19;


//    SIGNALS


// GATE INSTANCES


INV1_H U1( 
	.A( A0 ) , 
	.Q( Q0 ) 
 ) ;

TEAMK_RINGOSCILLATOR RINGOSC ( 
	.NRESET( A1 ) , 
	.ENABLE( A2 ) , 
	.OSCOUT( Q1 ) 
 ) ;

TEAMK_ENCODER ENCODER ( 
	.EDATA( Q16 ) , 
	.ESTROBE( Q15 ) , 
	.D0( A4 ) , 
	.D1( A5 ) , 
	.D2( A6 ) , 
	.D3( A7 ) , 
	.CLOCK( A12 ) , 
	.ESTART( A3 ) , 
	.NRESET( A1 ) 
 ) ;

TEAMK_ADDER ADDER ( 
	.CARRYIN( A3 ) , 
	.X0( A4 ) , 
	.Y0( A8 ) , 
	.X1( A5 ) , 
	.Y1( A9 ) , 
	.X2( A6 ) , 
	.Y2( A10 ) , 
	.X3( A7 ) , 
	.Y3( A11 ) , 
	.XY0( Q3 ) , 
	.XY1( Q4 ) , 
	.XY2( Q5 ) , 
	.XY3( Q6 ) , 
	.CARRYOUT( Q7 ) 
 ) ;

TEAMK_SEQUENCE SEQ ( 
	.DATAIN( A3 ) , 
	.NRESET( A1 ) , 
	.MATCHALL( Q12 ) , 
	.CLOCK( A12 ) 
 ) ;

TEAMK_DECODER DECODER ( 
	.D_DATA( A9 ) , 
	.N_RESET( A1 ) , 
	.CLOCK( A12 ) , 
	.DSTROBE( A8 ) , 
	.D0( Q18 ) , 
	.D1( Q19 ) , 
	.D2( Q20 ) , 
	.D3( Q21 ) , 
	.DVALID( Q22 ) , 
	.D_ERROR( Q23 ) , 
	.D_READY( Q17 ) 
 ) ;

endmodule

