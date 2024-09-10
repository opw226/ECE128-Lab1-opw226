`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:44:09 PM
// Design Name: 
// Module Name: Multiplexer3
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


module Multiplexer3(
    input [1:0]a,
    input [1:0]b,
    input [1:0]c,
    input [1:0]d,
    input [1:0]s,
    output reg [1:0]y
    );
    
    always@(*)
    begin
        case(s)
            2'b00 : y = a;
            2'b01 : y = b;
            2'b10 : y = c;
            2'b11 : y = d;
            default : y = 2'bx;
         endcase
    end
    
    

endmodule

