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
integer x;

seq_det_1001 uut(.clk(clk), .reset(reset), .in(in), .y(y));

always #10 clk= ~clk;

initial 
begin 
clk=0;
reset=1;
in=0;
#10;
reset=0;
end 
 
initial
begin
clk=0;
#20;
in=1; #20;
in=0; #20;
in=0; #20;
in=1; #20;
in=0; #20;
in=0; #20;
in=1; #20;
in=1; #20;
in=1; #20; 
in=0; #20;
in=0; #20; 
in=0; #20;
in=1; #20; 
in=0; #20;
in=0; #20;
in=1; #20;
in=0; #20;
in=1; #20;
in=0; #20; 
in=1; #20;
#20;
$finish;
end 
 
initial
begin 
$monitor("time=%0t in=%b state=%b next=%b y=%b",$time, in, uut.s, uut.ns, y);
end 

endmodule
