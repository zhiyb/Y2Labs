/////////////////////////////////////////////////////////////////////
// Design unit: lift_controller
//            :
// File name  : lift_controller.sv
//            :
// Description: lift controller
//            :
// Limitations: None
//            : 
// System     : SystemVerilog IEEE 1800-2005
//            :
// Author     : Mark Zwolinski
//            : School of Electronics and Computer Science
//            : University of Southampton
//            : Southampton SO17 1BJ, UK
//            : mz@ecs.soton.ac.uk
//
// Revision   : Version 2.0 23/11/09 - modified by tjk for Altera DE0 Educational Board 
/////////////////////////////////////////////////////////////////////

timeunit 1ns;
timeprecision 100ps;

module lift_controller (input logic clock, n_reset, top, middle_plus, middle_minus, bottom, call0, call1, call2, 
  output logic direction, enable, indicator0, indicator1, indicator2,
  output logic led[9:0] // LEDs are used to display information about lift controller's behaviour
 );

  // SystemVerilog enumerated type for state machine states
  enum {to0, floor0, floor1, floor2, downto1, upto1, to2} state;
  

always_ff @( posedge clock,
            negedge n_reset) // always_ff means that this block is synthesised to flip-flops
  begin: seq                 // note that this block also contains next state logic
    if (~n_reset) 
      state <= to0; //use non-blocking assignments for registered signals
    else
      case (state)
       floor0: 
        if (!call1)
	  state <= upto1;
        else if (!call2)
	  state <= to2;

      floor1: 
        if (!call0)
          state <= to0;
        else if (!call2)
          state <= to2;

      floor2: 
          if (!call0)
           state <= to0;
        else if (!call1)
           state <= downto1;

      upto1: 
        if (!middle_minus && !middle_plus)
          state <= floor1;
	  
      downto1: 
        if (!middle_minus && !middle_plus)
          state <= floor1;

      to0: 
        if (!bottom)
          state <= floor0;

      to2: 
        if (!top)
          state <= floor2;
          
      default:
        state <= to0;

    endcase
  end

always_comb	   // always_comb - combinational logic for output signals; implicit sensitivity list
  begin: com
    // use blocking assignments for combinatorial signals
    direction = '0; // 0 is down 
    indicator0 = '1; // active low
    indicator1 = '1; // active low
    indicator2 = '1; // active low  
    enable = '1;
	
	// leds are used to display information about the controller's operation
	led[0] = (state == floor0);
	led[1] = (state == floor1);
	led[2] = (state == floor2);
	led[3] = (state == to0);  // response to call0
	led[4] = (state == downto1);  // response to call1 if on floor2
	led[5] = (state == upto1);  // response to call1 if on floor0
	led[6] = (state == to2);  // response to call2
	led[7] =  top | middle_plus; // LEDs 7 and 8 show where the lift is:
    led[8] =  top | middle_minus; // 00-bottom, 01-mid-, 10-mid+, 11-top
	led[9] = ~n_reset; // this led lights up if reset is active
 
    case (state)
       upto1: 
        if (middle_minus || middle_plus)
          begin
            enable = '0;
	        direction = '1;
	        indicator1 = '0;
          end
      downto1: 
        if (middle_minus || middle_plus)
          begin
            enable = '0;
	        direction = '0;
	        indicator1 = '0;
          end
      to0: 
        if (bottom)
          begin
            enable = '0;
	        direction = '0;
	        indicator0 = '0;
          end
      to2: 
        if (top)
          begin
            enable = '0;
	        direction = '1;
	        indicator2 = '0;
          end
      default: ;

    endcase
  end


endmodule
