`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:30 01/02/2021 
// Design Name: 
// Module Name:    telephone_conversation 
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
module telephone_conversation(
      input clk,
		input rst,
		input startCall, 
		input answerCall, 
		input callerEndsCall,
		input	calleeEndsCall,
		input callerSendsChar,
		input calleeSendsChar,
		input [7:0]charSent,
		output reg [63:0] statusMsg,
		output reg [63:0] sentMsg);

reg [2:0] cState; // Current State
reg [2:0] nState; // Next State
reg [3:0] cntr;
reg [3:0] cntrR;
reg [31:0] cost; //cost initialization-----1
parameter [2:0] Idle 		= 3'b000;
parameter [2:0] Ring 		= 3'b001;
parameter [2:0] Caller 		= 3'b010;
parameter [2:0] Callee 		= 3'b011;
parameter [2:0] Rjct 		= 3'b100;
parameter [2:0] Finn 		= 3'b101;
always @(posedge clk or posedge rst)
begin
    if (rst)
        cState <= Idle;
    else 
        cState <= nState;
end
// combinational part – next state definitions
always @(*)
begin
    case(cState)
        Idle:
        begin
            if (startCall == 1'b0) nState = Idle;
            else                   nState = Ring;
        end
        Ring:
        begin
				if (callerEndsCall == 1'b1) nState = Idle;
				else if (calleeEndsCall == 1'b1) nState = Rjct;
				else if (cntr == 9) nState = Idle;
				else if (answerCall == 1'b1) nState = Caller;
				else nState = Ring;	
        end
        Caller:
        begin
            if (callerEndsCall  == 1'b1) nState = Finn;
				else if (calleeEndsCall  == 1'b1) nState = Finn;
				else if (callerSendsChar == 1'b1 && charSent == 127) nState= Callee;
				else nState = Caller;
        end
		  Callee:
		  begin
				if (callerEndsCall  == 1'b1) nState = Finn;
				else if (calleeEndsCall  == 1'b1) nState = Finn;
				else if (calleeSendsChar == 1'b1 && charSent == 127) nState= Caller;
				else nState = Callee;
		  end
        Rjct:
        begin
            if (cntrR == 9) nState = Idle;
				else nState = Rjct;
        end
		  Finn:
		  begin
				if (cntr == 4) nState = Idle;
				else nState = Finn;
		  end
		default: nState = Idle;
    endcase
    
end
//sequential part - control registers________________________________________
always @ (posedge clk or posedge rst)
begin
	if(rst)
	begin
		cntr       <= 0;
		cntrR      <= 0;
		cost		  <= 0;
	end
	else
	begin
		case(cState)
		   Idle:
			begin
					cntr       <= 0;
					cntrR       <= 0;
					cost		  <= 0; 
			end
			Rjct:
				begin
					if(cntrR == 9) cntrR <=4'b0000; 
					else cntrR <= cntrR+1;
				end
			Ring:
				begin
					if(cntr == 9) cntr <=4'b0000; 
					else cntr <= cntr+1;
				end
			Caller:
				begin
						if (callerSendsChar == 1'b1)
						begin
							cntr       <= 0;
							if (32<=charSent && charSent<=127)
							begin
								if (48<=charSent && charSent<=57) cost <= cost+1; //increment cost
								else cost<=cost+2;
							end
							else cost <= cost;	
						end
				end
			 Callee:
				begin 
				      if (calleeSendsChar == 1'b1)
						begin
							if (32<=charSent && charSent<=127)
							begin
								if (48<=charSent && charSent<=57) cost <= cost+1; //increment cost
								else cost<=cost+2;
							end
							else cost <= cost;	
						end
				end
			 Finn:
			 begin
					if(cntr == 4) cntr <=4'b0000; 
					else cntr <= cntr+1;
			 end
			default:begin cntr <= 0; cost <= 0; end
		endcase
	end 
end	

//sequential part- outputs____________________________________
always @(posedge clk or posedge rst) //for output 
begin
    if(rst) 
	 begin
		statusMsg <= {8{8'd32}};
		sentMsg  <= {8{8'd32}};
	 end
	 else
	 begin
    case (cState)
        Idle:
		  begin
				statusMsg[31:0] <= {4{8'd32}};
				statusMsg[39:32]<=8'd69;
				statusMsg[47:40]<=8'd76;
				statusMsg[55:48]<=8'd68;
				statusMsg[63:56]<=8'd73;
				sentMsg <= {8{8'd32}};
		  end
        Ring:
		  begin
				statusMsg[7:0]<=8'd32;
				statusMsg[15:8]<=8'd71;
				statusMsg[23:16]<=8'd78;
				statusMsg[31:24]<=8'd73;
				statusMsg[39:32]<=8'd71;
				statusMsg[47:40]<=8'd78;
				statusMsg[55:48]<=8'd73;
				statusMsg[63:56]<=8'd82;
		  end
		  Rjct:
		  begin
				statusMsg[7:0]<=8'd68;
				statusMsg[15:8]<=8'd69;
				statusMsg[23:16]<=8'd84;
				statusMsg[31:24]<=8'd67;
				statusMsg[39:32]<=8'd69;
				statusMsg[47:40]<=8'd74;
				statusMsg[55:48]<=8'd69;
				statusMsg[63:56]<=8'd82;
		  end
        Caller:
		  begin
			  if (callerSendsChar == 1'b1)
			  begin
					statusMsg[7:0]<=8'd32;
					statusMsg[15:8]<=8'd32;
					statusMsg[23:16]<=8'd82;
					statusMsg[31:24]<=8'd69;
					statusMsg[39:32]<=8'd76;
					statusMsg[47:40]<=8'd76;
					statusMsg[55:48]<=8'd65;
					statusMsg[63:56]<=8'd67;
					
					if (32<=charSent && charSent<=126)
					  begin
						sentMsg[7:0]<=charSent;
						sentMsg[15:8]<=sentMsg[7:0];
						sentMsg[23:16]<=sentMsg[15:8];
						sentMsg[31:24]<=sentMsg[23:16];
						sentMsg[39:32]<=sentMsg[31:24];
						sentMsg[47:40]<=sentMsg[39:32];
						sentMsg[55:48]<=sentMsg[47:40];
						sentMsg[63:56]<=sentMsg[55:48];
					  end
					else if (charSent == 127) sentMsg <= {8{8'd32}};
			  end
			end
			Callee:
			begin
			  if(calleeSendsChar == 1'b1)
			  begin
			      statusMsg[7:0]<=8'd32;
					statusMsg[15:8]<=8'd32;
					statusMsg[23:16]<=8'd69;
					statusMsg[31:24]<=8'd69;
					statusMsg[39:32]<=8'd76;
					statusMsg[47:40]<=8'd76;
					statusMsg[55:48]<=8'd65;
					statusMsg[63:56]<=8'd67;
					
					if (32<=charSent && charSent<=126)
					  begin
						sentMsg[7:0]<=charSent;
						sentMsg[15:8]<=sentMsg[7:0];
						sentMsg[23:16]<=sentMsg[15:8];
						sentMsg[31:24]<=sentMsg[23:16];
						sentMsg[39:32]<=sentMsg[31:24];
						sentMsg[47:40]<=sentMsg[39:32];
						sentMsg[55:48]<=sentMsg[47:40];
						sentMsg[63:56]<=sentMsg[55:48];
					  end
				   else if (charSent == 127) sentMsg <= {8{8'd32}};
				end
		  end
		  Finn:
		  begin

				statusMsg[31:0] <= {4{8'd32}};
				statusMsg[39:32]<=8'd84;
				statusMsg[47:40]<=8'd83;
				statusMsg[55:48]<=8'd79;
				statusMsg[63:56]<=8'd67;
				//
				if(cost[3:0] == 4'b0000)  sentMsg[7:0] <= 48;
				if(cost[3:0] == 4'b0001)  sentMsg[7:0] <= 49;
				if(cost[3:0] == 4'b0010)  sentMsg[7:0] <= 50;
				if(cost[3:0] == 4'b0011)  sentMsg[7:0] <= 51;
				if(cost[3:0] == 4'b0100)  sentMsg[7:0] <= 52;
				if(cost[3:0] == 4'b0101)  sentMsg[7:0] <= 53;
				if(cost[3:0] == 4'b0110)  sentMsg[7:0] <= 54;
				if(cost[3:0] == 4'b0111)  sentMsg[7:0] <= 55;
				if(cost[3:0] == 4'b1000)  sentMsg[7:0] <= 56;
				if(cost[3:0] == 4'b1001)  sentMsg[7:0] <= 57;
				if(cost[3:0] == 4'b1010)  sentMsg[7:0] <= 65;
				if(cost[3:0] == 4'b1011)  sentMsg[7:0] <= 66;
				if(cost[3:0] == 4'b1100)  sentMsg[7:0] <= 67;
				if(cost[3:0] == 4'b1101)  sentMsg[7:0] <= 68;
				if(cost[3:0] == 4'b1110)  sentMsg[7:0] <= 69;
				if(cost[3:0] == 4'b1111)  sentMsg[7:0] <= 70;
				
				//
				if(cost[7:4] == 4'b0000)  sentMsg[15:8] <= 48;
				if(cost[7:4] == 4'b0001)  sentMsg[15:8] <= 49;
				if(cost[7:4] == 4'b0010)  sentMsg[15:8] <= 50;
				if(cost[7:4] == 4'b0011)  sentMsg[15:8] <= 51;
				if(cost[7:4] == 4'b0100)  sentMsg[15:8] <= 52;
				if(cost[7:4] == 4'b0101)  sentMsg[15:8] <= 53;
				if(cost[7:4] == 4'b0110)  sentMsg[15:8] <= 54;
				if(cost[7:4] == 4'b0111)  sentMsg[15:8] <= 55;
				if(cost[7:4] == 4'b1000)  sentMsg[15:8] <= 56;
				if(cost[7:4] == 4'b1001)  sentMsg[15:8] <= 57;
				if(cost[7:4] == 4'b1010)  sentMsg[15:8] <= 65;
				if(cost[7:4] == 4'b1011)  sentMsg[15:8] <= 66;
				if(cost[7:4] == 4'b1100)  sentMsg[15:8] <= 67;
				if(cost[7:4] == 4'b1101)  sentMsg[15:8] <= 68;
				if(cost[7:4] == 4'b1110)  sentMsg[15:8] <= 69;
				if(cost[7:4] == 4'b1111)  sentMsg[15:8] <= 70;
				
				//
				if(cost[11:8] == 4'b0000)  sentMsg[23:16] <= 48;
				if(cost[11:8] == 4'b0001)  sentMsg[23:16] <= 49;
				if(cost[11:8] == 4'b0010)  sentMsg[23:16] <= 50;
				if(cost[11:8] == 4'b0011)  sentMsg[23:16] <= 51;
				if(cost[11:8] == 4'b0100)  sentMsg[23:16] <= 52;
				if(cost[11:8] == 4'b0101)  sentMsg[23:16] <= 53;
				if(cost[11:8] == 4'b0110)  sentMsg[23:16] <= 54;
				if(cost[11:8] == 4'b0111)  sentMsg[23:16] <= 55;
				if(cost[11:8] == 4'b1000)  sentMsg[23:16] <= 56;
				if(cost[11:8] == 4'b1001)  sentMsg[23:16] <= 57;
				if(cost[11:8] == 4'b1010)  sentMsg[23:16] <= 65;
				if(cost[11:8] == 4'b1011)  sentMsg[23:16] <= 66;
				if(cost[11:8] == 4'b1100)  sentMsg[23:16] <= 67;
				if(cost[11:8] == 4'b1101)  sentMsg[23:16] <= 68;
				if(cost[11:8] == 4'b1110)  sentMsg[23:16] <= 69;
				if(cost[11:8] == 4'b1111)  sentMsg[23:16] <= 70;
				
				//
				if(cost[15:12] == 4'b0000)  sentMsg[31:24] <= 48;
				if(cost[15:12] == 4'b0001)  sentMsg[31:24] <= 49;
				if(cost[15:12] == 4'b0010)  sentMsg[31:24] <= 50;
				if(cost[15:12] == 4'b0011)  sentMsg[31:24] <= 51;
				if(cost[15:12] == 4'b0100)  sentMsg[31:24] <= 52;
				if(cost[15:12] == 4'b0101)  sentMsg[31:24] <= 53;
				if(cost[15:12] == 4'b0110)  sentMsg[31:24] <= 54;
				if(cost[15:12] == 4'b0111)  sentMsg[31:24] <= 55;
				if(cost[15:12] == 4'b1000)  sentMsg[31:24] <= 56;
				if(cost[15:12] == 4'b1001)  sentMsg[31:24] <= 57;
				if(cost[15:12] == 4'b1010)  sentMsg[31:24] <= 65;
				if(cost[15:12] == 4'b1011)  sentMsg[31:24] <= 66;
				if(cost[15:12] == 4'b1100)  sentMsg[31:24] <= 67;
				if(cost[15:12] == 4'b1101)  sentMsg[31:24] <= 68;
				if(cost[15:12] == 4'b1110)  sentMsg[31:24] <= 69;
				if(cost[15:12] == 4'b1111)  sentMsg[31:24] <= 70;
				
				//
				if(cost[19:16] == 4'b0000)  sentMsg[39:32] <= 48;
				if(cost[19:16] == 4'b0001)  sentMsg[39:32] <= 49;
				if(cost[19:16] == 4'b0010)  sentMsg[39:32] <= 50;
				if(cost[19:16] == 4'b0011)  sentMsg[39:32] <= 51;
				if(cost[19:16] == 4'b0100)  sentMsg[39:32] <= 52;
				if(cost[19:16] == 4'b0101)  sentMsg[39:32] <= 53;
				if(cost[19:16] == 4'b0110)  sentMsg[39:32] <= 54;
				if(cost[19:16] == 4'b0111)  sentMsg[39:32] <= 55;
				if(cost[19:16] == 4'b1000)  sentMsg[39:32] <= 56;
				if(cost[19:16] == 4'b1001)  sentMsg[39:32] <= 57;
				if(cost[19:16] == 4'b1010)  sentMsg[39:32] <= 65;
				if(cost[19:16] == 4'b1011)  sentMsg[39:32] <= 66;
				if(cost[19:16] == 4'b1100)  sentMsg[39:32] <= 67;
				if(cost[19:16] == 4'b1101)  sentMsg[39:32] <= 68;
				if(cost[19:16] == 4'b1110)  sentMsg[39:32] <= 69;
				if(cost[19:16] == 4'b1111)  sentMsg[39:32] <= 70;
			
				//
				if(cost[23:20] == 4'b0000)  sentMsg[47:40] <= 48;
				if(cost[23:20] == 4'b0001)  sentMsg[47:40] <= 49;
				if(cost[23:20] == 4'b0010)  sentMsg[47:40] <= 50;
				if(cost[23:20] == 4'b0011)  sentMsg[47:40] <= 51;
				if(cost[23:20] == 4'b0100)  sentMsg[47:40] <= 52;
				if(cost[23:20] == 4'b0101)  sentMsg[47:40] <= 53;
				if(cost[23:20] == 4'b0110)  sentMsg[47:40] <= 54;
				if(cost[23:20] == 4'b0111)  sentMsg[47:40] <= 55;
				if(cost[23:20] == 4'b1000)  sentMsg[47:40] <= 56;
				if(cost[23:20] == 4'b1001)  sentMsg[47:40] <= 57;
				if(cost[23:20] == 4'b1010)  sentMsg[47:40] <= 65;
				if(cost[23:20] == 4'b1011)  sentMsg[47:40] <= 66;
				if(cost[23:20] == 4'b1100)  sentMsg[47:40] <= 67;
				if(cost[23:20] == 4'b1101)  sentMsg[47:40] <= 68;
				if(cost[23:20] == 4'b1110)  sentMsg[47:40] <= 69;
				if(cost[23:20] == 4'b1111)  sentMsg[47:40] <= 70;
				
				//
				if(cost[27:24] == 4'b0000)  sentMsg[55:48] <= 48;
				if(cost[27:24] == 4'b0001)  sentMsg[55:48] <= 49;
				if(cost[27:24] == 4'b0010)  sentMsg[55:48] <= 50;
				if(cost[27:24] == 4'b0011)  sentMsg[55:48] <= 51;
				if(cost[27:24] == 4'b0100)  sentMsg[55:48] <= 52;
				if(cost[27:24] == 4'b0101)  sentMsg[55:48] <= 53;
				if(cost[27:24] == 4'b0110)  sentMsg[55:48] <= 54;
				if(cost[27:24] == 4'b0111)  sentMsg[55:48] <= 55;
				if(cost[27:24] == 4'b1000)  sentMsg[55:48] <= 56;
				if(cost[27:24] == 4'b1001)  sentMsg[55:48] <= 57;
				if(cost[27:24] == 4'b1010)  sentMsg[55:48] <= 65;
				if(cost[27:24] == 4'b1011)  sentMsg[55:48] <= 66;
				if(cost[27:24] == 4'b1100)  sentMsg[55:48] <= 67;
				if(cost[27:24] == 4'b1101)  sentMsg[55:48] <= 68;
				if(cost[27:24] == 4'b1110)  sentMsg[55:48] <= 69;
				if(cost[27:24] == 4'b1111)  sentMsg[55:48] <= 70;
				
				//
				if(cost[31:28] == 4'b0000)  sentMsg[63:56] <= 48;
				if(cost[31:28] == 4'b0001)  sentMsg[63:56] <= 49;
				if(cost[31:28] == 4'b0010)  sentMsg[63:56] <= 50;
				if(cost[31:28] == 4'b0011)  sentMsg[63:56] <= 51;
				if(cost[31:28] == 4'b0100)  sentMsg[63:56] <= 52;
				if(cost[31:28] == 4'b0101)  sentMsg[63:56] <= 53;
				if(cost[31:28] == 4'b0110)  sentMsg[63:56] <= 54;
				if(cost[31:28] == 4'b0111)  sentMsg[63:56] <= 55;
				if(cost[31:28] == 4'b1000)  sentMsg[63:56] <= 56;
				if(cost[31:28] == 4'b1001)  sentMsg[63:56] <= 57;
				if(cost[31:28] == 4'b1010)  sentMsg[63:56] <= 65;
				if(cost[31:28] == 4'b1011)  sentMsg[63:56] <= 66;
				if(cost[31:28] == 4'b1100)  sentMsg[63:56] <= 67;
				if(cost[31:28] == 4'b1101)  sentMsg[63:56] <= 68;
				if(cost[31:28] == 4'b1110)  sentMsg[63:56] <= 69;
				if(cost[31:28] == 4'b1111)  sentMsg[63:56] <= 70;
			
		  end
        default: begin statusMsg <= {8{8'd32}}; sentMsg <= {8{8'd32}}; end
		          
		endcase
	end
end

endmodule
