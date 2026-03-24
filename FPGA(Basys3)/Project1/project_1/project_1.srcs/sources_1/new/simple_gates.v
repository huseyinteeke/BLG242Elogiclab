`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2026 12:40:00 PM
// Design Name: 
// Module Name: simple_gates
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
// VE Kapýsý Modülü
module my_and(
    input a, b, c,
    output out
    );
    assign out = a & b & c;
endmodule

// VEYA Kapýsý Modülü
module my_or(
    input a, b, c , d , 
    output out
    );
    assign out = a | b | c | d;
endmodule

// DEÐÝL Kapýsý Modülü
module my_not(
    input a,
    output out
    );
    assign out = ~a;
endmodule
