`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:41 04/11/2018 
// Design Name: 
// Module Name:    memDATA_tb 
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
module memDATA_tb();

reg clk;
reg [31:0]addr;
reg MW;
reg [31:0]datain;

wire [31:0]dataout;

memDATA uut(
	.clk(clk),
	.addr(addr),
	.MW(MW),
	.datain(datain),
	.dataout(dataout)
);

initial
	begin
		clk = 0;
		addr = 32'h00000000;
		MW = 0;
		datain = 32'h00000000;
		#100
		#10
		addr = 32'h00000001;
		datain = 32'hFFFFFFFF;
		#10
		MW = 1;
		#10
		MW = 0;
		#10
		addr = 32'hFFFFFFFF;
		#10
		datain = 32'h01010101;
	end


always
	begin
		#5
		clk = ~clk;
	end


endmodule
