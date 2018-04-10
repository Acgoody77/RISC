`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:35 04/10/2018 
// Design Name: 
// Module Name:    Constant_Unit_tb 
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
module Constant_Unit_tb();
//in
reg [14:0]IM;
reg 		 CS;
//out
wire [31:0]SEorZF;

Constant_Unit uut(
	.IM(IM),
	.CS(CS),
	.SEorZF(SEorZF)
);

initial
	begin
		#10
		IM <= 15'b100000000000000;
		CS <= 1;
		#10
		CS <= 0;
		#10
		CS <= 1;
		#10
		CS <= 0;
		#10
		IM <= 15'b000000000000000;
		CS <= 1;
		#10
		CS <= 0;
	end


endmodule
