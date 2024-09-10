`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:47:18 PM
// Design Name: 
// Module Name: Multiplexer2_tb
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

`timescale 1ns/1ps
module Multiplexer2_tb;
wire [1:0]y; //output 
reg [1:0]a,b,c,d;
reg [1:0]s; //input
 
// Instantiate original module (named DUT {device under test}) 
Multiplexer2 uut (a,b,c,d,s,y);

initial begin 
    #10 a=2'b01;b=2'b00;c=2'b00;d=2'b00;s=2'b00;
    #10 a=2'b00;b=2'b01;c=2'b00;d=2'b00;s=2'b01;
    #10 a=2'b00;b=2'b00;c=2'b01;d=2'b00;s=2'b10;
    #10 a=2'b00;b=2'b00;c=2'b00;d=2'b01;s=2'b11;


	#10 $stop;

end 

 
endmodule

