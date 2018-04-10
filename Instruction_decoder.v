`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:14 03/27/2018 
// Design Name: 
// Module Name:    Instruction_decoder 
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
module Instruction_decoder(
	input  		 RESET,
	input  [31:0]IR_instruction,
	output 		 RW,
	output [4:0] DA,
	output [1:0] MD,
	output [1:0] BS,
	output       PS,
	output       MW,
	output [4:0] FS,
	output       MA,
	output 		 MB,
	output [4:0] AA,
	output [4:0] BA,
	output 		 CS
	
    );
`include "PATT.INC"


reg [6:0]opcode;
reg [4:0]DR;
reg [4:0]SA;
reg [4:0]SB;
reg [14:0]immediate;
reg [14:0]TargetOffset;
assign opcode = IR_instruction[31:25];
assign DR = IR_instruction[24:20];
assign SA = IR_instruction[19:15];
assign SB = IR_instruction[14:10];

initial
	begin
		RW <= 0;
		MD <= 2'b00;
		BS	<= 2'b00;
		PS	<= 0;
		MW	<= 0;
		FS	<= 5'b00000;
		MA	<= 0;
		MB	<= 0;
		AA	<= 5'b00000;
		BA	<= 5'b00000;
		DA <= 5'b00000;
		CS	<= 0;
	end

always@(*)
	begin
		if(RESET)
			begin
				RW <= 0;
				MD <= 2'bxx;
				BS	<= 2'b00;
				PS	<= x;
				MW	<= 0;
				FS	<= 5'bxxxxx;
				MB	<= x;
				MA	<= x;
				CS	<= x;
				AA	<= 5'b00000;
				BA	<= 5'b00000;
				DA <= 5'b00000;
			end
		case(opcode)
				NOP:
					begin
						RW <= 0;
						MD <= 2'bxx;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'bxxxxx;
						MB	<= x;
						MA	<= x;
						CS	<= x;
						AA	<= 4'b0000;
						BA	<= 4'b0000;
						DA  <= 4'b0000;
					end
				ADD:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00010;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				SUB:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00101;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				SLT:
					begin
						RW <= 1;
						MD <= 2'b10;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00101;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				AND:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01000;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				OR:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01010;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				XOR:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01100;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				ST:
					begin
						RW <= 0;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 1;
						FS	<= 5'bxxxxx;
						MB	<= 0;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				LOD:
					begin
						RW <= 1;
						MD <= 2'b01;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'bxxxxx;
						MB	<= x;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				ADI:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00010;
						MB	<= 1;
						MA	<= 0;
						CS	<= 1;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				SBI:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00101;
						MB	<= 1;
						MA	<= 0;
						CS	<= 1;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				NOT:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01110;
						MB	<= x;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				ANI:
					begin
						RW <= 1;
						MD <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01000;
						MB	<= 1;
						MA	<= 0;
						CS	<= 0;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				ORI:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01010;
						MB	<= 1;
						MA	<= 0;
						CS	<= 0;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				XRI:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b01100;
						MB	<= 1;
						MA	<= 0;
						CS	<= 0;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				AIU:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00010;
						MB	<= 1;
						MA	<= 0;
						CS	<= 0;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				SIU:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00101;
						MB	<= 1;
						MA	<= 0;
						CS	<= 0;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				MOV:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00000;
						MB	<= x;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				LSL:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b10000;
						MB	<= x;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				LSR:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b00;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b10001;
						MB	<= x;
						MA	<= 0;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				JMR:
					begin
						RW  <= 0;
						MD  <= 2'bxx;
						BS	<= 2'b10;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'bxxxxx;
						MB	<= x;
						MA	<= x;
						CS	<= x;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				BZ:
					begin
						RW  <= 0;
						MD  <= 2'bxx;
						BS	<= 2'b01;
						PS	<= 0;
						MW	<= 0;
						FS	<= 5'b00000;
						MB	<= 1;
						MA	<= 0;
						CS	<= 1;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				BNZ:
					begin
						RW  <= 0;
						MD  <= 2'bxx;
						BS	<= 2'b01;
						PS	<= 1;
						MW	<= 0;
						FS	<= 5'b00000;
						MB	<= 1;
						MA	<= 0;
						CS	<= 1;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				JMP:
					begin
						RW  <= 0;
						MD  <= 2'bxx;
						BS	<= 2'b11;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'bxxxxx;
						MB	<= 1;
						MA	<= x;
						CS	<= 1;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
				JML:
					begin
						RW  <= 1;
						MD  <= 2'b00;
						BS	<= 2'b11;
						PS	<= x;
						MW	<= 0;
						FS	<= 5'b00111;
						MB	<= 1;
						MA	<= 1;
						CS	<= 1;
						AA	<= SA;
						BA	<= SB;
						DA  <= DR;
					end
		endcase
		
		
	end


endmodule
