* Circuit Extracted by Tanner Research's L-Edit Version 15.23 / Extract Version 15.23 ;
* TDB File:  H:\Labs\D2\Layout\teamj_library1.tdb
* Cell:  TEAMJ_SHIFTREGISTER_SIM	Version 1.10
* Extract Definition File:  d2.ext
* Extract Date and Time:  10/08/2014 - 22:22

* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (71.4, -6.3) to (95.2, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (71.4, -6.3) to (95.2, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (47.6, -6.3) to (71.4, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (47.6, -6.3) to (71.4, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (23.8, -6.3) to (47.6, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (23.8, -6.3) to (47.6, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (0, -6.3) to (23.8, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (0, -6.3) to (23.8, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-23.8, -6.3) to (0, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-23.8, -6.3) to (0, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-47.6, -6.3) to (-23.8, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-47.6, -6.3) to (-23.8, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-71.4, -6.3) to (-47.6, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-71.4, -6.3) to (-47.6, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: allsubs at (-95.2, -6.3) to (-71.4, 6.7)
* Warning: Subcircuit Recognition found Overlap with Derived layer: subs at (-95.2, -6.3) to (-71.4, 6.7)
.SUBCKT TEAMJ_SHIFTREGISTER_SIM CLK D GND nRESET Q0 Q1 Q2 Q3 Q4 Q5 Q6 Q7 VDD 
* NODE NAME ALIASES
*       1 = VDD (95.2 , 4.9)
*       1 = U79/VDD (95.2 , 4.9)
*       3 = GND (95.2 , -6.3)
*       3 = U79/GND (95.2 , -6.3)
*       11 = nRESET (-86.4 , 9)
*       11 = U79/nRESET (-86.4 , 9)
*       12 = CLK (-94.8 , 9)
*       12 = U79/CLK (-94.8 , 9)
*       13 = Q7 (-75.2 , -8.5)
*       13 = U79/Q7 (-75.2 , -8.5)
*       14 = Q6 (-51.4 , -8.5)
*       14 = U79/Q6 (-51.4 , -8.5)
*       15 = Q5 (-27.6 , -8.5)
*       15 = U79/Q5 (-27.6 , -8.5)
*       16 = Q4 (-3.8 , -8.5)
*       16 = U79/Q4 (-3.8 , -8.5)
*       17 = Q3 (20 , -8.5)
*       17 = U79/Q3 (20 , -8.5)
*       18 = Q2 (43.8 , -8.5)
*       18 = U79/Q2 (43.8 , -8.5)
*       19 = Q1 (67.6 , -8.5)
*       19 = U79/Q1 (67.6 , -8.5)
*       20 = Q0 (91.4 , -8.5)
*       20 = U79/Q0 (91.4 , -8.5)
*       21 = D (-90.6 , 9)
*       21 = U79/D (-90.6 , 9)


X1 CLK Q1 GND Q0 2 nRESET VDD DFC1_H    ; (71.4 -6.3 95.2 6.7)
X2 CLK Q2 GND Q1 4 nRESET VDD DFC1_H    ; (47.6 -6.3 71.4 6.7)
X3 CLK Q3 GND Q2 5 nRESET VDD DFC1_H    ; (23.8 -6.3 47.6 6.7)
X4 CLK Q4 GND Q3 6 nRESET VDD DFC1_H    ; (0 -6.3 23.8 6.7)
X5 CLK Q5 GND Q4 7 nRESET VDD DFC1_H    ; (-23.8 -6.3 0 6.7)
X6 CLK Q6 GND Q5 8 nRESET VDD DFC1_H    ; (-47.6 -6.3 -23.8 6.7)
X7 CLK Q7 GND Q6 9 nRESET VDD DFC1_H    ; (-71.4 -6.3 -47.6 6.7)
X8 CLK D GND Q7 10 nRESET VDD DFC1_H    ; (-95.2 -6.3 -71.4 6.7)

* Total Nodes: 21
* Total Elements: 8
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 0.980 sec
.ENDS
