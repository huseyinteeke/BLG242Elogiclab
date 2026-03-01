`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2026 12:45:02 PM
// Design Name: 
// Module Name: project_function
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


module project_function(
    input [3:0] sw,
    output LED
    );
    
    
    wire minterm1 , minterm2 , minterm3 , minterm4;
    wire not_a , not_b , not_c , not_d;
    
    
    
    my_and and1
    (
    .a(sw[2]),
    .b(sw[3]),
    .c(1),
    .out(minterm1)
    );
    
    my_and and2
    (
    .a(sw[1]),
    .b(sw[3]),
    .c(1),
    .out(minterm2)
    );
    
    my_not not1
    (
    .a(sw[0]),
    .out(not_a)
    );
    my_not not2
    (
    .a(sw[1]),
    .out(not_b)
    );
    
    my_not not3
    (
    .a(sw[2]),
    .out(not_c)
    );
    my_not not4
    (
    .a(sw[3]),
    .out(not_d)
    );
    
    my_and and3
    (
    .a(sw[0]),
    .b(not_c),
    .c(not_d),
    .out(minterm3)
    );
    my_and and4
    (
    .a(not_a),
    .b(not_b),
    .c(not_c),
    .out(minterm4)
    );
    
    wire result;
    my_or last
    (
    .a(minterm1),
    .b(minterm2),
    .c(minterm3),
    .d(minterm4),
    .out(result)
    );
    
    assign LED = result;
    
    
    
endmodule
