`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 10:48:53 PM
// Design Name: 
// Module Name: decodersim
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


module decodersim();

reg [2:0] I;
wire [7:0] OUT;

decoder decoder_test(
    .sw(I),
    .LED(OUT)
);


initial begin

I = 3'b000 ; #50;
I = 3'b001 ; #50;
I = 3'b010 ; #50;
I = 3'b011 ; #50;
I = 3'b100 ; #50;
I = 3'b101 ; #50;
I = 3'b110 ; #50;
I = 3'b111 ; #50;


$finish;
end



endmodule
