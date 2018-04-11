`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create DA_regte:    15:02:14 03/27/2018 
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


reg 		 RW_reg;
reg [4:0] DA_reg;
reg [1:0] MD_reg;
reg [1:0] BS_reg;
reg       PS_reg;
reg       MW_reg;
reg [4:0] FS_reg;
reg       MA_reg;
reg 		 MB_reg;
reg [4:0] AA_reg;
reg [4:0] BA_reg;
reg 		 CS_reg;

reg [6:0]opcode;
reg [4:0]DR;
reg [4:0]SA;
reg [4:0]SB;
reg [14:0]immediate;
reg [14:0]TargetOfFS_reget;

assign RW = RW_reg;
assign DA = DA_reg;
assign MD = MD_reg;
assign BS = BS_reg;
assign PS = PS_reg;
assign MW = MW_reg;
assign FS = FS_reg;
assign MA = MA_reg;
assign MB = MB_reg;
assign AA = AA_reg;
assign BA = BA_reg;
assign CS = CS_reg;

initial
	begin
		RW_reg   <= 0;
		MD_reg   <= 2'b00;
		BS_reg	<= 2'b00;
		PS_reg	<= 0;
		MW_reg	<= 0;
		FS_reg	<= 5'b00000;
		MA_reg	<= 0;
		MB_reg	<= 0;
		AA_reg	<= 5'b00000;
		BA_reg	<= 5'b00000;
		DA_reg   <= 5'b00000;
		CS_reg	<= 0;
	end

always@(*)
	begin
		opcode = IR_instruction[31:25];
		DR = IR_instruction[24:20];
		SA = IR_instruction[19:15];
		SB = IR_instruction[14:10];
		
		
		if(RESET)
			begin
				RW_reg   <= 0;
				MD_reg   <= 2'b00;
				BS_reg	<= 2'b00;
				PS_reg	<= 0;
				MW_reg	<= 0;
				FS_reg	<= 5'b00000;
				MB_reg	<= 0;
				MA_reg	<= 0;
				CS_reg	<= 0;
				AA_reg	<= 5'b00000;
				BA_reg	<= 5'b00000;
				DA_reg   <= 5'b00000;
			end
		case(opcode)
				NOP:
					begin
						RW_reg <= 0;
						MD_reg <= 2'bxx;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'bxxxxx;
						MB_reg	<= 1'bx;
						MA_reg	<= 1'bx;
						CS_reg	<= 1'bx;
						AA_reg	<= 5'b00000;
						BA_reg	<= 5'b00000;
						DA_reg <= 5'b00000;
					end
				ADD:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00010;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				SUB:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00101;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				SLT:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b10;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00101;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				AND:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01000;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				OR:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01010;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				XOR:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01100;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				ST:
					begin
						RW_reg <= 0;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 1;
						FS_reg	<= 5'bxxxxx;
						MB_reg	<= 0;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				LOD:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b01;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'bxxxxx;
						MB_reg	<= 1'bx;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				ADI:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00010;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 1;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				SBI:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00101;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 1;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				NOT:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01110;
						MB_reg	<= 1'bx;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				ANI:
					begin
						RW_reg <= 1;
						MD_reg <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01000;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 0;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				ORI:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01010;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 0;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				XRI:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b01100;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 0;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				AIU:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00010;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 0;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				SIU:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00101;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 0;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				MOV:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00000;
						MB_reg	<= 1'bx;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				LSL:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b10000;
						MB_reg	<= 1'bx;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				LSR:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b00;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b10001;
						MB_reg	<= 1'bx;
						MA_reg	<= 0;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				JMR:
					begin
						RW_reg  <= 0;
						MD_reg  <= 2'bxx;
						BS_reg	<= 2'b10;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'bxxxxx;
						MB_reg	<= 1'bx;
						MA_reg	<= 1'bx;
						CS_reg	<= 1'bx;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				BZ:
					begin
						RW_reg  <= 0;
						MD_reg  <= 2'bxx;
						BS_reg	<= 2'b01;
						PS_reg	<= 0;
						MW_reg	<= 0;
						FS_reg	<= 5'b00000;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 1;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				BNZ:
					begin
						RW_reg  <= 0;
						MD_reg  <= 2'bxx;
						BS_reg	<= 2'b01;
						PS_reg	<= 1;
						MW_reg	<= 0;
						FS_reg	<= 5'b00000;
						MB_reg	<= 1;
						MA_reg	<= 0;
						CS_reg	<= 1;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				JMP:
					begin
						RW_reg  <= 0;
						MD_reg  <= 2'bxx;
						BS_reg	<= 2'b11;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'bxxxxx;
						MB_reg	<= 1;
						MA_reg	<= 1'bx;
						CS_reg	<= 1;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
				JML:
					begin
						RW_reg  <= 1;
						MD_reg  <= 2'b00;
						BS_reg	<= 2'b11;
						PS_reg	<= 1'bx;
						MW_reg	<= 0;
						FS_reg	<= 5'b00111;
						MB_reg	<= 1;
						MA_reg	<= 1;
						CS_reg	<= 1;
						AA_reg	<= SA;
						BA_reg	<= SB;
						DA_reg  <= DR;
					end
		endcase
		
		
	end


endmodule
