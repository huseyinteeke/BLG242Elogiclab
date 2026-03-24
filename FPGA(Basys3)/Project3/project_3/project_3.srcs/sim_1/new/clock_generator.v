`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2026 08:32:05 AM
// Design Name: 
// Module Name: clock_generator
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


module clock_generator();

reg clock;
reg reset_n;
wire out;

ClockGenerator clockuut(
    .clk(clock),
    .reset_n(reset_n),
    .clk_1Hz(out)
);

initial begin
    clock = 0;
    forever #1 clock = ~clock;
end

initial begin
reset_n = 0;   // Önce resetle (Sinyal 0'da baþlar)
#10;           // 10ns bekle
reset_n = 1;   // Reset'i býrak, saymaya baþlasýn

#2000;

$finish;
end

endmodule
