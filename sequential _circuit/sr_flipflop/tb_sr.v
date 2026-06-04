`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2026 12:19:04
// Design Name: 
// Module Name: tb_sr
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

`timescale 1ns/1ps

module tb_sr;

reg clk,s,r;
wire q;

sr uut(
    .clk(clk),
    .s(s),
    .r(r),
    .q(q)
);

initial
begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial
begin
    s = 0; r = 0;

    #20 s = 0; r = 1;
    #20 s = 1; r = 0;
    #20 s = 1; r = 1;

    #20 $finish;
end

always @(posedge clk)
begin
    #1;
    $display("time=%0t clk=%b s=%b r=%b q=%b",
              $time,clk,s,r,q);
end

endmodule
