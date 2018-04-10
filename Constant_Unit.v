`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:59 04/09/2018 
// Design Name: 
// Module Name:    Constant_Unit 
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
module Constant_Unit(
	input  [14:0]IM,
	input 		 CS,
	output [31:0]SEorZF
    );

reg [31:0]SEorZF_reg;
assign SEorZF = SEorZF_reg;

always @(*)
	begin
		if(CS == 1)
			begin
				if(IM[14] == 1)
					begin
						SEorZF_reg <= {17'b11111111111111111, IM};
					end
				if(IM[14] == 0)
					begin
						SEorZF_reg <= {17'b00000000000000000, IM};
					end
			end
		if(CS == 0)
			begin
				SEorZF_reg <= {17'b00000000000000000, IM};
			end
	end


endmodule
