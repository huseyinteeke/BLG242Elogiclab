`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 08:43:40 PM
// Design Name: 
// Module Name: priorityencodersim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priorityencodersim();

reg [7:0] I;
wire [2:0] OUT;


priorityencoder encodetest(
    .sw(I),
    .LED(OUT)
);

initial begin

I = 8'b11110010; #50;
I = 8'b11101000; #50;
I = 8'b01100100; #50;
I = 8'b01001110; #50;
I = 8'b00100100; #50;
I = 8'b00111110; #50;
I = 8'b00010110; #50;
I = 8'b00011100; #50;
I = 8'b00001000; #50;
I = 8'b00001110; #50;
I = 8'b00000100; #50;
I = 8'b00000110; #50;
I = 8'b00000010; #50;
I = 8'b00000001; #50;
I = 8'b00000000; #50;

$finish;
end


 

endmodule
