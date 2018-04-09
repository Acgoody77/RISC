`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:14 03/27/2018 
// Design Name: 
// Module Name:    Instruction_decoder 
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
module Instruction_decoder(
	input  		 RESET,
	input  [31:0]IR_instruction,
	output 		 RW,
	output [3:0] DA,
	output [1:0] MD,
	output [1:0] BS,
	output       PS,
	output       MW,
	output [4:0] FS,
	output       MA,
	output 		 MB,
	output [3:0] AA,
	output [3:0] BA,
	output 		 CS
	
    );
`include "PATT.INC"


reg [6:0]opcode;
assign opcode = IR_instruction[31:25];

initial
	begin
		RW <= 0;
		DA <= 4'b0000;
		MD <= 2'b00;
		BS	<= 2'b00;
		PS	<= 0;
		MW	<= 0;
		FS	<= 5'b00000;
		MA	<= 0;
		MB	<= 0;
		AA	<= 4'b0000;
		BA	<= 4'b0000;
		CS	<= 0;
	end

always@(*)
	begin
		if(RESET):
			begin
				RW <= 0;
				DA <= 4'b0000;
				MD <= 2'b00;
				BS	<= 2'b00;
				PS	<= 0;
				MW	<= 0;
				FS	<= 5'b00000;
				MA	<= 0;
				MB	<= 0;
				AA	<= 4'b0000;
				BA	<= 4'b0000;
				CS	<= 0;
			end
		case(opcode)
				NOP:
					begin
						RW <= 0;
						DA <= 4'b0000;
						//MD <= 2'b00;
						BS	<= 2'b00;
						//PS	<= 0;
						MW	<= 0;
						//FS	<= 5'b00000;
						//MB	<= 0;
						//MA	<= 0;
						AA	<= 4'b0000;
						BA	<= 4'b0000;
						//CS	<= 0;
					end
				ADD:
					begin
						RW <= 0;
						DA <= 4'b0000;
						//MD <= 2'b00;
						BS	<= 2'b00;
						//PS	<= 0;
						MW	<= 0;
						//FS	<= 5'b00000;
						//MB	<= 0;
						//MA	<= 0;
						AA	<= 4'b0000;
						BA	<= 4'b0000;
						//CS	<= 0;
					end
		endcase
		
		
	end


endmodule
