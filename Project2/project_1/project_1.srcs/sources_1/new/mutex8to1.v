`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 04:24:15 PM
// Design Name: 
// Module Name: mutex8to1
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


module mutex8to1(
    input wire [7:0] sw,
    input wire [2:0] FunSel,
    output reg LED
    );
    always @(*)
    begin
        if(FunSel == 3'b000)
            begin
            LED = sw[0];
            end
        else if(FunSel == 3'b001)
            begin
            LED = sw[1];
            end
        else if(FunSel == 3'b010)
                begin
                LED = sw[2];
                end
        else if(FunSel == 3'b011)
                    begin
                    LED = sw[3];
                    end
        else if(FunSel == 3'b100)
                        begin
                        LED = sw[4];
                        end                    
        else if(FunSel == 3'b101)
                        begin
                        LED = sw[5];
                        end
        else if(FunSel == 3'b110)
                        begin
                        LED = sw[6];
                        end
        else if(FunSel == 3'b111)
                        begin
                        LED = sw[7];
                        end
        else
                        begin
                        LED = 0;
                        end

    end 
endmodule
