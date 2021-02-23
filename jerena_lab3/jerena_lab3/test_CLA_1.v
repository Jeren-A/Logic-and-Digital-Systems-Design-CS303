`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:12 12/15/2020
// Design Name:   CLA_20
// Module Name:   C:/Users/suuser/Desktop/New folder/jerena_lab3/test_CLA_1.v
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

module test_CLA_1;

	// Inputs
	reg [19:0] A;
	reg [19:0] B;
	reg Cin;

	// Outputs
	wire [19:0] S;
	wire Cout;
	wire Cout2;
	wire Carry;
	wire OVF;

	// Instantiate the Unit Under Test (UUT)
	CLA_20 uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout), 
		.Cout2(Cout2), 
		.Carry(Carry), 
		.OVF(OVF)
	);

	initial begin
		// Initialize Inputs
	   //Addition with no oveflow (524287)+ (-524288) = should give -1
		A = (524287);
		B = (-524288);
		Cin = (0);
		#10;
		//subtraction with no overflow (524287) - 1 should give 524286
		A = (524287);
		B = (1);
		Cin = (1);
		#10;
		//Addition with overflow (-524287) + (-524288) should give overflow
		A = (-524287);
		B = (-524288);
		Cin = (0);
		#10;
		//Subtraction with Overflow (-524288) - (4) should give overflow
		A = (-524288);
		B = (4);
		Cin = (1);
		#10;

	end
      
endmodule


