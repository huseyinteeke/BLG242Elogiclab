`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2026 08:25:21 AM
// Design Name: 
// Module Name: ClockGenerator
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


module ClockGenerator(
    input wire clk,
    input wire reset_n,
    output reg clk_1Hz = 1'b0
    );
    //clk_1Hz çýktýsý lede baðlanmalý.
    localparam TARGET_COUNT = 32'd200;
    reg [31:0] count_reg = 32'd0;
    //clk_1Hz <= 1'b0;
    always @(posedge clk or negedge reset_n) 
    begin
        if (!reset_n) 
        begin
    // Donanýmsal Reset: Glitch oluþmamasý için tüm deðerleri temizle
            count_reg <= 32'd0;
            clk_1Hz   <= 1'b0;
        end 
        else 
        begin
            if (count_reg == TARGET_COUNT) 
            begin
                count_reg <= 32'd0;       // Sayýcýyý baþa sar
                clk_1Hz   <= ~clk_1Hz;    // Çýkýþý tersle (0 -> 1 veya 1 -> 0)
            end 
            else 
            begin
                count_reg <= count_reg + 1'b1;
            end
        end
    end
endmodule
