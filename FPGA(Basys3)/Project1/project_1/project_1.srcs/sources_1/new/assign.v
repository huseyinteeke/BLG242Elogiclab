`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2026 01:45:20 PM
// Design Name: 
// Module Name: assign
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


module assign_module(
    input A,
    input B,
    input C,
    input D,
    input OUT
    );
    
    assign OUT = (C&D) | (B&D) | (A & (~C) & (~D)) | ((~A) & (~B) & (~C));
endmodule
