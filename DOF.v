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
	input [31:0]PC_M1,
	input [31:0]IR,
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
	output[4:0] SH
    );

reg [31:0] PC_M1_clocked;
reg [31:0] IR_clocked;


always @(negedge CLOCK)
	begin
		PC_M1_clocked <= PC_M1;
		IR_clocked    <= IR;
	end

assign SH = IR[4:0];

endmodule
