`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:58:36 04/10/2018 
// Design Name: 
// Module Name:    MUXA_B 
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
module MUXA_B(
	input [31:0] PC_M1,
	input [31:0] A_DATA,
	input [31:0] B_DATA,
	input [31:0] SEorZF,
	input        MA,
	input			 MB,
	output[31:0] BUS_A,
	output[31:0] BUS_B
    );

always @(*)
	begin
		if(MA == 1)
			begin
				BUS_A <= PC_M1;
			end
		if(MA == 0)
			begin
				BUS_A <= A_DATA;
			end
			
		if(MB == 1)
			begin
				BUS_B <= SEorZF;
			end
		if(MB == 0)
			begin
				BUS_B <= B_DATA;
			end
	end

endmodule
