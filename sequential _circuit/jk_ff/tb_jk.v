`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 18:44:32
// Design Name: 
// Module Name: tb_jk
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


module tb_jk;
reg clk,j,k;
wire q;
jk_ff uut (.q(q), .clk(clk), .j(j), .k(k));
initial 
begin 
clk=0;
forever #10 clk =~clk ;
end
initial 
begin 
j=0;k=0;#20;
j=0;k=1;#20;
j=1;k=0;#20;
j=1;k=1;#20;
$finish;
end  
always @(posedge clk)
begin 
#1;
$display("clk=%b | j=%b | k=%b | q=%b",clk,j,k,q);
end
endmodule
