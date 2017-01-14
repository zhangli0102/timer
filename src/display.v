`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:03 01/10/2017 
// Design Name: 
// Module Name:    display 
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
module display(
    input CLK,
    input [3:0] units, tens, hundreds,
    output [7:0] SEG,
    output reg [2:0] DIGIT
    );

reg [3:0] digit_data;
reg [1:0] digit_posn;
reg [23:0] prescaler;

decoder decoder(.CLK(CLK), .D(digit_data), .SEG(SEG));

always @ (posedge CLK)
begin
	prescaler <= prescaler + 24'd1;
	if(prescaler == 24'd50000)
	begin
		prescaler <= 24'd0;
		digit_posn <= digit_posn + 2'd1;
		if(digit_posn == 2'd0)
		begin
			digit_data <= units;
			DIGIT <= 3'b110;
		end
		if(digit_posn == 2'd1)
		begin
			digit_data <= tens;
			DIGIT <= 3'b101;
		end
		if(digit_posn == 2'd2)
		begin
			digit_data <= hundreds;
			DIGIT <= 3'b011;
			digit_posn <= 2'd0;
		end
	end
end


endmodule
