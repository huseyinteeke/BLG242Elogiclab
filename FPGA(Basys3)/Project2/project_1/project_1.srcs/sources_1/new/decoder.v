`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 10:41:04 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input   wire [2:0] sw,
    output  reg [7:0] LED 
    );
    
    
    always @(*)
    begin
        if(sw == 3'b000)
        begin
            LED = 8'h01;
        end
        else if(sw == 3'b001)
        begin
            LED = 8'h02;
        end
        else if(sw == 3'b010)
        begin
            LED = 8'h04;
        end       
        else if(sw == 3'b011)
        begin
            LED = 8'h08;
        end       
        else if(sw == 3'b100)
        begin
            LED = 8'h10;
        end        
        else if(sw == 3'b101)
        begin
            LED = 8'h20;
        end        
        else if(sw == 3'b110)
        begin
            LED = 8'h40;
        end        
        else
        begin
            LED = 8'h80;
        end   
    end
    
endmodule
