`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:23 12/15/2020
// Design Name:   CLA_20
// Module Name:   C:/Users/suuser/Desktop/New folder/jerena_lab3/test_cla.v
// Project Name:  jerena_lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_20
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cla;

	// Inputs
	reg [19:0] A;
	reg [19:0] B;
	reg Cin;

	// Outputs
	wire [19:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	CLA_20 uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = (4);
		B = (8);
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

