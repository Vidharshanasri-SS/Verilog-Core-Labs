`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 21:45:46
// Design Name: 
// Module Name: tb_sipo
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



module tb_sipo;
reg clk,d;
wire y;
integer x;
wire [2:0]w;
sipo_register uut(.y(y), .clk(clk), .d(d));
initial
begin 
clk=0;
forever #10 clk = ~clk;
end 
initial 
begin
for(x=0;x<5;x=x+1)
begin 
d=$random;
#10;
end
$finish;
end
initial 
begin
$monitor("d=%b w[0]=%b w[1]=%b w[2]=%b y=%b",d,uut.w[0], uut.w[1], uut.w[2], y);
end
endmodule
