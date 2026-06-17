`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 13:16:57
// Design Name: 
// Module Name: seq_det_1011
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
module seq_det_1011(detect,clk,reset,in);
input clk,reset,in;
output reg detect;
localparam s0=2'b00,
s1=2'b01,
s2=2'b10,
s3=2'b11;
reg [1:0] s,ns;
always @(posedge clk or posedge reset )
begin 
if (reset==1)
s<=s0;
else 
s<=ns;
end 
always @(*)
begin
ns=s;
detect = 1'b0;
case(s)
s0:begin
if(in==1)
ns=s1;
else
ns=s0;
end
s1:begin 
if(in==1)
ns=s1;
else 
ns=s2;
end 
s2:begin
if(in==1)
ns=s3;
else 
ns=s0;
end
s3:begin
if(in==1)
begin
detect = 1'b1;
ns=s1;
end 
else
ns=s2;
end 
default 
begin 
ns=s0;
detect =1'b0; 
end 
endcase 
end 
endmodule
