`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:02 12/14/2020 
// Design Name: 
// Module Name:    design 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FullAdder( A, B, Cin, Sum, Carry, SUB);
		input A, B, Cin, SUB;
		output reg Sum , Carry;
		
		
		
		always @ (*)
		begin
		   Carry = (A^(SUB^B))&Cin|(A&(SUB^B));			
			Sum = (A^(SUB^B))^Cin;
		end

endmodule

module RCA_20(A, B, Cin, Sum, Carry, OVF);
	input [19:0] A, B;
	input Cin;
	output [19:0] Sum;
	output Carry;
	wire [18:0] C;
	output OVF;

	
	FullAdder FA0 (A[0], B[0], Cin, Sum[0], C[0], Cin);
	FullAdder FA1 (A[1], B[1], C[0], Sum[1], C[1],Cin);
	FullAdder FA2 (A[2], B[2], C[1], Sum[2], C[2], Cin);
	FullAdder FA3 (A[3], B[3], C[2], Sum[3], C[3], Cin);
	FullAdder FA4 (A[4], B[4], C[3], Sum[4], C[4], Cin);
	FullAdder FA5 (A[5], B[5], C[4], Sum[5], C[5], Cin);
	FullAdder FA6 (A[6], B[6], C[5], Sum[6], C[6], Cin);
	FullAdder FA7 (A[7], B[7], C[6], Sum[7], C[7], Cin);
	FullAdder FA8 (A[8], B[8], C[7], Sum[8], C[8], Cin);
	FullAdder FA9 (A[9], B[9], C[8], Sum[9], C[9], Cin);
	FullAdder FA10 (A[10], B[10], C[9], Sum[10], C[10], Cin);
	FullAdder FA11 (A[11], B[11], C[10], Sum[11], C[11], Cin);
	FullAdder FA12 (A[12], B[12], C[11], Sum[12], C[12], Cin);
	FullAdder FA13 (A[13], B[13], C[12], Sum[13], C[13], Cin);
	FullAdder FA14 (A[14], B[14], C[13], Sum[14], C[14], Cin);
	FullAdder FA15 (A[15], B[15], C[14], Sum[15], C[15], Cin);
	FullAdder FA16 (A[16], B[16], C[15], Sum[16], C[16], Cin);
	FullAdder FA17 (A[17], B[17], C[16], Sum[17], C[17], Cin);
	FullAdder FA18 (A[18], B[18], C[17], Sum[18], C[18], Cin);
	FullAdder FA19 (A[19], B[19], C[18], Sum[19], Carry, Cin);
	
	//assign Carry = C[19];
	assign OVF =  C[18] ^ Carry;
	
endmodule 

