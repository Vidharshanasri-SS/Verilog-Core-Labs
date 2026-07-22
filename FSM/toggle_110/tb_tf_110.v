`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 17:14:12
// Design Name: 
// Module Name: tb_tf_110
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


module tb_tf_110;
reg reset,in,clk;
wire y;
integer x;

tf_110 uut(.clk(clk), .reset(reset), .in(in), .y(y));

initial 
begin
clk=0;
reset=1;
#20;
reset=0;
end 

always #10 clk=~clk;

initial 
begin 
#25;
in=1; #20;
in=0; #20;
in=0; #20;
in=1; #20;
in=1; #20;
in=0; #20;
in=1; #20;
in=0; #20; 
in=1; #20;
in=0; #20;
in=0; #20;
in=1; #20;
in=1; #20;
in=0; #20;
in=1; #20;
in=0; #20;
in=0; #20;
in=0; #20;
in=1; #20;
in=1; #20;
#20;
$finish;
end 

always @ (posedge clk)
begin 
#20;
$display("input=%b | output=%b | s=%b | ns=%b",in,y,uut.s,uut.ns);
end 

endmodule
