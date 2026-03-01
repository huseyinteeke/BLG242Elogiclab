`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2026 01:47:51 PM
// Design Name: 
// Module Name: assign_sim
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


module assign_sim();

    reg A , B , C , D;
    wire OUT;
    
    assign_module sim_assign
    (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .OUT(OUT)
    );
    
    integer i;
    initial begin
    for (i = 0; i < 16; i = i + 1) begin
        {A, B, C, D} = i; 
        #10; 
        $display("Giris: %b | OUT: %b", {A, B, C, D}, OUT);
    end
    $finish;
    end
endmodule
