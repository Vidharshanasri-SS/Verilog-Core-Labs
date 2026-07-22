`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 17:44:14
// Design Name: 
// Module Name: tb_seq_det_1001
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
module tb_seq_det_1001;
reg clk,reset,in;
wire y;

seq_det_1001 uut(.clk(clk), .reset(reset), .in(in), .y(y));

initial
begin 
clk=0;
reset=1;
in=0;
#25;
reset=0;
end 

always 
#10 clk =~clk;

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
in=0; #20;
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


always@(posedge clk)
begin 
#20;

$display("t=%0t | in=%b | state=%b | next=%b | y=%b",$time, in, uut.s, uut.ns, y);
end


endmodule