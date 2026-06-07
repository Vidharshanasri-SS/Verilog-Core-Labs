`timescale 1ns/1ps
module tb_siso;
reg clk,d;
wire q;
siso uut(.q(q),.clk(clk),.d(d));
initial
begin
clk = 0;
forever #10 clk = ~clk;
end
initial
begin
    d = 1; #20;
    d = 0; #20;
    d = 1; #20;
    d = 1; #20;
    d = 0; #20;
    #20;
    $finish;
end
always @(posedge clk)
begin
#1;
$display("time=%0t clk=%b d=%b q=%b",$time,clk,d,q);
end
endmodule