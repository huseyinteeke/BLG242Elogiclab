`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 11:07:38 PM
// Design Name: 
// Module Name: advanced_circuits
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


module advanced_circuits(
    input wire [7:0] sw,
    input wire [2:0] FunSel, 
    output [8:0] LED,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );

    assign an[3:1] = 3'b111;
    
    decoder dec1(
       .sw(sw[2:0]),
       .LED(LED[7:0])
    );
    
    BCDto7Segment segment1(
        .sw(sw[3:0]),
        .seg(seg),
        .dp(dp),
        .an(an[0])
    );

    mutex8to1 mux1(
        .sw(sw),
        .FunSel(FunSel),
        .LED({LED[8]})
    );


    
    
endmodule
