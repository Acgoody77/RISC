`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:41 04/10/2018 
// Design Name: 
// Module Name:    EX_tb 
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
module EX_tb();

	//in
	reg CLOCK;
	reg RESET;
	reg [31:0]PC_M2;
	reg RW;
	reg[4:0] DA;
	reg[1:0] MD;
	reg[1:0] BS;
	reg      PS;
	reg      MW;
	reg[4:0] FS;
	reg[4:0] SH;
	reg [31:0]BUS_A;
   reg [31:0]BUS_B;
	
	//out
	wire[31:0]BrA;
	wire[31:0]RAA;
	wire 		RW_out;
	wire[4:0] DA_out;
	wire[1:0] MD_out;
	wire      BS_one;
	wire 		BS_zero;
	wire PS_out;
	wire Z;
	wire V;
	wire N;
	wire C;
	wire VxorN;
	wire [31:0]F;
	wire [31:0]Data_Out;
	
EX uut(
	
	.CLOCK(CLOCK),
	.RESET(RESET),
	.PC_M2(PC_M2),
	.RW(RW),
	.DA(DA),
	.MD(MD),
	.BS(BS),
	.PS(PS),
	.MW(MW),
	.FS(FS),
	.SH(SH),
	.BUS_A(BUS_A),
	.BUS_B(BUS_B),
	
	.BrA(BrA),
	.RAA(RAA),
	.RW_out(RW_out),
	.DA_out(DA_out),
	.MD_out(MD_out),
	.BS_one(BS_one),
	.BS_zero(BS_zero),
	.PS_out(PS_out),
	.Z(Z),
	.V(V),
	.N(N),
	.C(C),
	.VxorN(VxorN),
	.F(F),
	.Data_Out(Data_Out)	
);

initial
	begin
		CLOCK = 0;
		RESET = 0;
		#10
		RESET = 1;
		#10
		RESET = 0;
		PC_M2 = 32'h00000001;
		RW = 0;
		DA = 4'b0000;
		MD = 2'b00;
		BS = 2'b00;
		PS = 0;
		MW = 0;
		FS = 5'b00000;
		SH = 5'b00000;
		BUS_A = 32'h00000008;
		BUS_B = 32'h00000008;

		#100
		#10
		FS = 5'b00010;
		SH = 5'b0100;
		
				
		#10
		FS = 5'b00101;
		BUS_A = 32'h00000008;
		BUS_B = 32'h00000FFF;		
		MW = 1;
		#10
		FS = 5'b01000;
		
		
		#10
		FS = 5'b01010;
		BUS_A = 32'h00000008;
		BUS_B = 32'h00000AAA;		
		MW = 0;
		#10
		FS = 5'b01100;
		
		
		#10
		FS = 5'b01110;
		BUS_A = 32'h00002008;
		BUS_B = 32'h00000008;		
		
		#10
		FS = 5'b00000;
		
		
		#10
		FS = 5'b10000;
		
		
		#10
		FS = 5'b10001;
		
		BUS_A = 32'h00FFF008;
		BUS_B = 32'h00000008;	
		#10
		FS = 5'b00111;
		
		
	end
	
always
	begin
		#5
		CLOCK = ~CLOCK;
	end
	
endmodule
