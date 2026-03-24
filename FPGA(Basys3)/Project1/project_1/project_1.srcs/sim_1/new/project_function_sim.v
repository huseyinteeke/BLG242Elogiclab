`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2026 12:55:37 PM
// Design Name: 
// Module Name: project_function_sim
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


module project_function_sim();
    reg [3:0] sw;
    wire LED;
    
    project_function uut
    (
        .sw(sw),
        .LED(LED)
    );

initial begin
    sw = 4'b0000;
    #10;
    sw = 4'b0001;
    #10;
    sw = 4'b0010;
    #10;
    sw = 4'b0011;
    #10;
    sw = 4'b0100;
    #10;    
    sw = 4'b0101;
    #10;    
    sw = 4'b0110;
    #10;    
    sw = 4'b0111;
    #10;    
    sw = 4'b1000;
    #10;    
    sw = 4'b1001;
    #10;    
    sw = 4'b1010;
    #10;    
    sw = 4'b1011;
    #10;    
    sw = 4'b1100;
    #10;    
    sw = 4'b1101;
    #10;    
    sw = 4'b1111;
    #10;    
    $finish;  
end
endmodule
