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

reg[31:0]BrA_reg;
reg[31:0]RAA_reg;
reg 		RW_out_reg;
reg[4:0] DA_out_reg;
reg[1:0] MD_out_reg;
reg      BS_one_reg;
reg 		BS_zero_reg;
reg PS_out_reg;
reg Z_reg;
reg V_reg;
reg N_reg;
reg C_reg;
reg VxorN_reg;
reg [31:0]F_reg;
reg [31:0]Data_Out_reg;

assign BrA = BrA;
assign RAA = RAA_reg;
assign RW_out = RW_out_reg;
assign DA_out = DA_out_reg;
assign MD_out = MD_out_reg;
assign BS_one = BS_one_reg;
assign BS_zero = BS_zero_reg;
assign PS_out = PS_out_reg;
assign Z = Z_reg;
assign V = V_reg;
assign N = N_reg;
assign C = C_reg;
assign VxorN = VxorN_reg;
assign F = F_reg;
assign Data_Out = Data_Out_reg;

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

always @(*)
	begin
		 BrA_reg = PC_M2_clocked + BUS_B_clocked;
		 RAA_reg = BUS_A_clocked;
		 VxorN_reg = V_reg ^ N_reg;
		 BS_one_reg = BS_clocked[1];
		 BS_zero_reg= BS_clocked[0];
		 RW_out_reg = RW_clocked;
		 DA_out_reg = DA_clocked;
		 MD_out_reg = MD_clocked;
		 PS_out_reg = PS_clocked;
	end
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
	.Z_out(Z_reg),
	.C_out(C_reg),
	.N_out(N_reg),
	.V_out(V_reg),
	.F(F_reg)
);
		
memDATA data_mem(
	.clk(CLOCK),
	.addr(BUS_A_clocked),
	.MW(MW_clocked),
	.datain(BUS_B_clocked),
	.dataout(Data_Out_reg)
);

endmodule
