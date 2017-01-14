`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:52 01/10/2017 
// Design Name: 
// Module Name:    alarm 
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
module alarm(
    input CLK,
    input enable,
    output reg BUZZER
    );

reg [25:0] count;

always @ (posedge CLK)
begin
	count <= count + 1;
	if ((count == 26'd11999) & enable)
	begin
		BUZZER <= ~ BUZZER;
		count <= 0;
	end
end	

endmodule
