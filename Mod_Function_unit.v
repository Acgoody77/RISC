`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:24 03/27/2018 
// Design Name: 
// Module Name:    Mod_Function_unit 
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
module Mod_Function_unit(
	input RESET,
	input [9:0]A,
	input [9:0]B,
	input [4:0]SH,
	input [4:0]FS,
	output Z_out,
	output C_out,
	output N_out,
	output V_out,
	output [9:0]F
    );
//import params

initial
	begin
		Z_out <= 0;
		C_out <= 0;
		N_out <= 0;
		V_out <= 0;
		F     <= 10'b0000000000;
	end
	
always @(*)
	begin
		if(RESET)
			begin
				Z_out <= 0;
				C_out <= 0;
				N_out <= 0;
				V_out <= 0;
				F     <= 10'b0000000000;
			end
			
		case(FS)
			5'b00010:
			5'b00101:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
			5'b00010:
		endcase
	end

endmodule
