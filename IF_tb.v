`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:30 04/10/2018 
// Design Name: 
// Module Name:    IF_tb 
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
module IF_tb();

reg CLOCK;
reg [31:0]PC;

wire [31:0]PC_M1;
wire [31:0]IR;

IF uut(
	.CLOCK(CLOCK),
	.PC(PC),
	.PC_M1(PC_M1),
	.IR(IR)
);

integer i;

initial
	begin
		CLOCK = 0;
		for(i = 0;i < 10; i = i + 1)
			begin
				#10
				PC = i;
			end
		

	end

always
	begin
	#5
	CLOCK = ~CLOCK;
	end

endmodule
