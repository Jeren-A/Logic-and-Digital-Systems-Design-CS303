// Verilog test fixture created from schematic C:\Users\suuser\Xilinx\jerena_lab3\CL15.sch - Tue Dec 01 15:20:06 2020

`timescale 1ns / 1ps

module CL15_CL15_sch_tb();

// Inputs
   reg A2;
   reg A1;
   reg A0;
   reg B2;
   reg B1;
   reg B0;
   reg C0;
   reg A5;
   reg A4;
   reg A3;
   reg B5;
   reg B4;
   reg B3;
   reg A8;
   reg A7;
   reg A6;
   reg B8;
   reg B7;
   reg B6;
   reg A11;
   reg A10;
   reg A9;
   reg A14;
   reg A13;
   reg A12;
   reg B14;
   reg B13;
   reg B12;
   reg B11;
   reg B10;
   reg B9;

// Output
   wire S0;
   wire S1;
   wire S2;
   wire S3;
   wire S4;
   wire S5;
   wire S6;
   wire S7;
   wire S8;
   wire S9;
   wire S10;
   wire S11;
   wire S12;
   wire S13;
   wire S14;
   wire C;
   wire V;

// Bidirs

// Instantiate the UUT
   CL15 UUT (
		.A2(A2), 
		.A1(A1), 
		.A0(A0), 
		.B2(B2), 
		.B1(B1), 
		.B0(B0), 
		.C0(C0), 
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.A5(A5), 
		.A4(A4), 
		.A3(A3), 
		.B5(B5), 
		.B4(B4), 
		.B3(B3), 
		.S3(S3), 
		.S4(S4), 
		.S5(S5), 
		.A8(A8), 
		.A7(A7), 
		.A6(A6), 
		.B8(B8), 
		.B7(B7), 
		.B6(B6), 
		.S6(S6), 
		.S7(S7), 
		.S8(S8), 
		.A11(A11), 
		.A10(A10), 
		.A9(A9), 
		.S9(S9), 
		.S10(S10), 
		.S11(S11), 
		.A14(A14), 
		.A13(A13), 
		.A12(A12), 
		.B14(B14), 
		.B13(B13), 
		.B12(B12), 
		.B11(B11), 
		.B10(B10), 
		.B9(B9), 
		.S12(S12), 
		.S13(S13), 
		.S14(S14), 
		.C(C), 
		.V(V)
   );
// Initialize Inputs
initial begin
   
	//NO OVERFLOW

  // Addition
  // 16+ 2 = 18; 
  C0 = 0;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (16);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (2);
  #10 
  // 17+ (-3) = 14; 
  C0 = 0;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (17);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (-3);
  #10
  // -18 + (-4) = -22
  C0 = 0;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (-18);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (-4);
  #10
  //-16 + (2) = -14
  C0 = 0;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (-16);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (2);
  #10
  //Subtraction
   //1000 - 1000 = 0; 
  C0 = 1;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (1000);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (1000);
  #10 
  //900 - (-100) = 1000; 
  C0 = 1;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (900);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (-100);
  #10
  //-1000 - (-1000) = 0
  C0 = 1;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (-1000);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (-1000);
  #10
  //-10 - 4 = -14
  C0 = 1;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (-10);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (4);
  #10
  
 //WITH OVERFLOW
   // Addition
  // 9000+ 8000 = 17000;  gives-> -15768 and shows overflow
  C0 = 0;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (9000);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (8000);
  #10 
  
  // -(13000) + (-4000) = -17000; gives -> 15768 and shows overflow
  C0 = 0;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (-13000);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (-4000);
  #10
  
  //Subtraction
   
  //16000 - (-1400) = 17400; gives -> -15368 and shows overflow
  C0 = 1;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (16000);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (-1400);
  #10
  
  //-15000 - 3000 = -18000; gives -> 14768 and shows overflow
  C0 = 1;
  {A14, A13, A12, A11, A10, A9,A8,A7,A6,A5,A4,A3,A2,A1,A0} = (-15000);
  {B14, B13, B12, B11, B10, B9,B8,B7,B6,B5,B4,B3,B2,B1,B0} = (3000);
  
  end
endmodule