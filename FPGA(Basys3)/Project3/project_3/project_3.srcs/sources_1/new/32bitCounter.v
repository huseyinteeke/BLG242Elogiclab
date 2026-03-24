`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2026 08:08:04 AM
// Design Name: 
// Module Name: 32bitCounter
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


module bit32Counter(
    input wire clock,
    input wire reset,
    output reg [31:0] LED
    );
    
    always @(posedge clock or negedge reset)
    begin
    
    if(!reset) begin
    LED <= 32'd0;
    end else begin
    LED <= LED+ 1'b1;
    end
    end
    
endmodule
