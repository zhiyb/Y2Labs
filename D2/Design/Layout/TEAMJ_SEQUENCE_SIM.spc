* Circuit Extracted by Tanner Research's L-Edit Version 15.23 / Extract Version 15.23 ;
* TDB File:  H:\Labs\D2\Layout\teamj_library1.tdb
* Cell:  TEAMJ_SEQUENCE_SIM	Version 1.07
* Extract Definition File:  d2.ext
* Extract Date and Time:  10/10/2014 - 23:01

* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-42.4, 3.3) to (-39.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-42.4, 3.3) to (-39.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (41.6, 3.3) to (48.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (41.6, 3.3) to (48.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (27.6, 3.3) to (34.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (27.6, 3.3) to (34.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (6.6, 3.3) to (13.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (6.6, 3.3) to (13.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (20.6, 3.3) to (27.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (20.6, 3.3) to (27.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-39.6, 3.3) to (-32.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-39.6, 3.3) to (-32.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (34.6, 3.3) to (41.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (34.6, 3.3) to (41.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (13.6, 3.3) to (20.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (13.6, 3.3) to (20.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-10.2, 3.3) to (-4.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-10.2, 3.3) to (-4.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-15.8, 3.3) to (-10.2, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-15.8, 3.3) to (-10.2, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-4.6, 3.3) to (1, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-4.6, 3.3) to (1, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (1, 3.3) to (6.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (1, 3.3) to (6.6, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-21.4, 3.3) to (-15.8, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-21.4, 3.3) to (-15.8, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-27, 3.3) to (-21.4, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-27, 3.3) to (-21.4, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-32.6, 3.3) to (-27, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-32.6, 3.3) to (-27, 16.3)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-20.2, -22.15) to (3.6, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-20.2, -22.15) to (3.6, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (3.6, -22.15) to (27.4, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (3.6, -22.15) to (27.4, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (27.4, -22.15) to (51.2, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (27.4, -22.15) to (51.2, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-44, -22.15) to (-20.2, -9.15)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-44, -22.15) to (-20.2, -9.15)
.SUBCKT TEAMJ_SEQUENCE_SIM Clock DataIn GND MatchAll nReset VDD 
* NODE NAME ALIASES
*       2 = GND (-44 , -22.15)
*       3 = VDD (-44 , -10.95)
*       9 = DataIn (-44 , 18.2)
*       9 = U189/D (-42 , 17.2)
*       18 = Clock (-44 , -7.3)
*       18 = U189/CLK (-43.6 , -8.3)
*       19 = nReset (-35.2 , -25.8)
*       19 = U189/nReset (-35.2 , -25.8)
*       22 = MatchAll (47.4 , -25.8)
*       22 = U189/MATCH (47.4 , -23.3)


X1 DataIn GND 17 VDD INV1_H    ; (-42.4 3.3 -39.6 16.3)
X2 17 13 12 16 GND 24 VDD NOR41_H    ; (41.6 3.3 48.6 16.3)
X3 DataIn 12 10 14 GND 27 VDD NAND41_H    ; (27.6 3.3 34.6 16.3)
X4 28 8 27 7 GND 25 VDD NAND41_H    ; (6.6 3.3 13.6 16.3)
X5 14 12 13 17 GND 8 VDD NAND41_H    ; (20.6 3.3 27.6 16.3)
X6 6 5 20 4 GND 26 VDD NAND41_H    ; (-39.6 3.3 -32.6 16.3)
X7 16 11 10 17 GND 7 VDD NAND41_H    ; (34.6 3.3 41.6 16.3)
X8 14 11 13 17 GND 28 VDD NAND41_H    ; (13.6 3.3 20.6 16.3)
X9 16 11 DataIn GND 4 VDD NAND31_H    ; (-10.2 3.3 -4.6 16.3)
X10 14 11 13 GND 21 VDD NAND31_H    ; (-15.8 3.3 -10.2 16.3)
X11 12 10 DataIn GND 23 VDD NAND31_H    ; (-4.6 3.3 1 16.3)
X12 4 21 23 GND 15 VDD NAND31_H    ; (1 3.3 6.6 16.3)
X13 14 13 17 GND 6 VDD NAND31_H    ; (-21.4 3.3 -15.8 16.3)
X14 DataIn 13 12 GND 5 VDD NAND31_H    ; (-27 3.3 -21.4 16.3)
X15 11 10 DataIn GND 20 VDD NAND31_H    ; (-32.6 3.3 -27 16.3)
X16 Clock 15 GND 11 12 nReset VDD DFC1_H    ; (-20.2 -22.15 3.6 -9.15)
X17 Clock 25 GND 14 16 nReset VDD DFC1_H    ; (3.6 -22.15 27.4 -9.15)
X18 Clock 24 GND MatchAll 1 nReset VDD DFC1_H    ; (27.4 -22.15 51.2 -9.15)
X19 Clock 26 GND 10 13 nReset VDD DFC1_H    ; (-44 -22.15 -20.2 -9.15)

* Total Nodes: 28
* Total Elements: 19
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.230 sec
.ENDS
