`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 18:07:01
// Design Name: 
// Module Name: mux
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
module mux64_1(out,s,i);
output out;
input [5:0]s;
input [63:0]i;
wire [1:0]w;
mux32_1 mux_1(w[0],s[4:0],i[31:0]);
mux32_1 mux_2(w[1],s[4:0],i[63:32]);
mux2_1 mux_3(out,s[5],w[1:0]);
endmodule

module mux32_1(out,s,i);
output out;
input [4:0]s;
input [31:0]i;
wire [1:0]w;
mux16_1 mux_1(w[0],s[3:0],i[15:0]);
mux16_1 mux_2(w[1],s[3:0],i[31:16]);
mux2_1 mux_3(out,s[4],w[1:0]);
endmodule 

module mux16_1(out,s,i);
output out;
input [15:0]i;
input [3:0]s;
wire [13:0]w;
mux2_1 m1(w[0],s[0],i[1:0]);
mux2_1 m2(w[1],s[0],i[3:2]);
mux2_1 m3(w[2],s[0],i[5:4]);
mux2_1 m4(w[3],s[0],i[7:6]);
mux2_1 m5(w[4],s[0],i[9:8]);
mux2_1 m6(w[5],s[0],i[11:10]);
mux2_1 m7(w[6],s[0],i[13:12]);
mux2_1 m8(w[7],s[0],i[15:14]);
mux2_1 m9(w[8],s[1],w[1:0]);
mux2_1 m10(w[9],s[1],w[3:2]);
mux2_1 m11(w[10],s[1],w[5:4]);
mux2_1 m12(w[11],s[1],w[7:6]);
mux2_1 m13(w[12],s[2],w[9:8]);
mux2_1 m14(w[13],s[2],w[11:10]);
mux2_1 m15(out,s[3],w[13:12]);
endmodule 

module mux2_1(out,s,i);
output out;
input s;
wire [2:0]w;
input [1:0]i;
not g1(w[0],s);
and g2(w[1],w[0],i[0]);
and g3(w[2],i[1],s);
or g4 (out,w[2],w[1]);
endmodule 
