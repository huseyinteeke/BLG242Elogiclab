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
    output reg [6:0] seg,
    output reg dp,
    output reg an
    );
    /**
      an = anode
      reg[0] = A
      reg[1] = B
      reg[2] = C
      reg[3] = D
      reg[4] = E
      reg[5] = F
      reg[6] = G
      dp = DP
    **/
    always@(*)
    begin
        case(sw)
        4'b0000 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b100000;
        end
        4'b0001 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b1111001;
        end 
        4'b0010 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b0100100;
        end 
        4'b0011 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b0110000;
        end
        4'b0100 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b0011001;
        end
        4'b0101 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b0010010;
        end
        4'b0110 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b000010;
        end
        4'b0111 :
        begin
            an = 1;
            dp = 1;
            seg = 7'b1111000;
        end
        4'b1000 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b0000000;
        end
        4'b1001 : 
        begin
            an = 1;
            dp = 1;
            seg = 7'b0010000;
        end
        default :
        begin
            an = 1;
            dp = 1;
            seg = 7'b1111111;
        end
        endcase
    end
endmodule
