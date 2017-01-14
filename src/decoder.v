`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:46 01/10/2017 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input CLK,
    input [3:0] D,
    output reg [7:0] SEG
    );

always @ (posedge CLK)
begin
	case (D)
		8'd0: SEG <= 8'b00000011;
		8'd1: SEG <= 8'b10011111;
		8'd2: SEG <= 8'b00100101;
		8'd3: SEG <= 8'b00001101;
		8'd4: SEG <= 8'b10011001;
		8'd5: SEG <= 8'b01001001;
		8'd6: SEG <= 8'b01000001;
		8'd7: SEG <= 8'b00011111;
		8'd8: SEG <= 8'b00000001;
		8'd9: SEG <= 8'b00001001;
		default: SEG <= 8'b11111111;
	endcase
end

endmodule
