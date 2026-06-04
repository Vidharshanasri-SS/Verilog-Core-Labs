`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 16:57:05
// Design Name: 
// Module Name: pipo_register
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
module d_ff(y,clk,d);
output reg y;
input clk,d;
always @(posedge clk)
begin 
y <= d;
end
endmodule

module pipo_register(y,clk,i);
output [3:0]y;
input clk;
input [3:0]i;
wire [3:0]w;
d_ff ff_1(y[0],clk,i[0]);
d_ff ff_2(y[1],clk,i[1]);
d_ff ff_3(y[2],clk,i[2]);
d_ff ff_4(y[3],clk,i[3]);
endmodule  
