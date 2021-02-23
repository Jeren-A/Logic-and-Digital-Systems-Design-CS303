`timescale 1ns / 1ps

module  tel_tb();

// I-O port names
reg clk;
reg rst;
reg startCall,answerCall;
reg callerEndsCall,calleeEndsCall;
reg callerSendsChar,calleeSendsChar;
reg [7:0] charSent;
wire[63:0] statusMsg;
wire[63:0] sentMsg;

// 100 MHz clock
always #5 clk = ~clk; 

initial begin
	// initialize every input to 0
	clk = 0;
	rst = 0;
	startCall = 0;
	answerCall = 0;
	callerEndsCall = 0;
	calleeEndsCall = 0;
	callerSendsChar = 0;
	calleeSendsChar = 0;
	charSent = " ";
	
	// Xilinx global reset time
	#100; 
	
	// reset your circuit
	rst=1; #20; rst=0; #20; rst=0;              // reset
	
	startCall=1; #10; startCall=0; #10;         // caller starts call
	#100;                                       // statusMsg displaying "RINGING " 
	                                            // no answer for 10 clock cycles (and go back to IDLE)
	#20;
	
	startCall=1; #10; startCall=0; #10;         // caller starts call
	#20;                                        // statusMsg displaying "RINGING " 
	callerEndsCall=1; #10; callerEndsCall=0; #10; // caller ends the call
	#20;                                        // statusMsg displaying "RINGING " 
	
	startCall=1; #10; startCall=0; #10;         // caller starts call
	#20;                                        // statusMsg displaying "RINGING " 
	calleeEndsCall=1; #10; calleeEndsCall=0; #10; // callee rejects the call
	#100;                                       // statusMsg displaying 'REJECTED' for 10 clock cycles
	#20;
	
	startCall=1; #10; startCall=0;              // caller starts call
	#20;                                        // statusMsg displaying "RINGING " 
	answerCall=1; #10; answerCall=0;            // callee answer call
	#20;                                        // statusMsg displaying "CALLER  " 
	
	callerSendsChar=1; charSent="T"; #10; callerSendsChar=0; #10; // caller sends "T", sentMsg displaying "       T", cost is 2 
	callerSendsChar=1; charSent="E"; #10; callerSendsChar=0; #10; // caller sends "E", sentMsg displaying "      TE", cost is 4 
	callerSendsChar=1; charSent="R"; #10; callerSendsChar=0; #10; // caller sends "R", sentMsg displaying "     TER", cost is 6 
	callerSendsChar=1; charSent="M"; #10; callerSendsChar=0; #10; // caller sends "M", sentMsg displaying "    TERM", cost is 8 
	callerSendsChar=1; charSent=" "; #10; callerSendsChar=0; #10; // caller sends " ", sentMsg displaying "   TERM ", cost is 10
	callerSendsChar=1; charSent= 12; #10; callerSendsChar=0; #10; // caller sends (invalid char), no change on sentMsg and cost
	callerSendsChar=1; charSent="P"; #10; callerSendsChar=0; #10; // caller sends "P", sentMsg displaying "  TERM P", cost is 12
	#10;
	#10;
	callerSendsChar=1; charSent="R"; #10; callerSendsChar=0; #10; // caller sends "R", sentMsg displaying " TERM PR", cost is 14
	callerSendsChar=1; charSent="O"; #10; callerSendsChar=0; #10; // caller sends "O", sentMsg displaying "TERM PR0", cost is 16
	callerSendsChar=1; charSent="J"; #10; callerSendsChar=0; #10; // caller sends "J", sentMsg displaying "ERM PR0J", cost is 18
	callerSendsChar=1; charSent="E"; #10; callerSendsChar=0; #10; // caller sends "E", sentMsg displaying "RM PR0JE", cost is 20
	callerSendsChar=1; charSent="C"; #10; callerSendsChar=0; #10; // caller sends "C", sentMsg displaying "M PR0JEC", cost is 22
	callerSendsChar=1; charSent="T"; #10; callerSendsChar=0; #10; // caller sends "T", sentMsg displaying " PROJECT", cost is 24
	#10;
	#10;
	callerSendsChar=1; charSent=127; #10; callerSendsChar=0; #10; // caller sends DEL to change turn, cost is 26
	#10;                                                        // statusMsg displaying "CALLEE  " 
	#10;
	calleeSendsChar=1; charSent="C"; #10; calleeSendsChar=0; #10; // callee sends "C", sentMsg displaying "       C", cost is 28 
	calleeSendsChar=1; charSent="S"; #10; calleeSendsChar=0; #10; // callee sends "S", sentMsg displaying "      CS", cost is 30 
	#10;
	calleeSendsChar=1; charSent="3"; #10; calleeSendsChar=0; #10; // callee sends "3", sentMsg displaying "     CS3", cost is 31
	calleeSendsChar=1; charSent="0"; #10; calleeSendsChar=0; #10; // callee sends "0", sentMsg displaying "    CS30", cost is 32
	calleeSendsChar=1; charSent="3"; #10; calleeSendsChar=0; #10; // callee sends "3", sentMsg displaying "   CS303", cost is 33
	#10;
	calleeEndsCall=1; #10; calleeEndsCall=0; // callee ends the call
	#50;	                               // statusMsg displaying "COST    ", sentMsg displaying "00000021"
end

// module instantiation
telephone_conversation uut   (clk,
           rst,
		   startCall,answerCall,
		   callerEndsCall,calleeEndsCall,
		   callerSendsChar,calleeSendsChar,
		   charSent,
		   statusMsg,
		   sentMsg);

endmodule
