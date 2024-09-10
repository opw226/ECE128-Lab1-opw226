`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 02:00:29 PM
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    input g,
    input h,
    input s0,
    input s1,
    input s2,
    output y
    );
    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
    
    not not1(n1, s0);
    not not2(n2, s1);
    not not3(n3, s2);
    and and1(n4, n1,n2,n3,a);
    and and2(n5, n1,n2,s2,b);
    and and3(n6, n1,s1,n3,c);
    and and4(n7, n1,s1,s2,d);
    and and5(n8, s0,n2,n3,e);
    and and6(n9, s0,n2,s2,f);
    and and7(n10, s0,s1,n3,g);
    and and8(n11, s0,s1,s2,h);
    or or1(y, n4, n5, n6, n7, n8, n9, n10, n11);
    
endmodule
