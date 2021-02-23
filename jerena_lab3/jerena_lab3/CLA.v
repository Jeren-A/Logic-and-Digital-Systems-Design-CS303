`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:49 12/15/2020 
// Design Name: 
// Module Name:    CLA 
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

module CLA( A, B, Cin, S, Cout, SUB);
		input [4:0] A, B;
		input Cin, SUB;
		output reg [4:0]S;
		output reg Cout;
		
		reg  [4:0]P, G, C;
		reg w1, w2, w2_1, w3, w3_1, w3_2, w4, w4_1, w4_2, w4_3, w5, w5_1, w5_2, w5_3, w5_4;
		
		always @ (*)
		begin
			C[0] = Cin;
			P[0]= A[0]^(SUB ^ B[0]);
			G[0]= A[0]&(SUB ^ B[0]);
 
			w1 = P[0]&C[0];
			S[0] = P[0]^C[0];
			C[1] = G[0] | w1;

			P[1]= A[1]^(SUB ^ B[1]);
			G[1]= A[1]&(SUB ^ B[1]);


		   w2 = P[1]&G[0];
			w2_1 = P[1]&P[0]&C[0];
			S[1] = P[1]^C[1];
			C[2] = G[1] | w2 | w2_1;

			P[2]= A[2]^(SUB ^ B[2]);
			G[2]= A[2]&(SUB ^ B[2]);
			
		   w3 = P[2]&G[1];
			w3_1 = P[2]&P[1]&G[0];
			w3_2 = P[2]&P[1]&P[0]&C[0];
			S[2] = P[2]^C[2];
			C[3]= G[2] | w3 | w3_1 | w3_2;


			P[3]= A[3]^(SUB ^ B[3]);
			G[3]= A[3]&(SUB ^ B[3]);

		   w4 = P[3]&G[2];
			w4_1 = P[3]&P[2]&G[1];
			w4_2 = P[3]&P[2]&P[1]&G[0];
			w4_3 = P[3]&P[2]&P[1]&P[0]&C[0];
         S[3] = P[3]^C[3];
			C[4] = G[3] | w4 | w4_1 | w4_2 | w4_3;


			P[4]= A[4]^(SUB ^ B[4]);
			G[4]= A[4]&(SUB ^ B[4]);
			

		   w5 = P[4]&G[3];
			w5_1 = P[4]&P[3]&G[2];
			w5_2 = P[4]&P[3]&P[2]&G[1];
			w5_3 = P[4]&P[3]&P[2]&P[1]&G[0];
			w5_4 = P[4]&P[3]&P[2]&P[1]&P[0]&C[0]; 
			S[4] = P[4]^C[4];
			Cout = G[4] | w5 | w5_1 | w5_2 | w5_3 | w5_4;
			
		end

endmodule

module CLA_forOVF( A, B, Cin, S, Cout, Cout2, SUB);
		input [4:0] A, B;
		input Cin, SUB;
		output reg [4:0]S;
		output reg Cout;
		output reg Cout2;
		
		
		reg  [4:0]P, G;
		reg [3:0]C;
		reg w1, w2, w2_1, w3, w3_1, w3_2, w4, w4_1, w4_2, w4_3, w5, w5_1, w5_2, w5_3, w5_4;
		
		always @ (*)
		begin
	
			C[0] = Cin;
			P[0]= A[0]^(SUB ^ B[0]);
			G[0]= A[0]&(SUB ^ B[0]);
 
			w1 = P[0]&C[0];
			S[0] = P[0]^C[0];
			C[1] = G[0] | w1;

			P[1]= A[1]^(SUB ^ B[1]);
			G[1]= A[1]&(SUB ^ B[1]);

		   w2 = P[1]&G[0];
			w2_1 = P[1]&P[0]&C[0];
			S[1] = P[1]^C[1];
			C[2] = G[1] | w2 | w2_1;

			P[2]= A[2]^(SUB ^ B[2]);
			G[2]= A[2]&(SUB ^ B[2]);

		   w3 = P[2]&G[1];
			w3_1 = P[2]&P[1]&G[0];
			w3_2 = P[2]&P[1]&P[0]&C[0];
			S[2] = P[2]^C[2];
			C[3]= G[2] | w3 | w3_1 | w3_2;


			P[3]= A[3]^(SUB ^ B[3]);
			G[3]= A[3]&(SUB ^ B[3]);

		   w4 = P[3]&G[2];
			w4_1 = P[3]&P[2]&G[1];
			w4_2 = P[3]&P[2]&P[1]&G[0];
			w4_3 = P[3]&P[2]&P[1]&P[0]&C[0];
         S[3] = P[3]^C[3];
			Cout = G[3] | w4 | w4_1 | w4_2 | w4_3;
			
         P[4]= A[4]^(SUB ^ B[4]);
			G[4]= A[4]&(SUB ^ B[4]);
			
		   w5 = P[4]&G[3];
			w5_1 = P[4]&P[3]&G[2];
			w5_2 = P[4]&P[3]&P[2]&G[1];
			w5_3 = P[4]&P[3]&P[2]&P[1]&G[0];
			w5_4 = P[4]&P[3]&P[2]&P[1]&P[0]&C[0]; 
			S[4] = P[4]^Cout;
			Cout2 = G[4] | w5 | w5_1 | w5_2 | w5_3 | w5_4;
			
		end

endmodule

module CLA_20( A, B, Cin, S, Cout, Cout2, Carry, OVF );// after office hour add OVF and  Carry,
	input [19:0] A, B;
	input Cin;
	output [19:0] S;
	output Cout, Cout2;
	wire c1, c2, c3;
	output Carry;
	output OVF;

	CLA CLA1 (A[4:0], B[4:0], Cin, S[4:0], c1, Cin);
	CLA CLA2 (A[9:5], B[9:5], c1, S[9:5], c2, Cin);
	CLA CLA3 (A[14:10], B[14:10], c2, S[14:10], c3, Cin);
	CLA_forOVF CLA_forOVF1 (A[19:15], B[19:15], c3, S[19:15], Cout, Cout2, Cin);

	assign Carry = Cout2;
	xor (OVF, Cout, Cout2);
	
endmodule


