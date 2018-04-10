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
	input [31:0]A,
	input [31:0]B,
	input [4:0]SH,
	input [4:0]FS,
	output Z_out,
	output C_out,
	output N_out,
	output V_out,
	output [31:0]F
    );
//import params

reg Z_out_reg;
reg C_out_reg;
reg N_out_reg;
reg V_out_reg;
reg [31:0]F_reg;

reg [32:0]test;
wire [8:0]out_carry;

assign Z_out = Z_out_reg;
assign N_out = N_out_reg;
assign V_out = V_out_reg;
assign F = F_reg;

assign out_carry = {1'b0, A} + {1'b0, B};
assign C_out = out_carry[8];

initial
	begin
		Z_out_reg <= 0;
		C_out_reg <= 0;
		N_out_reg <= 0;
		V_out_reg <= 0;
		F_reg     <= 32'h00000000;
	end
	
always @(*)
	begin
		if(RESET)
			begin
				Z_out_reg <= 0;
				C_out_reg <= 0;
				N_out_reg <= 0;
				V_out_reg <= 0;
				F_reg     <= 32'h00000000;
			end
		test = A - B;
		if(test[32] == 1)
			begin
				N_out_reg <= 1;
			end
		if(test[32] == 0)
			begin
				N_out_reg <= 0;
			end
		if(test == 0)
			begin
				Z_out_reg <= 0;
			end
		if(test < 0)
			begin
				V_out_reg <= 1;
			end
			
			
		case(FS)
			5'b00000:
				begin
					F_reg <= A;
				end
			5'b00010:
				begin
					F_reg <= A + B;
				end
			5'b00101:
				begin
					F_reg <= A - B;
				end
			5'b01000:
				begin
					F_reg <= A & B;
				end
			5'b01010:
				begin
					F_reg <= A | B;
				end
			5'b01100:
				begin
					F_reg <= A ^ B;
				end
			5'b01110:
				begin
					F_reg <= ~A;  
				end
			5'b10000:
				begin
					F_reg <= A << SH;
				end
			5'b10001:
				begin
					F_reg <= A >> SH;
				end
			5'b00111:
				begin
					F_reg <= A; 
				end

		endcase
		
	end

endmodule
