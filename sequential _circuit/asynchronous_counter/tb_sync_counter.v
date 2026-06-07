`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 21:57:48
// Design Name: 
// Module Name: tb_sync
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
module tb_async;
  wire y;
  reg clk,j,k;
  integer x;
  asyn_counter uut(.y(y), .clk(clk), .j(j), .k(k));
  initial
    begin
      clk=0;
      forever #10 clk = ~clk; 
    end
  initial 
    begin
      for(x=0;x<5;x=x+1)
      begin 
        j=$random;
        k=$random; 
        #10;  
      end
      $finish;
   end
   always@(negedge clk)  
        begin
          $display("clk=%b j=%b k=%b y=%b",clk,j,k,y);
        end
endmodule 