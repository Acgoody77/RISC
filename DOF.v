`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:05 04/09/2018 
// Design Name: 
// Module Name:    DOF 
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
module DOF(
	input 		CLOCK,
	input			RESET,
	input [31:0]PC_M1,
	input [31:0]IR,
	input [31:0]A_DATA,
	input [31:0]B_DATA,
	output[31:0]BUS_A,
	output[31:0]BUS_B,
	output[4:0] AA,
	output[4:0] BA,
	output 		RW,
	output[4:0] DA,
	output[1:0] MD,
	output[1:0] BS,
	output      PS,
	output      MW,
	output[4:0] FS,
	output[4:0] SH,
	output[31:0]PC_M2
    );

reg [31:0] PC_M1_clocked;
reg [31:0] IR_clocked;
reg [14:0] IM;

reg[31:0]BUS_A_reg;
reg[31:0]BUS_B_reg;
reg[4:0] AA_reg;
reg[4:0] BA_reg;
reg 		RW_reg;
reg[4:0] DA_reg;
reg[1:0] MD_reg;
reg[1:0] BS_reg;
reg      PS_reg;
reg      MW_reg;
reg[4:0] FS_reg;
reg[4:0] SH_reg;
reg[31:0]PC_M2_reg;

assign BUS_A = BUS_A_reg;
assign BUS_B = BUS_B_reg;
assign AA = AA_reg;
assign BA = BA_reg;
assign RW = RW_reg;
assign DA = DA_reg;
assign MD = MD_reg;
assign BS = BS_reg;
assign PS = PS_reg;
assign MW = MW_reg;
assign FS = FS_reg;
assign SH = SH_reg;
assign PC_M2 = PC_M2_reg;

always @(negedge CLOCK)
	begin
		PC_M1_clocked <= PC_M1;
		IR_clocked    <= IR;
	end

always @(*)
	begin
		SH_reg = IR[4:0];
		IM = IR[14:0];
		PC_M2_reg = PC_M1_clocked;
	end


wire CS_wire;
wire MA_wire;
wire MB_wire;
wire SEorZF_wire;

Instruction_decoder instruction_dec(
	.RESET(RESET),
	.IR_instruction(IR_clocked),
	.RW(RW_reg),//out
	.DA(DA_reg),//out
	.MD(MD_reg),//out
	.BS(BS_reg),//out
	.PS(PS_reg),//out
	.MW(MW_reg),//out
	.FS(FS_reg),//out
	.MA(MA_wire),
	.MB(MB_wire),
	.AA(AA_reg),//out to registerfile
	.BA(BA_reg),//out to registerfile
	.CS(CS_wire)
);

Constant_Unit const_unit(
	.IM(IM),
	.CS(CS_wire),
	.SEorZF(SEorZF_wire)
);

MUXA_B mux_ab(
	.PC_M1(PC_M1_clocked),
	.A_DATA(A_DATA),
	.B_DATA(B_DATA),
	.SEorZF(SEorZF_wire),
	.MA(MA_wire),
	.MB(MB_wire),
	.BUS_A(BUS_A_reg),
	.BUS_B(BUS_B_reg)
);


endmodule
