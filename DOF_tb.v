`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:08 04/10/2018 
// Design Name: 
// Module Name:    DOF_tb 
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
module DOF_tb();
//in
reg CLOCK;
reg RESET;

reg [31:0]PC_M1;
reg [31:0]IR;
reg [31:0]A_DATA;
reg [31:0]B_DATA;

//out
wire[31:0]BUS_A;
wire[31:0]BUS_B;
wire[4:0] AA;
wire[4:0] BA;
wire 		RW;
wire[4:0] DA;
wire[1:0] MD;
wire[1:0] BS;
wire      PS;
wire      MW;
wire[4:0] FS;
wire[4:0] SH;
wire[31:0]PC_M2;

DOF uut(
	.CLOCK(CLOCK),
	.RESET(RESET),
	.PC_M1(PC_M1),
	.IR(IR),
	.A_DATA(A_DATA),
	.B_DATA(B_DATA),
	.BUS_A(BUS_A),
	.BUS_B(BUS_B),
	.AA(AA),
	.BA(BA),
	.RW(RW),
	.DA(DA),
	.MD(MD),
	.BS(BS),
	.PS(PS),
	.MW(MW),
	.FS(FS),
	.SH(SH),
	.PC_M2(PC_M2)
);

initial
	begin
		CLOCK = 0;
		RESET = 0;
		PC_M1 = 0;
		IR = 0;
		A_DATA = 0;
		B_DATA = 0;
		#10
		PC_M1 = 32'h00000001;
		IR = 32'b0000010000010001000100xxxxxxxxxx;//add R1, R2, R3;
		A_DATA = 32'h00000005;
		B_DATA = 32'h00000005;
	end
	
always
	begin
		#5
		CLOCK = ~CLOCK;
	end

endmodule
