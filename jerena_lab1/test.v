// Verilog test fixture created from schematic C:\Users\suuser\Xilinx\CS_303\jerena_lab1\schem.sch - Fri Oct 30 02:27:29 2020

`timescale 1ns / 1ps

module schem_schem_sch_tb();

// Inputs
   reg A;
   reg B;

// Output
   wire Y;

// Bidirs

// Instantiate the UUT
   schem UUT (
		.A(A), 
		.B(B), 
		.Y(Y)
   );
// Initialize Inputs
	initial begin
		A = 0;
		B = 0;
		#10;
		A = 1;
		#10;
		A = 0;
		B = 1;
		#10;
		A = 1;
   end
endmodule
