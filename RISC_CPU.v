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
    );

wire BS_one_wire;
wire BS_zero_wire;
wire PS_top_wire;
wire Z_top_wire;
wire BrA_top_wire;
wire RAA_top_wire;
wire PC_1_top_wire;
wire MUX_C_out_wire;

TOP top(
	.BS_one(),
	.BS_zero(),
	.PS_top(),
	.z_top(),
	.BrA_top(),
	.RAA_top(),
	.PC_1_top(),
	.MUX_C_out()
);

endmodule
