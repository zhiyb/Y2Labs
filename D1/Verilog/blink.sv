// blink.sv 

//////////////////////// LED Blinker in SystemVerilog Using On-Chip Osc /////////////////////////////
//***********************************************************************
// Version 1.0 21 Oct 2013 Tom Kazmierski
// Based on Lattice example blinking_led.v

////	The default frequency is 2.08MHz.  Supported frequencies (in MHz) include:
////	2.08        4.16         8.31          15.65
////	2.15        4.29         8.58          16.63
////	2.22        4.43         8.87          17.73
////	2.29        4.59         9.17          19.00
////	2.38        4.75         9.50          20.46
////	2.46        4.93         9.85          22.17
////	2.56        5.12        10.23         24.18
////	2.66        5.32        10.64         26.60
////	2.77        5.54        11.08         29.56
////	2.89        5.78        11.57         33.25
////	3.02        6.05        12.09         38.00
////	3.17        6.33        12.67         44.33
////	3.33        6.65        13.30         53.20
////	3.50        7.00        14.00         66.50
////	3.69        7.39        14.78         88.67
////	3.91        7.82        15.65       133.00


module blink( output logic [7:0] LED);
//// ---------------- internal constants --------------
	parameter 		N= 28;	// sets counter size
////---------------- internal variables ---------------
	logic [N-1 : 0] 	count;
	logic             osc_clk;
//// ------------------------------------------------------


//// Internal Oscillator
	defparam OSCH_inst.NOM_FREQ = "3.33";
	OSCH OSCH_inst
		( 
		.STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
		.OSC(osc_clk),
		.SEDSTDBY()     		// this signal is not required if not using SED
		);


//// counter with no flag control
	always_ff @ (posedge osc_clk)
		count <= count + 1;
		
//// connect the top 8 bits of the counter to the leds
   assign LED = count[N-1:N-8];
   
endmodule			
			
			
			
