`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 17:22:44
// Design Name: 
// Module Name: tb_d
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


module tb_d;
reg clk,d;
wire q;
d_ff uut (.q(q), .clk(clk), .d(d));
initial 
begin 
clk =0;
forever 
#10 clk =~clk ;
end 
initial 
begin 
d=0;clk=0; #20;
d=0;clk=1; #20;
d=1;clk=1; #20; 
$finish;
end
always @(posedge clk )
begin 
#1;
$display ("clk=%b d=%b q=%b",clk,d,q);
end
endmodule
