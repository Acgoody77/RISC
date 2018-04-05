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
	input	Z_top,
	input BrA_top,
	input RAA_top,
	input PC_1_top,
	output [9:0]MUX_C_out
    );

reg [1:0]mux_c_select = {BS_one, (BS_zero & (BS_one | (PS_top ^ Z_top)))};
	 
always @(*)
begin
	case(mux_c_select)
		0: MUX_C_out <= PC_1_top;
		1: MUX_C_out <= BrA_top;
		2: MUX_C_out <= RAA_top;
		3: MUX_C_out <= BrA_top;
	endcase
end


endmodule
