`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:46:02 PM
// Design Name: 
// Module Name: Multiplexer2
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


module Multiplexer2(
    input [1:0]a,
    input [1:0]b,
    input [1:0]c,
    input [1:0]d,
    input s0,
    input s1,
    output [1:0]y
    );
    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
    
    not not1(n1, s0);
    not not2(n2, s1);
    and and1(n3, n1,n2,a[0]);
    and and2(n4, n1,n2,a[1]);
    and and3(n5, s0,n2,b[0]);
    and and4(n6, s0,n2,b[1]);
    and and5(n7, n1,s1,c[0]);
    and and6(n8, n1,s1,c[1]);
    and and7(n9, s0,s1,d[0]);
    and and8(n10, s0,s1,d[1]);
    or or1(y[0], n3, n5, n7, n9);
    or or2(y[1], n4, n6, n8, n10);

endmodule
