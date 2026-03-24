`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 08:06:14 PM
// Design Name: 
// Module Name: BCDsim
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


module BCDsim();


    reg [3:0] I;
    wire [6:0] SEGMENT;
    wire dp; // Döngü için tam sayý deðiþkeni
    wire an;
    // Unit Under Test (UUT)
    BCDto7Segment bcdundertest(
        .sw(I),
        .seg(SEGMENT),
        .dp(dp),
        .an(an)
    );

    initial begin
        // 0'dan 15'e kadar tüm olasýlýklarý döngüyle dene
        I = 4'b0000; #30;
        I = 4'b0001; #30;
        I = 4'b0010; #30;
        I = 4'b0011; #30;
        I = 4'b0100; #30;
        I = 4'b0101; #30;
        I = 4'b0110; #30;
        I = 4'b0111; #30;
        I = 4'b1000; #30;
        I = 4'b1001; #30;
        I = 4'b1010; #30;
        I = 4'b1011; #30;
        I = 4'b1100; #30;
        I = 4'b1101; #30;
        I = 4'b1111; #30;

    $finish;
        $display("Simulation Finished.");
        $finish;
    end

endmodule
