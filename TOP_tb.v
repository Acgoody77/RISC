`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:23 04/10/2018 
// Design Name: 
// Module Name:    TOP_tb 
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
module TOP_tb();
//inputs
reg BS_one;
reg BS_zero;
reg PS_top;
reg Z_top;
reg[31:0]BrA_top;
reg[31:0]RAA_top;
reg[31:0]PC_1_top;
//outputs
wire[31:0]MUX_C_out;

TOP uut(
	.BS_one(BS_one),
 	.BS_zero(BS_zero),
 	.PS_top(PS_top),
	.Z_top(Z_top),
	.BrA_top(BrA_top),
	.RAA_top(RAA_top),
	.PC_1_top(PC_1_top),
//outputs
	.MUX_C_out(MUX_C_out)
);

reg [3:0]inc;

initial
	begin
		BrA_top <= 32'hBBBBBBBB;
		RAA_top <= 32'hAAAAAAAA;
		PC_1_top<= 32'hCCCCCCCC;
		 
		for(inc=0;inc<16;inc=inc+1)begin
		#10
		BS_one <= inc[0];
		BS_zero<= inc[1];
		PS_top <= inc[2];
		Z_top  <= inc[3];
		end
	
	end

endmodule
