`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 17:35:44
// Design Name: 
// Module Name: seq_det_1001
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
module seq_det_1001(y,clk,reset,in);
input clk,reset,in;
output reg y;
reg [1:0]s,ns;
localparam
s0=2'b00,
s1=2'b01,
s2=2'b10,
s3=2'b11;
always@(posedge clk or posedge reset )
begin
if (reset)
s<=s0;
else 
s<=ns;
end 
always @(*)
begin
y=1'b0;
ns=s;
case(s) 
s0:
begin 
if(in)
ns=s1;
else 
ns=s0;
end 
s1:
begin 
if(in)
ns=s1;
else 
ns=s2;
end 
s2:
begin
if(in)
ns=s1;
else 
ns=s3;
end 
s3:
begin 
if(in)
begin 
y=1'b1;
ns=s1;
end 
else 
ns=s0;
end 
endcase 
end
endmodule
