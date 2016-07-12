module fulladder (input logic A, B, Cin, output logic S, Cout);

assign {Cout,S} = A + B + Cin;

endmodule
