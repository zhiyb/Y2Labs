/////////////////////////////////////////////////////////////////////
// Design unit: lift_testmodule
//            :
// File name  : lift_testmodule.v
//            :
// Description: simulation model of toy lift to test the lift controller
//            : DO NOT attempt to synthesise this model!!!
//            : The position of the bottom of the lift is given by its height above the ground,
//            : in units between 0 and 89. The lift is assumed to be 10 units high.
//            : The top switch is at 99, the bottom switch at 0, middle_plus at 53,
//            : middle_minus at 47. The initial position of the lift is random.
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

module lift_testmodule (output logic top, middle_plus, middle_minus, bottom, call0, call1, call2,
             input direction, enable);

  timeunit 1ns;
  timeprecision 100ps;
  int height = {$random}%90; // initial lift height, random number 0..89
  const int top_ht = 99;
  const int bottom_ht = 0;
  const int mid_p_ht = 54;
  const int mid_m_ht = 45;
  const int lift_ht = 9;
  int seed;

 // this block simulates the lift position 
 // it changes the lift's height every 1us according to the motor control signals 
 // (enable and direction) 
 //
always 
  begin
  if (!enable) // motor enabled, move lift according to direction
    if (!direction && height > bottom_ht)
      height = height - 1; // move lift down
    else if (direction && height < (top_ht - lift_ht))
      height = height + 1; // move lift up by one unit

  // deassert all lift sensor signals	  
  bottom = 1;
  top = 1;
  middle_minus = 1;
  middle_plus = 1;
  
  // assert sensor signals according to lift height
  if (height == bottom_ht)
    bottom = 0;
  if ((height + lift_ht) == top_ht)
    top = 0;
  if (height <= mid_m_ht && (height + lift_ht) >= mid_m_ht)
    middle_minus = 0;
  if (height <= mid_p_ht && (height + lift_ht) >= mid_p_ht)
    middle_plus = 0;
  #1us; // wait 1us
end 

// this block asserts call signals randomly
always begin
  case({$random} % 3) //assert a call signal at random
   0:  call0 = 0;
   1:  call1 = 0;
   2:  call2 = 0;
  endcase
  #($dist_exponential(seed, 1000)); // wait on average 1000 time units 
                                    // wait time is random with exp distribution
  call0 = 1;  // cancel all calls
  call1 = 1;
  call2 = 1;
  #($dist_exponential(seed, 5000)); // wait on average 5000 time units 
                                    //with exp distribution
end

endmodule
