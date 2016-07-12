* Circuit Extracted by Tanner Research's L-Edit Version 15.23 / Extract Version 15.23 ;
* TDB File:  H:\Labs\D2\Layout\teamj_library1.tdb
* Cell:  TEAMJ_ENCODER_SM_SIM	Version 1.12
* Extract Definition File:  d2.ext
* Extract Date and Time:  10/10/2014 - 16:10

* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (59.9, -6.5) to (65.5, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (59.9, -6.5) to (65.5, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (52.9, -6.5) to (59.9, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (52.9, -6.5) to (59.9, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (29.1, -6.5) to (52.9, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (29.1, -6.5) to (52.9, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (5.3, -6.5) to (29.1, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (5.3, -6.5) to (29.1, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-18.5, -6.5) to (5.3, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-18.5, -6.5) to (5.3, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-24.1, -6.5) to (-18.5, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-24.1, -6.5) to (-18.5, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-43.7, -6.5) to (-39.5, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-43.7, -6.5) to (-39.5, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-29.7, -6.5) to (-24.1, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-29.7, -6.5) to (-24.1, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-35.3, -6.5) to (-29.7, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-35.3, -6.5) to (-29.7, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-39.5, -6.5) to (-35.3, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-39.5, -6.5) to (-35.3, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-47.9, -6.5) to (-43.7, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-47.9, -6.5) to (-43.7, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-52.1, -6.5) to (-47.9, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-52.1, -6.5) to (-47.9, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-56.3, -6.5) to (-52.1, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-56.3, -6.5) to (-52.1, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-60.5, -6.5) to (-56.3, 6.5)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-60.5, -6.5) to (-56.3, 6.5)
.SUBCKT TEAMJ_ENCODER_SM_SIM CLK eStart eStrobe GND nOUT_ nQ1 nQ2 nRESET Q0 Q1 Q2 VDD 
* NODE NAME ALIASES
*       1 = VDD (-60.5 , 4.7)
*       2 = GND (-60.5 , -6.5)
*       8 = CLK (-18.1 , 14.5)
*       8 = U3/CLK (-18.1 , 14.5)
*       9 = nRESET (-9.7 , 14.5)
*       9 = U3/nRESET (-9.7 , 14.5)
*       10 = Q0 (-41.9 , -13.5)
*       10 = U3/Q0 (-41.9 , -13.5)
*       12 = Q1 (-54.5 , -13.5)
*       12 = U3/Q1 (-54.5 , -13.5)
*       13 = nQ1 (28.1 , 14.5)
*       13 = U3/nQ1 (28.1 , 14.5)
*       14 = Q2 (49.1 , 14.5)
*       14 = U3/Q2 (49.1 , 14.5)
*       15 = nQ2 (51.9 , -13.5)
*       15 = U3/nQ2 (51.9 , -13.5)
*       17 = eStart (-60.1 , 14.5)
*       17 = U3/eStart (-60.1 , 14.5)
*       21 = eStrobe (64.5 , 14.5)
*       21 = U3/eStrobe (64.5 , 14.5)
*       22 = nOUT_ (58.9 , 14.5)
*       22 = U3/nOUT_ (58.9 , 14.5)


X1 11 Q1 Q2 GND eStrobe VDD NOR31_H    ; (59.9 -6.5 65.5 6.5)
X2 eStart Q0 Q1 Q2 GND nOUT_ VDD NOR41_H    ; (52.9 -6.5 59.9 6.5)
X3 CLK 7 GND Q2 nQ2 nRESET VDD DFC1_H    ; (29.1 -6.5 52.9 6.5)
X4 CLK 18 GND Q1 nQ1 nRESET VDD DFC1_H    ; (5.3 -6.5 29.1 6.5)
X5 CLK 6 GND Q0 11 nRESET VDD DFC1_H    ; (-18.5 -6.5 5.3 6.5)
X6 5 4 3 GND 6 VDD NAND31_H    ; (-24.1 -6.5 -18.5 6.5)
X7 Q0 nQ1 GND 19 VDD NAND21_H    ; (-43.7 -6.5 -39.5 6.5)
X8 5 16 20 GND 7 VDD NAND31_H    ; (-29.7 -6.5 -24.1 6.5)
X9 nQ2 Q0 Q1 GND 20 VDD NAND31_H    ; (-35.3 -6.5 -29.7 6.5)
X10 4 19 GND 18 VDD NAND21_H    ; (-39.5 -6.5 -35.3 6.5)
X11 nQ1 Q2 GND 16 VDD NAND21_H    ; (-47.9 -6.5 -43.7 6.5)
X12 Q2 11 GND 5 VDD NAND21_H    ; (-52.1 -6.5 -47.9 6.5)
X13 Q1 11 GND 4 VDD NAND21_H    ; (-56.3 -6.5 -52.1 6.5)
X14 11 eStart GND 3 VDD NAND21_H    ; (-60.5 -6.5 -56.3 6.5)

* Total Nodes: 22
* Total Elements: 14
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 0.770 sec
.ENDS
