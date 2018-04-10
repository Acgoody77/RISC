`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:30 03/27/2018 
// Design Name: 
// Module Name:    TOP 
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
module TOP(
	input BS_one,
	input BS_zero,
	input PS_top,
	input Z_top,
	input [31:0]BrA_top,
	input [31:0]RAA_top,
	input [31:0]PC_1_top,
	output [31:0]MUX_C_out
    );

reg [1:0]mux_c_select;

	 
reg [31:0]MUX_C_out_reg;
assign MUX_C_out = MUX_C_out_reg;
	
always @(*)
begin
mux_c_select = {BS_one, (BS_zero & (BS_one | (PS_top ^ Z_top)))};
	case(mux_c_select)
		0: MUX_C_out_reg <= PC_1_top;
		1: MUX_C_out_reg <= BrA_top;
		2: MUX_C_out_reg <= RAA_top;
		3: MUX_C_out_reg <= BrA_top;
	endcase
end


endmodule
