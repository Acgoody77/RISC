`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:18 04/10/2018 
// Design Name: 
// Module Name:    Mod_Function_unit_tb 
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
module Mod_Function_unit_tb();

reg RESET;
reg [31:0]A;
reg [31:0]B;
reg [4:0]SH;
reg [4:0]FS;

wire Z_out;
wire C_out;
wire N_out;
wire V_out;
wire [31:0]F;

Mod_Function_unit uut(
	.RESET(RESET),
	.A(A),
	.B(B),
	.SH(SH),
	.FS(FS),
	.Z_out(Z_out),
	.C_out(C_out),
	.N_out(N_out),
	.V_out(V_out),
	.F(F)
	
);

initial
	begin
		RESET <= 1;
		A <= 0;
		B <= 0;
		SH<= 0;
		FS<= 0;
		#10
		RESET <= 0;
		
		A <= 32'h00000000;
		B <= 32'h00000000;
		FS <= 5'b00000;
		#10
		FS <= 5'b00000;
		#10
		FS <= 5'b00010;
		#10
		FS <= 5'b00101;
		#10
		FS <= 5'b01000;
		#10
		FS <= 5'b01010;
		#10
		FS <= 5'b01100;
		#10
		FS <= 5'b01110;
		#10
		FS <= 5'b10000;
		#10
		FS <= 5'b10001;
		#10
		FS <= 5'b00111;
		#10
		
		A <= 32'hF5F5F5F5;
		B <= 32'h5F5F5F5F;
		FS <= 5'b00000;
		#10
		FS <= 5'b00000;
		#10
		FS <= 5'b00010;
		#10
		FS <= 5'b00101;
		#10
		FS <= 5'b01000;
		#10
		FS <= 5'b01010;
		#10
		FS <= 5'b01100;
		#10
		FS <= 5'b01110;
		#10
		FS <= 5'b10000;
		#10
		FS <= 5'b10001;
		#10
		FS <= 5'b00111;
		#10
		
		A <= 32'hFFFFFFFF;
		B <= 32'hFFFFFFFF;
		FS <= 5'b00000;
		#10
		FS <= 5'b00000;
		#10
		FS <= 5'b00010;
		#10
		FS <= 5'b00101;
		#10
		FS <= 5'b01000;
		#10
		FS <= 5'b01010;
		#10
		FS <= 5'b01100;
		#10
		FS <= 5'b01110;
		#10
		FS <= 5'b10000;
		#10
		FS <= 5'b10001;
		#10
		FS <= 5'b00111;
		
		
	end

endmodule
