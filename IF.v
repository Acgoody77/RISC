`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:34:56 04/09/2018 
// Design Name: 
// Module Name:    IF 
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
module IF(
	input  CLOCK,
	input  [31:0]PC,
	output [31:0]PC_M1,
	output [31:0]IR
    );
	 
reg [31:0]pc_clocked;
assign PC_M1 = PC + 1;

always @(negedge CLOCK)
	begin
		pc_clocked <= PC;
	end
	 
instruction_decoder instruction_mem(
	.PC(pc_clocked),
	.dataout(IR)
	
);

endmodule
