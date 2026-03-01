`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 07:38:02 PM
// Design Name: 
// Module Name: BCDto7Segment
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


module BCDto7Segment(
    input wire [3:0] sw,
    output reg [8:0] O
    );
    /**
      reg[0] = anode
      reg[1] = A
      reg[2] = B
      reg[3] = C
      reg[4] = D
      reg[5] = E
      reg[6] = F
      reg[7] = G
      reg[8] = DP
    **/
    always@(*)
    begin
        case(sw)
        4'b0000 : O = 9'b110000001;
        4'b0001 : O = 9'b111110011;
        4'b0010 : O = 9'b10001001;
        4'b0011 : O = 9'b101100001;
        4'b0100 : O = 9'b100110011;
        4'b0101 : O = 9'b100100101;
        4'b0110 : O = 9'b100000101;
        4'b0111 : O = 9'b111110001;
        4'b1000 : O = 9'b111111111;
        4'b1001 : O = 9'b111011111;
        default : O = 9'b111111111;
        endcase
    end
endmodule
