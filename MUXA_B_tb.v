`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:12 04/10/2018 
// Design Name: 
// Module Name:    MUXA_B_tb 
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
module MUXA_B_tb();

//inputs
reg [31:0] PC_M1;
reg [31:0] A_DATA;
reg [31:0] B_DATA;
reg [31:0] SEorZF;
reg        MA;
reg		  MB;
//outputs
wire[31:0]  BUS_A;
wire[31:0]  BUS_B;

MUXA_B uut(
	.PC_M1(PC_M1),
	.A_DATA(A_DATA),
	.B_DATA(B_DATA),
	.SEorZF(SEorZF),
	.MA(MA),
	.MB(MB),
	.BUS_A(BUS_A),
	.BUS_B(BUS_B)
);

initial
	begin
		PC_M1 <= 0;
		A_DATA<= 0;
		B_DATA<= 0;
		SEorZF<= 0;
		#100
		PC_M1 <= 32'hFFFFFFFF;
		A_DATA<= 32'hAAAAAAAA;
		B_DATA<= 32'hBBBBBBBB;
		SEorZF<= 32'h00000001;
		#10
		MA <= 1;
		#10
		MA <= 0;
		#10
		MB <= 1;
		#10
		MB <= 0;
		
	end
	


endmodule
