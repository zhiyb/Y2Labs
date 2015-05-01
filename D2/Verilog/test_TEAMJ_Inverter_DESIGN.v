// Verilog test bench for D2 chip design

`timescale 1ns/1ps

module test_TEAMJ_Inverter_DESIGN;

// declare DUT input signals as "reg"
// declare DUT output signals as "wire"

reg A0;
wire Q0;
integer errors_Q0;

// declare error count

integer errors;

// instance Device Under Test
//   assumes top-level OrCAD schematic is named "TEAMJ_Inverter_DESIGN"

`ifdef DUT
  `DUT DUT(
`else
  TEAMJ_DESIGN DUT(
`endif
   .A0(A0),
   .Q0(Q0)
);

// monitor the I/O
initial
  begin
    $display( "Simulation Begins" );
    $display ( "  A  Q" );
    $display ( "  0  0" );
    $display ( "      " );
    `ifdef no_monitor
    `else
    $monitor ( "  ",
      A0,
      "  ",
      Q0,
      "  @ %d ns", $time   );
    `endif
  end

// stimulii

initial
  begin
    errors = 0;
    errors_Q0 = 0;
    $display ( "v 0  1");
    apply_vector ( 1'b0,1'b1,
                   1'b1,1'b1);
    $display ( "v 1  0");
    apply_vector ( 1'b1,1'b0,
                   1'b1,1'b1);
    if ( errors == 0 )
      begin
        $display( "Simulation OK" );
        $display( "All vectors passed" );
      end
    else
      begin
        $display( "" );
        $display( "Simulation Failed" );
        $display( "" );
        if (  errors_Q0 > 0 )
          $display ( "       ", errors_Q0, " errors with Q0",) ;
        $display( "" );
        $display( "Total: ", errors, " errors");
        $display( "" );
      end
    $stop;
    $finish;
  end

// function declaration

task apply_vector;

  input [0:0] stimulus_vector;
  input [0:0] expected_vector;
  input [0:0] stimulus_mask;
  input [0:0] expected_mask;

  begin
    `ifdef set_x_to_0
      {A0} = stimulus_vector & stimulus_mask ;
    `else
      {A0} = stimulus_vector;
    `endif
    #500
    check_vector( expected_vector, expected_mask );
    #500
    $display("");
  end

endtask
task check_vector;

  input [0:0] expected_vector;
  input [0:0] mask_vector;

  reg [0:0] received_vector;
  reg [0:0] difference_vector;

  integer local_errors;

  begin
    local_errors = 0;
    received_vector = {Q0};
    difference_vector = ( received_vector ^ expected_vector ) & mask_vector ;
    $display( "r    %b", received_vector );
    $display( "     %s", error_point( difference_vector ) );
    if ( expected_vector[0] !== 1'bX )
      if ( expected_vector[0] !== Q0)
        begin
          $display( "error with Q0 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q0 = errors_Q0 + 1;
        end
    if ( local_errors > 0 ) $display( "" );
    errors = errors + local_errors;
  end

endtask
function [7:0] error_point;

  input [0:0] in_vector;
  integer i, j;
  begin
    error_point[ 7 : 0 ] = ( in_vector[ 0 ] === 0 ) ? " " : "^";
  end

endfunction


endmodule

