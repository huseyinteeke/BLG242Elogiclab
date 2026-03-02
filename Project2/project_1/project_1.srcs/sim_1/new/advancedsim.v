`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2026 01:42:15 AM
// Design Name: 
// Module Name: advancedsim
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


module advancedsim();

reg [7:0] sw;
reg [2:0] FunSel; 
wire [8:0] LED;
wire [6:0] seg;
wire dp;
wire [3:0] an;


advanced_circuits advsim(
    .sw(sw),
    .FunSel(FunSel),
    .LED(LED),
    .seg(seg),
    .dp(dp),
    .an(an)
);

initial begin
// --- DECODER TESTÝ (sw[2:0]) ---
sw = 8'h00; #5;
FunSel = 3'b00; #5;

sw[2:0] = 3'b001; // LED[1] yanmalý
#10 sw[2:0] = 3'b010; // LED[2] yanmalý
#10 sw[2:0] = 3'b111; // LED[7] yanmalý

// --- BCD TO 7-SEGMENT TESTÝ (sw[3:0]) ---
#10 sw[3:0] = 4'b0000; // Segmentte '0' görmelisin
#10 sw[3:0] = 4'b0101; // Segmentte '5' görmelisin
#10 sw[3:0] = 4'b1001; // Segmentte '9' görmelisin
#10 sw[3:0] = 4'b1111;
// --- MUX TESTÝ (sw ve FunSel) ---
#10 sw = 8'b10101010; FunSel = 3'b000; // LED[8] = sw[0] (0 olmalý)
#10 sw = 8'b11111111; FunSel = 3'b011;                   // LED[8] = sw[1] (1 olmalý)
#10 sw = 8'b11000101; FunSel = 3'b101;                   // LED[8] = sw[1] (1 olmalý)

#50;
$display("Simulasyon bitti, dalga formlarini (waves) kontrol et.");
$finish;
end



endmodule
