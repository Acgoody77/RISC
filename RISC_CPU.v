`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:16 04/10/2018 
// Design Name: 
// Module Name:    RISC_CPU 
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
module RISC_CPU(
	input CLOCK,
	input RESET,
	output V,
	output N,
	output C
    );
//if to top
wire [31:0]PC_1_top_wire;
//top output to IF
wire [31:0]MUX_C_out_wire;
//IF output to DOF
wire [31:0]IR_wire;

//reg out to dof
wire [31:0]AOUT_wire;
wire [31:0]BOUT_wire;
//dof to reg
wire [4:0]AA_wire;
wire [4:0]BA_wire;
//dof to ex
wire [31:0]PC_M2_wire;
wire RW_dof_wire;
wire [4:0]DA_dof_wire;
wire [1:0]MD_dof_wire;
wire [1:0]BS_dof_wire;
wire PS_dof_wire;
wire MW_wire;
wire [4:0]FS_wire;
wire [4:0]SH_wire;
wire [31:0]BUS_A_wire;
wire [31:0]BUS_B_wire;
//ex to top
wire [31:0]BrA_wire;
wire [31:0]RAA_wire;
wire PS_wire;
wire Z_wire;
wire BS_one_wire;
wire BS_zero_wire;
//ex to wb
wire RW_wire;
wire [4:0]DA_wire;
wire [1:0]MD_wire;
wire VxorN_wire;
wire [31:0]F_wire;
wire [31:0]Data_wire;
//wb to reg
wire RW_reg_wire;
wire [4:0]DA_reg_wire;
wire [31:0]BUS_D_wire;

TOP top(
	//INPUT
	.BS_one(BS_one_wire),//from ex
	.BS_zero(BS_zero_wire),//from ex
	.PS_top(PS_wire),//from ex
	.Z_top(Z_wire),//from ex
	.BrA_top(BrA_wire),//from ex
	.RAA_top(RAA_wire),//from ex
	.PC_1_top(PC_1_top_wire),//from IF
	//OUTPUT
	.MUX_C_out(MUX_C_out_wire)//to IF(PC)
);

IF IF(
	//INPUT
	.CLOCK(CLOCK),
	.PC(MUX_C_out_wire),//from TOP(mux_c)
	//OUTPUT
	.PC_M1(PC_1_top_wire),//to top & DOF
	.IR(IR_wire)//to dof
);

DOF dof(
	//input
	.CLOCK(CLOCK),
	.RESET(RESET),
	.PC_M1(PC_1_top_wire),//from IF
	.IR(IR_wire),//from IF
	.A_DATA(AOUT_wire),//from regfile
	.B_DATA(BOUT_wire),//from regfile
	//output
	.BUS_A(BUS_A_wire),
	.BUS_B(BUS_B_wire),
	.AA(AA_wire),//to regfile
	.BA(BA_wire),//to regfile
	.RW(RW_dof_wire),//to ex
	.DA(DA_dof_wire),//to ex
	.MD(MD_dof_wire),//to ex
	.BS(BS_dof_wire),//to ex
	.PS(PS_dof_wire),//to ex
	.MW(MW_wire),//to ex
	.FS(FS_wire),//to ex
	.SH(SH_wire),//to ex
	.PC_M2(PC_M2_wire)//to ex
);

EX ex(
	//INPUT
	.CLOCK(CLOCK),
	.RESET(RESET),
	.PC_M2(PC_M2_wire),//from dof
	.RW(RW_dof_wire),//from dof
	.DA(DA_dof_wire),//from dof
	.MD(MD_dof_wire),//from dof
	.BS(VS_dof_wire),//from dof
	.PS(PS_dof_wire),//from dof
	.MW(MW_wire),//from dof
	.FS(FS_wire),//from dof
	.SH(SH_wire),//from dof
	.BUS_A(BUS_A_wire),//from dof
	.BUS_B(BUS_B_wire),//from dof
	//OUTPUT
	.BrA(BrA_wire),//to top
	.RAA(RAA_wire),//to top
	.RW_out(RW_wire),//to wb
	.DA_out(DA_wire),//to wb
	.MD_out(MD_wire),//to wb
	.BS_one(BS_one_wire),//to top
	.BS_zero(BS_zero_wire),//to top
	.PS_out(PS_wire),//to top
	.Z(Z_wire),//to top
	.V(V),
	.N(N),
	.C(C),
	.VxorN(VxorN_wire),//to wb
	.F(F_wire),//to wb
	.Data_Out(Data_wire)//to wb
);

WB wb(
	//INPUT
	.CLOCK(CLOCK),
	.RESET(RESET),
	.RW(RW_wire),//from ex
	.DA(DA_wire),//from ex
	.MD(MD_wire),//from ex
	.VxorN(VxorN_wire),//from ex
	.F(F_wire),//from ex
	.Data(Data_wire),//from ex
	//OUTPUT
	.BUS_D(BUS_D_wire),//to reg
	.RW_out(RW_reg_wire),//to reg
	.DA_out(DA_reg_wire)//to reg
);

regfile reg_file(
	//INPUTS
	.clock(CLOCK),
	.reset(RESET),
	.RW(RW_reg_wire),//from wb
	.Asel(AA_wire),//from dof
	.Bsel(BA_wire),//from dof
	.Dsel(DA_reg_wire),//from wb
	.DIN(BUS_D_wire),//from wb
	//OUTPUTS
	.AOUT(AOUT_wire),//to dof
	.BOUT(BOUT_wire)//to dof
);
endmodule
