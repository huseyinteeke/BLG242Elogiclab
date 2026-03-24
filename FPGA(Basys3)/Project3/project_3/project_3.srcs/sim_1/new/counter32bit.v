`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2026 08:15:02 AM
// Design Name: 
// Module Name: counter32bit
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


module counter32bit();

reg clock;
reg reset_n;
wire [31:0] LED;


bit32Counter countersim(
    .clock(clock),
    .reset(reset_n),
    .LED(LED)
);  

initial begin
    clock = 0;
    forever #5 clock = ~clock;
end


initial begin 

reset_n = 0;
#20;            // 20ns bekle

// Reset'i býrak (1) ve sayýmý baþlat
reset_n = 1;
#200;           // 200ns boyunca sayýmý izle

// Tekrar reset at ve temizlendiðini gör
reset_n = 0;
#10;
reset_n = 1;

#1000;          // Bir süre daha çalýþtýr
$finish;        // Simülasyonu bitir
end



endmodule
