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
enum logic [2:0] {floor0, floor1, floor2, to0, to1, to2} state;

logic dir;
logic call[3];

logic clear, timeout;
lift_timer #(.t(50000000)) t0 (.*);

// Call handling
always_ff @(posedge clock, negedge n_reset)
  if (~n_reset)
  begin
    call[0] <= 1'b0;
    call[1] <= 1'b0;
    call[2] <= 1'b0;
  end
  else
  begin
    if (state == floor0)
      call[0] <= 1'b0;
    else if (!call0)
      call[0] <= 1'b1;
    if (state == floor1)
      call[1] <= 1'b0;
    else if (!call1)
      call[1] <= 1'b1;
    if (state == floor2)
      call[2] <= 1'b0;
    else if (!call2)
      call[2] <= 1'b1;
  end

// State
// always_ff means that this block is synthesised to flip-flops
always_ff @(posedge clock, negedge n_reset)
begin: seq
  if (~n_reset)
  begin
    state <= to0; //use non-blocking assignments for registered signals
    dir <= 0;
  end
  else
  begin
    case (state)
    floor0:
      if (timeout && (call[1] || call[2]))
      begin
        state <= to1;
        dir <= 1;
      end

    floor1:
      if (timeout)
      begin
        if (dir == 0 && call[0])
          state <= to0;
        else if (dir == 1 && call[2])
          state <= to2;
        else if (call[0])
        begin
          state <= to0;
          dir <= 0;
        end
        else if (call[2])
        begin
          state <= to2;
          dir <= 1;
        end
      end

    floor2:
      if (timeout && (call[0] || call[1]))
      begin
        state <= to1;
        dir <= 0;
      end

    to0:
      if (!bottom)
        state <= floor0;

    to1:
      if (!middle_minus && !middle_plus)
      begin
        if (call[1])
          state <= floor1;
        else if (dir)
          state <= to2;
        else
          state <= to0;
      end

    to2:
      if (!top)
        state <= floor2;

    default:
      state <= to0;

    endcase
  end
end

// Timer handling
always_comb
  if (state == floor0 || state == floor1 || state == floor2)
    clear = 1'b0;
  else
    clear = 1'b1;

// Output signals
always_comb   // always_comb - combinational logic for output signals; implicit sensitivity list
begin: com
  // use blocking assignments for combinatorial signals
  indicator0 = !call[0];
  indicator1 = !call[1];
  indicator2 = !call[2];
  direction = dir;
  enable = '1;

  // leds are used to display information about the controller's operation
  led[0] = (state == floor0);
  led[1] = (state == floor1);
  led[2] = (state == floor2);
  led[3] = (state == to0);  // state to0
  led[4] = (state == to1);  // state to1
  led[5] = (state == to2);  // state to2
  led[6] = 1'b0;
  led[7] = top | middle_plus; // LEDs 7 and 8 show where the lift is:
  led[8] = top | middle_minus; // 00-bottom, 01-mid-, 10-mid+, 11-top
  led[9] = ~n_reset; // this led lights up if reset is active

  case (state)
  to0:
    if (bottom)
      enable = '0;
  to1:
    if (middle_minus || middle_plus)
      enable = '0;
  to2:
    if (top)
      enable = '0;
  default: ;
  endcase
end

endmodule
