* Circuit Extracted by Tanner Research's L-Edit Version 15.23 / Extract Version 15.23 ;
* TDB File:  H:\Labs\D2\Layout\teamj_library1.tdb
* Cell:  TEAMJ_DECODER_SM_SIM	Version 1.09
* Extract Definition File:  d2.ext
* Extract Date and Time:  10/10/2014 - 16:18

* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (54, -7.5) to (77.8, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (54, -7.5) to (77.8, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (30.2, -7.5) to (54, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (30.2, -7.5) to (54, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (6.4, -7.5) to (30.2, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (6.4, -7.5) to (30.2, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-17.4, -7.5) to (6.4, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-17.4, -7.5) to (6.4, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-23, -7.5) to (-17.4, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-23, -7.5) to (-17.4, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-28.6, -7.5) to (-23, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-28.6, -7.5) to (-23, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-34.2, -7.5) to (-28.6, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-34.2, -7.5) to (-28.6, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-39.8, -7.5) to (-34.2, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-39.8, -7.5) to (-34.2, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-44, -7.5) to (-39.8, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-44, -7.5) to (-39.8, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-48.2, -7.5) to (-44, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-48.2, -7.5) to (-44, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-52.4, -7.5) to (-48.2, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-52.4, -7.5) to (-48.2, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-56.6, -7.5) to (-52.4, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-56.6, -7.5) to (-52.4, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-60.8, -7.5) to (-56.6, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-60.8, -7.5) to (-56.6, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-65, -7.5) to (-60.8, 5.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-65, -7.5) to (-60.8, 5.5)
.SUBCKT TEAMJ_DECODER_SM_SIM CLK dReady dReady_ dStrobe GND nReset VDD 
* NODE NAME ALIASES
*       1 = VDD (-65 , 3.7)
*       1 = U170/VDD (77.8 , 3.7)
*       3 = GND (-65 , -7.5)
*       3 = U170/GND (77.8 , -7.5)
*       13 = dReady_ (58.6 , 13.5)
*       13 = U170/dReady_ (58.6 , 8)
*       14 = nReset (-8.6 , 13.5)
*       14 = U170/nReset (-8.6 , 9.5)
*       15 = CLK (-17 , 13.5)
*       15 = U170/CLK (-17 , 13)
*       22 = dStrobe (-64.6 , 13.5)
*       22 = U170/dStrobe (-64.6 , 6.5)
*       23 = dReady (74 , -15.5)
*       23 = U170/dReady (74 , -8.5)


X1 CLK dReady_ GND dReady 2 nReset VDD DFC1_H    ; (54 -7.5 77.8 5.5)
X2 CLK 12 GND 20 21 nReset VDD DFC1_H    ; (30.2 -7.5 54 5.5)
X3 CLK 10 GND 18 19 nReset VDD DFC1_H    ; (6.4 -7.5 30.2 5.5)
X4 CLK 11 GND 16 17 nReset VDD DFC1_H    ; (-17.4 -7.5 6.4 5.5)
X5 17 19 21 GND dReady_ VDD NOR31_H    ; (-23 -7.5 -17.4 5.5)
X6 9 8 6 GND 12 VDD NAND31_H    ; (-28.6 -7.5 -23 5.5)
X7 6 5 4 GND 11 VDD NAND31_H    ; (-34.2 -7.5 -28.6 5.5)
X8 21 16 18 GND 9 VDD NAND31_H    ; (-39.8 -7.5 -34.2 5.5)
X9 7 5 GND 10 VDD NAND21_H    ; (-44 -7.5 -39.8 5.5)
X10 19 20 GND 8 VDD NAND21_H    ; (-48.2 -7.5 -44 5.5)
X11 16 19 GND 7 VDD NAND21_H    ; (-52.4 -7.5 -48.2 5.5)
X12 20 17 GND 6 VDD NAND21_H    ; (-56.6 -7.5 -52.4 5.5)
X13 18 17 GND 5 VDD NAND21_H    ; (-60.8 -7.5 -56.6 5.5)
X14 17 dStrobe GND 4 VDD NAND21_H    ; (-65 -7.5 -60.8 5.5)

* Total Nodes: 23
* Total Elements: 14
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.210 sec
.ENDS
