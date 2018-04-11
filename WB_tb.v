`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:56 04/11/2018 
// Design Name: 
// Module Name:    WB_tb 
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
module WB_tb();

reg CLOCK;
reg RESET;
reg RW;
reg [4:0]DA;
reg [1:0]MD;
reg VxorN;
reg [31:0]F;
reg [31:0]Data;

wire [31:0]BUS_D;
wire RW_out;
wire [4:0]DA_out;

WB uut(
	.CLOCK(CLOCK),
	.RESET(RESET),
	.RW(RW),
	.DA(DA),
	.MD(MD),
	.VxorN(VxorN),
	.F(F),
	.Data(Data),
	.BUS_D(BUS_D),
	.RW_out(RW_out),
	.DA_out(DA_out)
);

initial
	begin
		CLOCK = 0;
		RESET = 1;
		#10
		RESET = 0;
		RW = 0;
		DA = 5'b00000;
		MD = 2'b00;
		VxorN = 0;
		F = 32'h00000000;
		Data = 32'h00000000;
		#100
		
		
		F = 32'hFFFFFFFF;
		Data = 32'hDDDDDDDD;
		VxorN = 1;
		MD = 2'b00;
		#10
		MD = 2'b01;
		#10
		MD = 2'b10;
	end


always
	begin
		#5
		CLOCK = ~CLOCK;
	end

endmodule
