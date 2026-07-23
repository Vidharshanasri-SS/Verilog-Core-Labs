`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 21:37:22
// Design Name: 
// Module Name: sipo_register
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
module sipo_register(y,clk,d); 
output y;
input clk,d;
wire[2:0]w;
d_ff ff_1(w[0],clk,d);
d_ff ff_2(w[1],clk,w[0]);
d_ff ff_3(w[2],clk,w[1]);
d_ff ff_4(y,clk,w[2]);
endmodule

module d_ff(y,clk,d);
output reg y;
input clk,d;
always @(clk)
begin
y <= d;
end
endmodule