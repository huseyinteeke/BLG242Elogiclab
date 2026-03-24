`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 04:41:33 PM
// Design Name: 
// Module Name: mutexsim
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


module mutexsim();

    reg [7:0] I;
    reg [2:0] FunSel;
    
    wire OUT;
    
 mutex8to1 uut(
    .sw(I),
    .FunSel(FunSel),
    .LED(OUT)
 );
    
initial begin 
    I = 8'hAB; FunSel = 3'b000; #100;
    I = 8'hAB; FunSel = 3'b001; #100;
    I = 8'hAB; FunSel = 3'b010; #100;
    I = 8'hCD; FunSel = 3'b011; #100;
    I = 8'h00; FunSel = 3'b100; #100;
    I = 8'h00; FunSel = 3'b101; #100;
    I = 8'hFF; FunSel = 3'b110; #100;
    I = 8'h10; FunSel = 3'b111; #100;
    $finish;
end
endmodule
