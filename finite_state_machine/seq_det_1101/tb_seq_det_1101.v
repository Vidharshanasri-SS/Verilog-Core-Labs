`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 18:08:22
// Design Name: 
// Module Name: tb_seq_det_1101
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
module tb_seq_det_1101;
reg clk,reset,in;
wire y;
integer x;

seq_det_1101 uut(.clk(clk), .reset(reset), .in(in), .y(y));

initial 
begin 
clk=0;
reset=1;
in=0;
#20;
reset=0;
end 

always #10 clk =~clk;

initial 
begin 
#25;
for(x=0;x<20;x=x+1)
begin
in=$random; #20;
end 
#20;
$finish;
end 

always @(posedge clk)
begin
#20;
$display("input=%b | output=%b | time=%0t",in,y,$time);
end 

endmodule