`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 08:34:29 PM
// Design Name: 
// Module Name: priorityencoder
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


module priorityencoder(
    input wire [7:0] sw,
    output reg [2:0] LED
    );
    
    always@(*)
    begin
    if(~(sw[7]))
    begin
        if(~(sw[6]))
        begin
            if(~(sw[5]))
            begin
                if(~(sw[4]))
                begin
                    if(~(sw[3]))
                    begin
                        if(~(sw[2]))
                        begin
                            if(~(sw[1]))
                            begin
                                if(~(sw[0]))
                                begin
                                    LED = 3'b000; 
                                end
                                else LED = 3'b000;
                            end
                            else LED = 3'b001;
                        end
                        else LED = 3'b010;
                    end
                    else LED = 3'b011;
                end
                else LED = 3'b100;
            end
            else LED = 3'b101;
        end
        else LED = 3'b110;
    end
    else LED = 3'b111;
    end
    
endmodule
