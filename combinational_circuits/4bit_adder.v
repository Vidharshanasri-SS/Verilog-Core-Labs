`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2026 10:57:43
// Design Name: 
// Module Name: rca
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


module rca(s,cout,a,b,cin);
output cout;
output [3:0]s;
input [3:0]a,b;
input cin;
wire [2:0]c;
fa fa_1(s[0],c[0],a[0],b[0],cin);
fa fa_2(s[1],c[1],a[1],b[1],c[0]);
fa fa_3(s[2],c[2],a[2],b[2],c[1]);
fa fa_4(s[3],cout,a[3],b[3],c[2]);
endmodule

module fa(s,cout,a,b,cin);
output s,cout;
input a,b,cin;
assign s=a^b^cin;
assign cout= a&b|(a|b)&cin;
endmodule
