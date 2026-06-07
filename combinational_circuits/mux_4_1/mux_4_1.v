`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 17:36:46
// Design Name: 
// Module Name: mux_2_1
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
module mux_4_1(out,s1,s2,a,b,c,d);
output reg out;
input a,b,c,d,s1,s2;
always @ (s1 or s2)
begin 
case({s1,s2})
2'b00:out=a; 
2'b01:out=b;
2'b10:out=c;
default:out=d;
endcase
end
endmodule
