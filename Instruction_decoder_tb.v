`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:54 04/10/2018 
// Design Name: 
// Module Name:    Instruction_decoder_tb 
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
module Instruction_decoder_tb();

`include "PATT.INC"

reg RESET;
reg [31:0]IR_instruction;

wire 		  RW;
wire [4:0] DA;
wire [1:0] MD;
wire [1:0] BS;
wire       PS;
wire       MW;
wire [4:0] FS;
wire       MA;
wire 		  MB;
wire [4:0] AA;
wire [4:0] BA;
wire 		  CS;

Instruction_decoder uut(
	.RESET(RESET),
	.IR_instruction(IR_instruction),
	//out
	.RW(RW),
	.DA(DA),
	.MD(MD),
	.BS(BS), 
	.PS(PS),
	.MW(MW),
	.FS(FS),
	.MA(MA),
	.MB(MB),
	.AA(AA),
	.BA(BA),
	.CS(CS)
);

initial
	begin
		#10
		RESET <= 1;
		#10
		RESET <= 0;
		#10
		IR_instruction <= {7'b0000000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0000010, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0000101, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1100101, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0001000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0001010, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0001100, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0000001, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0100001, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0100010, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0100101, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0101110, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0101000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0101010, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0101100, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1100010, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1000101, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1000000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0110000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0110001, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1100001, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0100000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1100000, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b1000100, 25'b0000000000000000000000000};
		#10
		IR_instruction <= {7'b0000111, 25'b0000000000000000000000000};
	end

endmodule
