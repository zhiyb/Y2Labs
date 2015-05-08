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

module TEAMJ_RINGOSCILLATOR ( OUT, ENABLE, NRESET);
output OUT;
input ENABLE;
input NRESET;


//    SIGNALS

wire N19431;
wire N19707;
wire N19721;
wire N19757;
wire N19787;
wire N19807;
wire N19821;
wire N19827;
wire N19833;
wire N19897;
wire N19913;
wire N19929;
wire N19945;
wire N19961;
wire N19977;
wire N20049;
wire N20061;
wire N20073;
wire N20085;
wire N20113;
wire N22331;
wire OSC;

// GATE INSTANCES


DFC1_H U13( 
	.C( N20049 ) , 
	.D( N19913 ) , 
	.Q( N20061 ) , 
	.QN( N19913 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U14( 
	.C( N20061 ) , 
	.D( N19929 ) , 
	.Q( N20073 ) , 
	.QN( N19929 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U15( 
	.C( N20073 ) , 
	.D( N19945 ) , 
	.Q( N20085 ) , 
	.QN( N19945 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U16( 
	.C( N20085 ) , 
	.D( N19961 ) , 
	.Q( N20113 ) , 
	.QN( N19961 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U17( 
	.C( N20113 ) , 
	.D( N19977 ) , 
	.Q( OUT ) , 
	.QN( N19977 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U18( 
	.A( OSC ) , 
	.B( ENABLE ) , 
	.Q( N19707 ) 
 ) ;

INV1_H U8( 
	.A( N19807 ) , 
	.Q( N19821 ) 
 ) ;

INV1_H U9( 
	.A( N19821 ) , 
	.Q( N19827 ) 
 ) ;

NAND31_H U24( 
	.A( N19757 ) , 
	.B( N19757 ) , 
	.C( N19757 ) , 
	.Q( N19787 ) 
 ) ;

NAND31_H U25( 
	.A( N19431 ) , 
	.B( N19431 ) , 
	.C( N19431 ) , 
	.Q( N19757 ) 
 ) ;

NAND31_H U26( 
	.A( N19721 ) , 
	.B( N19721 ) , 
	.C( N19721 ) , 
	.Q( N19431 ) 
 ) ;

NAND31_H U27( 
	.A( N19707 ) , 
	.B( N19707 ) , 
	.C( N19707 ) , 
	.Q( N19721 ) 
 ) ;

NAND21_H U28( 
	.A( N19787 ) , 
	.B( N19787 ) , 
	.Q( N22331 ) 
 ) ;

NAND21_H U29( 
	.A( N22331 ) , 
	.B( N22331 ) , 
	.Q( N19807 ) 
 ) ;

INV1_H U10( 
	.A( N19827 ) , 
	.Q( N19833 ) 
 ) ;

INV1_H U11( 
	.A( N19833 ) , 
	.Q( OSC ) 
 ) ;

DFC1_H U12( 
	.C( OSC ) , 
	.D( N19897 ) , 
	.Q( N20049 ) , 
	.QN( N19897 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMJ_FULLADDER ( A, B, CIN, S, COUT);
input A;
input B;
input CIN;
output S;
output COUT;


//    SIGNALS

wire N00221;
wire N00389;
wire N004452;

// GATE INSTANCES


XOR21_H U1( 
	.A( A ) , 
	.B( B ) , 
	.Q( N00221 ) 
 ) ;

XOR21_H U2( 
	.A( N00221 ) , 
	.B( CIN ) , 
	.Q( S ) 
 ) ;

NAND21_H U3( 
	.A( N004452 ) , 
	.B( N00389 ) , 
	.Q( COUT ) 
 ) ;

NAND21_H U4( 
	.A( A ) , 
	.B( B ) , 
	.Q( N00389 ) 
 ) ;

NAND21_H U5( 
	.A( N00221 ) , 
	.B( CIN ) , 
	.Q( N004452 ) 
 ) ;

endmodule


module TEAMJ_4BITADDER ( A0, A1, A2, A3, B0, B1, B2, B3, CIN,
S0, S1, S2, S3, COUT);
input A0;
input A1;
input A2;
input A3;
input B0;
input B1;
input B2;
input B3;
input CIN;
output S0;
output S1;
output S2;
output S3;
output COUT;


//    SIGNALS

wire N00139;
wire N00164;
wire N00189;

// GATE INSTANCES


TEAMJ_FULLADDER FA0 ( 
	.A( A0 ) , 
	.B( B0 ) , 
	.CIN( CIN ) , 
	.S( S0 ) , 
	.COUT( N00139 ) 
 ) ;

TEAMJ_FULLADDER FA1 ( 
	.A( A1 ) , 
	.B( B1 ) , 
	.CIN( N00139 ) , 
	.S( S1 ) , 
	.COUT( N00164 ) 
 ) ;

TEAMJ_FULLADDER FA2 ( 
	.A( A2 ) , 
	.B( B2 ) , 
	.CIN( N00164 ) , 
	.S( S2 ) , 
	.COUT( N00189 ) 
 ) ;

TEAMJ_FULLADDER FA3 ( 
	.A( A3 ) , 
	.B( B3 ) , 
	.CIN( N00189 ) , 
	.S( S3 ) , 
	.COUT( COUT ) 
 ) ;

endmodule


module TEAMJ_ENCODER_SM ( ESTART, CLK, NRESET, NOUT_, Q0, Q1,
Q2, NQ1, NQ2, ESTROBE);
input ESTART;
input CLK;
input NRESET;
output NOUT_;
output Q0;
output Q1;
output Q2;
output NQ1;
output NQ2;
output ESTROBE;


//    SIGNALS

wire N02702;
wire N02706;
wire N02748;
wire N03046;
wire N03286;
wire N03292;
wire NQ0;
wire Q0_;
wire Q1_;
wire Q2_;

// GATE INSTANCES


NAND31_H U13( 
	.A( N02748 ) , 
	.B( N03292 ) , 
	.C( N03046 ) , 
	.Q( Q2_ ) 
 ) ;

NAND31_H U14( 
	.A( Q1 ) , 
	.B( Q0 ) , 
	.C( NQ2 ) , 
	.Q( N03046 ) 
 ) ;

NOR31_H U16( 
	.A( Q2 ) , 
	.B( Q1 ) , 
	.C( NQ0 ) , 
	.Q( ESTROBE ) 
 ) ;

NOR41_H U17( 
	.A( Q2 ) , 
	.B( Q1 ) , 
	.C( Q0 ) , 
	.D( ESTART ) , 
	.Q( NOUT_ ) 
 ) ;

DFC1_H U1( 
	.C( CLK ) , 
	.D( Q0_ ) , 
	.Q( Q0 ) , 
	.QN( NQ0 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( CLK ) , 
	.D( Q1_ ) , 
	.Q( Q1 ) , 
	.QN( NQ1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( Q2_ ) , 
	.Q( Q2 ) , 
	.QN( NQ2 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U5( 
	.A( ESTART ) , 
	.B( NQ0 ) , 
	.Q( N02706 ) 
 ) ;

NAND21_H U6( 
	.A( NQ0 ) , 
	.B( Q1 ) , 
	.Q( N02702 ) 
 ) ;

NAND21_H U7( 
	.A( NQ0 ) , 
	.B( Q2 ) , 
	.Q( N02748 ) 
 ) ;

NAND31_H U8( 
	.A( N02706 ) , 
	.B( N02702 ) , 
	.C( N02748 ) , 
	.Q( Q0_ ) 
 ) ;

NAND21_H U9( 
	.A( NQ1 ) , 
	.B( Q0 ) , 
	.Q( N03286 ) 
 ) ;

NAND21_H U10( 
	.A( N02702 ) , 
	.B( N03286 ) , 
	.Q( Q1_ ) 
 ) ;

NAND21_H U11( 
	.A( Q2 ) , 
	.B( NQ1 ) , 
	.Q( N03292 ) 
 ) ;

endmodule


module TEAMJ_ENCODER_ALU ( EDATA, ED0, ED1, ED2, ED3, S0, S1,
S2, NS1, NS2);
output EDATA;
input ED0;
input ED1;
input ED2;
input ED3;
input S0;
input S1;
input S2;
input NS1;
input NS2;


//    SIGNALS

wire N00161;
wire N00165;
wire N00429;
wire N00480;
wire N00484;
wire N00510;
wire N00520;
wire N00926;
wire N02364;
wire N02596;
wire N028931;
wire NED0;

// GATE INSTANCES


INV1_H U13( 
	.A( ED0 ) , 
	.Q( NED0 ) 
 ) ;

MUX21_H U1( 
	.A( N02596 ) , 
	.B( N02364 ) , 
	.Q( EDATA ) , 
	.S( S0 ) 
 ) ;

MUX21_H U2( 
	.A( N00161 ) , 
	.B( N00165 ) , 
	.Q( N02364 ) , 
	.S( S2 ) 
 ) ;

MUX21_H U3( 
	.A( ED0 ) , 
	.B( ED1 ) , 
	.Q( N00161 ) , 
	.S( S1 ) 
 ) ;

MUX21_H U4( 
	.A( ED2 ) , 
	.B( ED3 ) , 
	.Q( N00165 ) , 
	.S( S1 ) 
 ) ;

XOR21_H U5( 
	.A( N00510 ) , 
	.B( N00520 ) , 
	.Q( N02596 ) 
 ) ;

XOR21_H U6( 
	.A( N00926 ) , 
	.B( N028931 ) , 
	.Q( N00510 ) 
 ) ;

MUX21_H U7( 
	.A( ED1 ) , 
	.B( NED0 ) , 
	.Q( N00926 ) , 
	.S( N00429 ) 
 ) ;

MUX21_H U8( 
	.A( ED1 ) , 
	.B( ED2 ) , 
	.Q( N028931 ) , 
	.S( N00480 ) 
 ) ;

MUX21_H U9( 
	.A( ED1 ) , 
	.B( ED3 ) , 
	.Q( N00520 ) , 
	.S( N00484 ) 
 ) ;

NAND21_H U10( 
	.A( S2 ) , 
	.B( S1 ) , 
	.Q( N00429 ) 
 ) ;

NAND21_H U11( 
	.A( NS2 ) , 
	.B( S1 ) , 
	.Q( N00480 ) 
 ) ;

NAND21_H U12( 
	.A( S2 ) , 
	.B( NS1 ) , 
	.Q( N00484 ) 
 ) ;

endmodule


module TEAMJ_ENCODER ( EDATA, ED0, ED1, ED2, ED3, ESTART, CLK,
NRESET, ESTROBE);
output EDATA;
input ED0;
input ED1;
input ED2;
input ED3;
input ESTART;
input CLK;
input NRESET;
output ESTROBE;


//    SIGNALS

wire N00295;
wire N07392;
wire N07396;
wire N07400;
wire N07404;
wire N07408;
wire N075291;
wire N075292;
wire N075590;

// GATE INSTANCES


DFC1_H U1( 
	.C( CLK ) , 
	.D( N075292 ) , 
	.Q( EDATA ) , 
	.RN( NRESET ) 
 ) ;

INV1_H U3( 
	.A( N075590 ) , 
	.Q( N075291 ) 
 ) ;

NOR21_H U4( 
	.A( N00295 ) , 
	.B( N075291 ) , 
	.Q( N075292 ) 
 ) ;

TEAMJ_ENCODER_SM SM0 ( 
	.ESTART( ESTART ) , 
	.CLK( CLK ) , 
	.NRESET( NRESET ) , 
	.NOUT_( N00295 ) , 
	.Q0( N07392 ) , 
	.Q1( N07396 ) , 
	.Q2( N07400 ) , 
	.NQ1( N07404 ) , 
	.NQ2( N07408 ) , 
	.ESTROBE( ESTROBE ) 
 ) ;

TEAMJ_ENCODER_ALU ALU0 ( 
	.EDATA( N075590 ) , 
	.ED0( ED0 ) , 
	.ED1( ED1 ) , 
	.ED2( ED2 ) , 
	.ED3( ED3 ) , 
	.S0( N07392 ) , 
	.S1( N07396 ) , 
	.S2( N07400 ) , 
	.NS1( N07404 ) , 
	.NS2( N07408 ) 
 ) ;

endmodule


module TEAMJ_SEQUENCE ( D, CLK, NRESET, MATCH);
input D;
input CLK;
input NRESET;
output MATCH;


//    SIGNALS

wire MATCH_;
wire N02578;
wire N03583;
wire N03595;
wire N23125;
wire N24908;
wire N25508;
wire N25512;
wire N25519;
wire N26456;
wire N26462;
wire N26516;
wire ND;
wire NS0;
wire NS1;
wire NS2;
wire S0;
wire S0_;
wire S1;
wire S1_;
wire S2;
wire S2_;

// GATE INSTANCES


NAND41_H U13( 
	.A( N24908 ) , 
	.B( N02578 ) , 
	.C( N03583 ) , 
	.D( N03595 ) , 
	.Q( S2_ ) 
 ) ;

NOR41_H U45( 
	.A( ND ) , 
	.B( NS0 ) , 
	.C( NS1 ) , 
	.D( NS2 ) , 
	.Q( MATCH_ ) 
 ) ;

NAND41_H U46( 
	.A( ND ) , 
	.B( NS0 ) , 
	.C( S1 ) , 
	.D( S2 ) , 
	.Q( N24908 ) 
 ) ;

NAND31_H U47( 
	.A( D ) , 
	.B( S0 ) , 
	.C( NS1 ) , 
	.Q( N25519 ) 
 ) ;

NAND31_H U48( 
	.A( D ) , 
	.B( S1 ) , 
	.C( NS2 ) , 
	.Q( N25508 ) 
 ) ;

NAND31_H U49( 
	.A( NS0 ) , 
	.B( S1 ) , 
	.C( S2 ) , 
	.Q( N25512 ) 
 ) ;

DFC1_H U1( 
	.C( CLK ) , 
	.D( S0_ ) , 
	.Q( S0 ) , 
	.QN( NS0 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( CLK ) , 
	.D( S1_ ) , 
	.Q( S1 ) , 
	.QN( NS1 ) , 
	.RN( NRESET ) 
 ) ;

NAND31_H U50( 
	.A( N25512 ) , 
	.B( N25508 ) , 
	.C( N25519 ) , 
	.Q( S1_ ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( S2_ ) , 
	.Q( S2 ) , 
	.QN( NS2 ) , 
	.RN( NRESET ) 
 ) ;

NAND31_H U51( 
	.A( ND ) , 
	.B( NS0 ) , 
	.C( S2 ) , 
	.Q( N26516 ) 
 ) ;

NAND31_H U52( 
	.A( NS1 ) , 
	.B( NS0 ) , 
	.C( D ) , 
	.Q( N26456 ) 
 ) ;

NAND31_H U53( 
	.A( D ) , 
	.B( S0 ) , 
	.C( S1 ) , 
	.Q( N26462 ) 
 ) ;

NAND41_H U54( 
	.A( N26462 ) , 
	.B( N26456 ) , 
	.C( N26516 ) , 
	.D( N25508 ) , 
	.Q( S0_ ) 
 ) ;

INV1_H U55( 
	.A( D ) , 
	.Q( ND ) 
 ) ;

NAND41_H U31( 
	.A( ND ) , 
	.B( NS0 ) , 
	.C( NS1 ) , 
	.D( S2 ) , 
	.Q( N02578 ) 
 ) ;

NAND41_H U32( 
	.A( S2 ) , 
	.B( S0 ) , 
	.C( NS1 ) , 
	.D( D ) , 
	.Q( N03583 ) 
 ) ;

NAND41_H U33( 
	.A( ND ) , 
	.B( S0 ) , 
	.C( S1 ) , 
	.D( NS2 ) , 
	.Q( N03595 ) 
 ) ;

DFC1_H U41( 
	.C( CLK ) , 
	.D( MATCH_ ) , 
	.Q( MATCH ) , 
	.QN( N23125 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMJ_BUFFER ( DATA, UPDATE, NRESET, Q);
input DATA;
input UPDATE;
input NRESET;
output Q;


//    SIGNALS


// GATE INSTANCES


DFC1_H U1( 
	.C( UPDATE ) , 
	.D( DATA ) , 
	.Q( Q ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMJ_SHIFTER ( D, CLK, NRESET, Q0, Q1, Q2, Q3, Q4, Q5,
Q6, Q7);
input D;
input CLK;
input NRESET;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;


//    SIGNALS


// GATE INSTANCES

wire D;
wire Q7;
alias_bit alias_bit1 (Q7, D);

DFC1_H U2( 
	.C( CLK ) , 
	.D( D ) , 
	.Q( Q6 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( Q6 ) , 
	.Q( Q5 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U4( 
	.C( CLK ) , 
	.D( Q5 ) , 
	.Q( Q4 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U5( 
	.C( CLK ) , 
	.D( Q4 ) , 
	.Q( Q3 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U6( 
	.C( CLK ) , 
	.D( Q3 ) , 
	.Q( Q2 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U7( 
	.C( CLK ) , 
	.D( Q2 ) , 
	.Q( Q1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U8( 
	.C( CLK ) , 
	.D( Q1 ) , 
	.Q( Q0 ) , 
	.RN( NRESET ) 
 ) ;

endmodule


module TEAMJ_DECODER_ALU ( D0, D1, D2, D3, D4, D5, D6, D7, Q0,
Q1, Q2, Q3, QA, QB, QC, QD, DERROR, DVALID);
input D0;
input D1;
input D2;
input D3;
input D4;
input D5;
input D6;
input D7;
output Q0;
output Q1;
output Q2;
output Q3;
output QA;
output QB;
output QC;
output QD;
output DERROR;
output DVALID;


//    SIGNALS

wire N04561;
wire N04565;
wire N04587;
wire N04591;
wire N04595;
wire N04617;
wire N04709;
wire N04835;

// GATE INSTANCES

wire D1;
wire Q0;
alias_bit alias_bit1 (Q0, D1);
wire D3;
wire Q1;
alias_bit alias_bit2 (Q1, D3);
wire D5;
wire Q2;
alias_bit alias_bit3 (Q2, D5);
wire D7;
wire Q3;
alias_bit alias_bit4 (Q3, D7);

XOR21_H U30( 
	.A( D0 ) , 
	.B( D6 ) , 
	.Q( N04595 ) 
 ) ;

XOR21_H U31( 
	.A( D2 ) , 
	.B( D3 ) , 
	.Q( N04591 ) 
 ) ;

XOR21_H U32( 
	.A( N04595 ) , 
	.B( N04591 ) , 
	.Q( N04561 ) 
 ) ;

XOR21_H U33( 
	.A( N04587 ) , 
	.B( N04617 ) , 
	.Q( N04565 ) 
 ) ;

XOR21_H U34( 
	.A( N04561 ) , 
	.B( N04565 ) , 
	.Q( QD ) 
 ) ;

XOR21_H U35( 
	.A( D1 ) , 
	.B( D7 ) , 
	.Q( N04617 ) 
 ) ;

XOR21_H U36( 
	.A( N04617 ) , 
	.B( N04709 ) , 
	.Q( QA ) 
 ) ;

XOR21_H U37( 
	.A( D4 ) , 
	.B( D5 ) , 
	.Q( N04587 ) 
 ) ;

XOR21_H U38( 
	.A( D5 ) , 
	.B( D0 ) , 
	.Q( N04709 ) 
 ) ;

XOR21_H U39( 
	.A( N04617 ) , 
	.B( N04591 ) , 
	.Q( QB ) 
 ) ;

XOR21_H U40( 
	.A( N04587 ) , 
	.B( N04835 ) , 
	.Q( QC ) 
 ) ;

XOR21_H U41( 
	.A( D1 ) , 
	.B( D3 ) , 
	.Q( N04835 ) 
 ) ;

NAND41_H U42( 
	.A( QA ) , 
	.B( QB ) , 
	.C( QC ) , 
	.D( QD ) , 
	.Q( DERROR ) 
 ) ;

NAND21_H U44( 
	.A( DERROR ) , 
	.B( QD ) , 
	.Q( DVALID ) 
 ) ;

endmodule


module TEAMJ_DECODER_CORRECTOR ( Q0, Q1, Q2, Q3, DERROR, DVALID,
D0, D1, D2, D3, D4, D5, D6, D7);
output Q0;
output Q1;
output Q2;
output Q3;
output DERROR;
output DVALID;
input D0;
input D1;
input D2;
input D3;
input D4;
input D5;
input D6;
input D7;


//    SIGNALS

wire AQ0;
wire AQ1;
wire AQ2;
wire AQ3;
wire AQA;
wire AQB;
wire AQC;
wire AQD;
wire N00839;
wire N06208;
wire N06238;
wire N06258;
wire NAQA;
wire NAQB;
wire NAQC;

// GATE INSTANCES


XOR21_H U1( 
	.A( AQ0 ) , 
	.B( N06208 ) , 
	.Q( Q0 ) 
 ) ;

XOR21_H U2( 
	.A( AQ1 ) , 
	.B( N06238 ) , 
	.Q( Q1 ) 
 ) ;

XOR21_H U3( 
	.A( AQ2 ) , 
	.B( N06258 ) , 
	.Q( Q2 ) 
 ) ;

XOR21_H U4( 
	.A( AQ3 ) , 
	.B( N00839 ) , 
	.Q( Q3 ) 
 ) ;

NOR41_H U5( 
	.A( AQA ) , 
	.B( AQB ) , 
	.C( AQC ) , 
	.D( AQD ) , 
	.Q( N06208 ) 
 ) ;

NOR41_H U6( 
	.A( NAQA ) , 
	.B( AQB ) , 
	.C( AQC ) , 
	.D( AQD ) , 
	.Q( N06238 ) 
 ) ;

NOR41_H U7( 
	.A( AQA ) , 
	.B( NAQB ) , 
	.C( AQC ) , 
	.D( AQD ) , 
	.Q( N06258 ) 
 ) ;

NOR41_H U8( 
	.A( AQA ) , 
	.B( AQB ) , 
	.C( NAQC ) , 
	.D( AQD ) , 
	.Q( N00839 ) 
 ) ;

INV1_H U9( 
	.A( AQA ) , 
	.Q( NAQA ) 
 ) ;

INV1_H U10( 
	.A( AQB ) , 
	.Q( NAQB ) 
 ) ;

INV1_H U11( 
	.A( AQC ) , 
	.Q( NAQC ) 
 ) ;

TEAMJ_DECODER_ALU ALU0 ( 
	.D0( D0 ) , 
	.D1( D1 ) , 
	.D2( D2 ) , 
	.D3( D3 ) , 
	.D4( D4 ) , 
	.D5( D5 ) , 
	.D6( D6 ) , 
	.D7( D7 ) , 
	.Q0( AQ0 ) , 
	.Q1( AQ1 ) , 
	.Q2( AQ2 ) , 
	.Q3( AQ3 ) , 
	.QA( AQA ) , 
	.QB( AQB ) , 
	.QC( AQC ) , 
	.QD( AQD ) , 
	.DERROR( DERROR ) , 
	.DVALID( DVALID ) 
 ) ;

endmodule


module TEAMJ_DECODER_SM ( DSTROBE, CLK, NRESET, DREADY);
input DSTROBE;
input CLK;
input NRESET;
output DREADY;


//    SIGNALS

wire DREADY_;
wire N00315;
wire N00319;
wire N00326;
wire N00978;
wire N01413;
wire N01415;
wire NQ0;
wire NQ1;
wire NQ2;
wire Q0;
wire Q0_;
wire Q1;
wire Q1_;
wire Q2;
wire Q2_;

// GATE INSTANCES


NAND31_H U13( 
	.A( N00326 ) , 
	.B( N01415 ) , 
	.C( N00978 ) , 
	.Q( Q2_ ) 
 ) ;

NAND31_H U14( 
	.A( Q1 ) , 
	.B( Q0 ) , 
	.C( NQ2 ) , 
	.Q( N00978 ) 
 ) ;

NOR31_H U15( 
	.A( NQ2 ) , 
	.B( NQ1 ) , 
	.C( NQ0 ) , 
	.Q( DREADY_ ) 
 ) ;

DFC1_H U1( 
	.C( CLK ) , 
	.D( Q0_ ) , 
	.Q( Q0 ) , 
	.QN( NQ0 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U2( 
	.C( CLK ) , 
	.D( Q1_ ) , 
	.Q( Q1 ) , 
	.QN( NQ1 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U3( 
	.C( CLK ) , 
	.D( Q2_ ) , 
	.Q( Q2 ) , 
	.QN( NQ2 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U4( 
	.C( CLK ) , 
	.D( DREADY_ ) , 
	.Q( DREADY ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U5( 
	.A( DSTROBE ) , 
	.B( NQ0 ) , 
	.Q( N00319 ) 
 ) ;

NAND21_H U6( 
	.A( NQ0 ) , 
	.B( Q1 ) , 
	.Q( N00315 ) 
 ) ;

NAND21_H U7( 
	.A( NQ0 ) , 
	.B( Q2 ) , 
	.Q( N00326 ) 
 ) ;

NAND31_H U8( 
	.A( N00319 ) , 
	.B( N00315 ) , 
	.C( N00326 ) , 
	.Q( Q0_ ) 
 ) ;

NAND21_H U9( 
	.A( NQ1 ) , 
	.B( Q0 ) , 
	.Q( N01413 ) 
 ) ;

NAND21_H U10( 
	.A( N00315 ) , 
	.B( N01413 ) , 
	.Q( Q1_ ) 
 ) ;

NAND21_H U11( 
	.A( Q2 ) , 
	.B( NQ1 ) , 
	.Q( N01415 ) 
 ) ;

endmodule


module TEAMJ_DECODER ( DDATA, DSTROBE, CLOCK, NRESET, DREADY,
DD0, DD1, DD2, DD3, DERROR, DVALID);
input DDATA;
input DSTROBE;
input CLOCK;
input NRESET;
output DREADY;
output DD0;
output DD1;
output DD2;
output DD3;
output DERROR;
output DVALID;


//    SIGNALS

wire N00895;
wire N01378;
wire N01380;
wire N01382;
wire N01384;
wire N08542;
wire N08544;
wire N08546;
wire N08548;
wire N08550;
wire N08552;
wire N08554;
wire N08556;
wire N08697;
wire N140622;
wire N14725;

// GATE INSTANCES


NAND21_H U1( 
	.A( N14725 ) , 
	.B( DREADY ) , 
	.Q( N140622 ) 
 ) ;

INV1_H U2( 
	.A( N140622 ) , 
	.Q( DERROR ) 
 ) ;

TEAMJ_DECODER_SM SM0 ( 
	.DSTROBE( DSTROBE ) , 
	.CLK( CLOCK ) , 
	.NRESET( NRESET ) , 
	.DREADY( DREADY ) 
 ) ;

TEAMJ_SHIFTER SHIFTER0 ( 
	.D( DDATA ) , 
	.CLK( CLOCK ) , 
	.NRESET( NRESET ) , 
	.Q0( N08542 ) , 
	.Q1( N08544 ) , 
	.Q2( N08546 ) , 
	.Q3( N08548 ) , 
	.Q4( N08550 ) , 
	.Q5( N08552 ) , 
	.Q6( N08554 ) , 
	.Q7( N08556 ) 
 ) ;

TEAMJ_BUFFER BF0 ( 
	.DATA( N01378 ) , 
	.UPDATE( DREADY ) , 
	.NRESET( NRESET ) , 
	.Q( DD0 ) 
 ) ;

TEAMJ_BUFFER BF1 ( 
	.DATA( N01380 ) , 
	.UPDATE( DREADY ) , 
	.NRESET( NRESET ) , 
	.Q( DD1 ) 
 ) ;

TEAMJ_BUFFER BF2 ( 
	.DATA( N01382 ) , 
	.UPDATE( DREADY ) , 
	.NRESET( NRESET ) , 
	.Q( DD2 ) 
 ) ;

TEAMJ_BUFFER BF3 ( 
	.DATA( N01384 ) , 
	.UPDATE( DREADY ) , 
	.NRESET( NRESET ) , 
	.Q( DD3 ) 
 ) ;

TEAMJ_BUFFER BF4 ( 
	.DATA( N08697 ) , 
	.UPDATE( DREADY ) , 
	.NRESET( NRESET ) , 
	.Q( N14725 ) 
 ) ;

TEAMJ_BUFFER BF5 ( 
	.DATA( N00895 ) , 
	.UPDATE( DREADY ) , 
	.NRESET( NRESET ) , 
	.Q( DVALID ) 
 ) ;

TEAMJ_DECODER_CORRECTOR CORRECTOR0 ( 
	.Q0( N01378 ) , 
	.Q1( N01380 ) , 
	.Q2( N01382 ) , 
	.Q3( N01384 ) , 
	.DERROR( N08697 ) , 
	.DVALID( N00895 ) , 
	.D0( N08542 ) , 
	.D1( N08544 ) , 
	.D2( N08546 ) , 
	.D3( N08548 ) , 
	.D4( N08550 ) , 
	.D5( N08552 ) , 
	.D6( N08554 ) , 
	.D7( N08556 ) 
 ) ;

endmodule


module TEAMJ_DESIGN ( A0, A1, A2, A12, A13, A14, A15, A16, A17,
A18, A19, A20, A21, A22, A23, Q0, Q1, Q3, Q4, Q5, Q6, Q7, A3,
A8, A10, A6, A9, A11, A4, A5, A7, Q15, Q22, Q18, Q12, Q17, Q16,
Q23, Q19, Q21, Q20);
input A0;
input A1;
input A2;
input A12;
input A13;
input A14;
input A15;
input A16;
input A17;
input A18;
input A19;
input A20;
input A21;
input A22;
input A23;
output Q0;
output Q1;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
input A3;
input A8;
input A10;
input A6;
input A9;
input A11;
input A4;
input A5;
input A7;
output Q15;
output Q22;
output Q18;
output Q12;
output Q17;
output Q16;
output Q23;
output Q19;
output Q21;
output Q20;


//    SIGNALS


// GATE INSTANCES


INV1_H U1( 
	.A( A0 ) , 
	.Q( Q0 ) 
 ) ;

TEAMJ_RINGOSCILLATOR OSC0 ( 
	.OUT( Q1 ) , 
	.ENABLE( A2 ) , 
	.NRESET( A1 ) 
 ) ;

TEAMJ_4BITADDER ADDER0 ( 
	.A0( A4 ) , 
	.A1( A5 ) , 
	.A2( A6 ) , 
	.A3( A7 ) , 
	.B0( A8 ) , 
	.B1( A9 ) , 
	.B2( A10 ) , 
	.B3( A11 ) , 
	.CIN( A3 ) , 
	.S0( Q3 ) , 
	.S1( Q4 ) , 
	.S2( Q5 ) , 
	.S3( Q6 ) , 
	.COUT( Q7 ) 
 ) ;

TEAMJ_SEQUENCE SEQ0 ( 
	.D( A14 ) , 
	.CLK( A12 ) , 
	.NRESET( A13 ) , 
	.MATCH( Q12 ) 
 ) ;

TEAMJ_ENCODER ENC0 ( 
	.EDATA( Q16 ) , 
	.ED0( A18 ) , 
	.ED1( A19 ) , 
	.ED2( A20 ) , 
	.ED3( A21 ) , 
	.ESTART( A17 ) , 
	.CLK( A15 ) , 
	.NRESET( A16 ) , 
	.ESTROBE( Q15 ) 
 ) ;

TEAMJ_DECODER DEC0 ( 
	.DDATA( A23 ) , 
	.DSTROBE( A22 ) , 
	.CLOCK( A15 ) , 
	.NRESET( A16 ) , 
	.DREADY( Q17 ) , 
	.DD0( Q18 ) , 
	.DD1( Q19 ) , 
	.DD2( Q20 ) , 
	.DD3( Q21 ) , 
	.DERROR( Q23 ) , 
	.DVALID( Q22 ) 
 ) ;

endmodule

