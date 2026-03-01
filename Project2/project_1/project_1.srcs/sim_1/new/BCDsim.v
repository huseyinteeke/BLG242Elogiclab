`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 08:06:14 PM
// Design Name: 
// Module Name: BCDsim
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


module BCDsim();

reg [3:0] I;
wire [8:0] OUT;
BCDto7Segment bcdundertest(
    .SW(I),
    .O(OUT)
);

initial begin

I = 4'b0000; #50;
I = 4'b0001; #50;
I = 4'b0010; #50;
I = 4'b0011; #50;
I = 4'b0100; #50;
I = 4'b0101; #50;
I = 4'b0110; #50;
I = 4'b0111; #50;
I = 4'b1000; #50;
I = 4'b1001; #50;
I = 4'b1010; #50;
I = 4'b1011; #50;
I = 4'b1100; #50;
I = 4'b1101; #50;
I = 4'b1110; #50;
I = 4'b1111; #50;

$finish;
end

endmodule
