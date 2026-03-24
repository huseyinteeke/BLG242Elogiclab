`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2026 09:14:01 AM
// Design Name: 
// Module Name: digitsDecimal
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


module digitsDecimal(
    input wire clk,           // 100 MHz sistem saati
    input wire reset_n,       // Negatif (Active-low) reset
    output reg [6:0] seg,     // Segmentler (a-g, aktif düþük)
    output reg [3:0] an       // Anotlar (basamak seçimi, aktif düþük)s
    );
// 1. Adým: 4 Basamak Ýçin BCD Kaydediciler
reg [3:0] bcd1, bcd2, bcd3, bcd4;

// 2. Adým: Refresh Sayýcý (Yenileme Hýzý Ýçin)
// 100MHz / 2^18 ? 381Hz (Toplam). Her basamak ? 95Hz'de bir yanar.
reg [17:0] refresh_counter = 18'd0;
wire [1:0] digit_select;

function [6:0] bcd_to_7seg(input [3:0] bcd);
    case (bcd)
        4'h0: bcd_to_7seg = 7'b1000000; // 0
        4'h1: bcd_to_7seg = 7'b1111001; // 1
        4'h2: bcd_to_7seg = 7'b0100100; // 2
        4'h3: bcd_to_7seg = 7'b0110000; // 3
        4'h4: bcd_to_7seg = 7'b0011001; // 4
        4'h5: bcd_to_7seg = 7'b0010010; // 5
        4'h6: bcd_to_7seg = 7'b0000010; // 6
        4'h7: bcd_to_7seg = 7'b1111000; // 7
        4'h8: bcd_to_7seg = 7'b0000000; // 8
        4'h9: bcd_to_7seg = 7'b0010000; // 9
        default: bcd_to_7seg = 7'b1111111; // Kapalý
    endcase
endfunction

always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            // Reset anýnda rastgele (arbitrary) sayýlar
            bcd1 <= 4'h1; bcd2 <= 4'h3; bcd3 <= 4'h3; bcd4 <= 4'h7; 
            refresh_counter <= 18'd0;
        end else begin
            refresh_counter <= refresh_counter + 1'b1;
        end
    end

assign digit_select = refresh_counter[17:16];


always @(*) begin
        case (digit_select)
            2'b00: begin
                an = 4'b1110;           // 1. Basamak aktif
                seg = bcd_to_7seg(bcd1);
            end
            2'b01: begin
                an = 4'b1101;           // 2. Basamak aktif
                seg = bcd_to_7seg(bcd2);
            end
            2'b10: begin
                an = 4'b1011;           // 3. Basamak aktif
                seg = bcd_to_7seg(bcd3);
            end
            2'b11: begin
                an = 4'b0111;           // 4. Basamak aktif
                seg = bcd_to_7seg(bcd4);
            end
        endcase
    end


endmodule
