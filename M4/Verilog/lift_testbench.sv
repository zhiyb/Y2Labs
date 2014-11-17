/////////////////////////////////////////////////////////////////////
// Design unit: lift_testbench
//            :
// File name  : lift_testbench.sv
//            :
// Description: testbench for toy lift 
//            : DO NOT attempt to synthesise this model!!!
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
// Revision   : Version 2.0 23/11/09  - modified by tjk for Altera DE0 boards
/////////////////////////////////////////////////////////////////////

timeunit 1ns;
timeprecision 100ps;

module test_lift;
  
logic clock, n_reset, top, middle_plus, middle_minus, bottom, call0, call1, call2, direction, enable, indicator0, indicator1, indicator2;
logic led[9:0]; // LEDs are used to display information about lift controller's behaviour

initial  // 50MHz clock 
 begin
    clock = '0;
    forever #10ns clock = ~clock;
 end

initial // re
  begin
          n_reset = '0; // assert reset
    #5ns  n_reset = '1; // cancel reset before 1st clock tick
  end

 lift_testmodule tester (.*); // defines waveforms for lift input signals
  
 lift_controller c0 (.*); // lift controller hardware - synthesisable module


endmodule

