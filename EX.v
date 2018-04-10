`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:42 04/10/2018 
// Design Name: 
// Module Name:    EX 
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
module EX(
	input CLOCK,
	input RESET,
	input [31:0]PC_M2,
	input RW,
	input[4:0] DA,
	input[1:0] MD,
	input[1:0] BS,
	input      PS,
	input      MW,
	input[4:0] FS,
	input[4:0] SH,
	input [31:0]BUS_A,
   input [31:0]BUS_B,
	output[31:0]BrA,
	output[31:0]RAA,
	output 		RW_out,
	output[4:0] DA_out,
	output[1:0] MD_out,
	output      BS_one,
	output 		BS_zero,
	output PS_out,
	output Z,
	output V,
	output N,
	output C,
	output VxorN,
	output [31:0]F,
	output [31:0]Data_Out
	
    );

reg [31:0] PC_M2_clocked;
reg 		  RW_clocked;
reg [4:0]  DA_clocked;
reg [1:0]  MD_clocked;
reg [1:0]  BS_clocked;
reg        PS_clocked;
reg        MW_clocked;
reg [4:0]  FS_clocked;
reg [4:0]  SH_clocked;
reg [31:0] BUS_A_clocked;
reg [31:0] BUS_B_clocked;

assign BrA = PC_M2_clocked + BUS_B_clocked;
assign RAA = BUS_A_clocked;
assign VxorN = V ^ N;
assign BS_one = BS_clocked[1];
assign BS_zero= BS_clocked[0];
assign RW_out = RW_clocked;
assign DA_out = DA_clocked;
assign MD_out = MD_clocked;
assign PS_out = PS_clocked;

always @(negedge CLOCK)
	begin
		PC_M2_clocked <= PC_M2;
		RW_clocked 	  <= RW;
		DA_clocked 	  <= DA;
		MD_clocked 	  <= MD;
		BS_clocked 	  <= BS;
		PS_clocked 	  <= PS;
		MW_clocked 	  <= MW;
		FS_clocked 	  <= FS;
		SH_clocked 	  <= SH;
		BUS_A_clocked <= BUS_A;
		BUS_B_clocked <= BUS_B;
	end
	
Mod_Function_unit MFU(
	.RESET(RESET),
	.A(BUS_A_clocked),
	.B(BUS_B_clocked),
	.SH(SH_clocked),
	.FS(FS_clocked),
	.Z_out(Z),
	.C_out(C),
	.N_out(N),
	.V_out(V),
	.F(F)
);
		
memDATA data_mem(
	.clk(CLOCK),
	.addr(BUS_A_clocked),
	.MW(MW_clocked),
	.datain(BUS_B_clocked),
	.dataout(Data_Out)
);

endmodule
