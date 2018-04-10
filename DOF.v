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


always @(negedge CLOCK)
	begin
		PC_M1_clocked <= PC_M1;
		IR_clocked    <= IR;
	end

assign SH = IR[4:0];
assign IM = IR[14:0];
assign PC_M2 = PC_M1_clocked;

wire CS_wire;
wire MA_wire;
wire MB_wire;
wire SEorZF_wire;

Instruction_decoder instruction_dec(
	.RESET(RESET),
	.IR_instruction(IR_clocked),
	.RW(RW),//out
	.DA(DA),//out
	.MD(MD),//out
	.BS(BS),//out
	.PS(PS),//out
	.MW(MW),//out
	.FS(FS),//out
	.MA(MA_wire),
	.MB(MB_wire),
	.AA(AA),//out to registerfile
	.BA(BA),//out to registerfile
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
	.BUS_A(BUS_A),
	.BUS_B(BUS_B)
);


endmodule
