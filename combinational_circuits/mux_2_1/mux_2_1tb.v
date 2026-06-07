`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 18:35:48
// Design Name: 
// Module Name: mux_2_1_tb
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
module mux_2_1_tb;
reg a, b,c,d,s1,s2;
wire out;
mux_2_1 uut (.out(out),.s1(s1),.a(a),.b(b),.s2(s2) ,.c(c) ,.d(d));
initial begin
a=1; b=1; c=0 ; d=0 ; s1=0; s2=0;#10;
$display("s1=%b s2=%b a=%b b=%b c=%b d=%b | out=%b", s1,s2,a,b,c,d,out);
a=0; b=0; c=1 ; d=0 ; s1=0; s2=1; #10;
$display("s1=%b s2=%b a=%b b=%b c=%b d=%b | out=%b", s1,s2,a,b,c,d,out);
a=0; b=0; c=0; d=1 ; s1=1; s2=0; #10;
$display("s1=%b s2=%b a=%b b=%b c=%b d=%b | out=%b", s1,s2,a,b,c,d,out);
a=0; b=0; c=0 ; d=1 ; s1=1; s2=1; #10;
$display("s1=%b s2=%b a=%b b=%b c=%b d=%b | out=%b", s1,s2,a,b,c,d,out);
$finish;
end
endmodule
