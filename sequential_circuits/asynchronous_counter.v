`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 21:23:51
// Design Name: 
// Module Name: asynchronous_counter
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
module asyn_counter(y,clk,j,k);
  output y;
  input clk,j,k;
  wire [1:0]w;
 
  jk_ff ff_1(w[0],clk,j,k);
  jk_ff ff_2(y,w[0],j,k);
endmodule

module jk_ff(y,clk,j,k);
  output reg y;
  input clk,j,k;
  always @(negedge clk)
    begin
      case({j,k}) 
        2'b00:y=y;
        2'b01:y=1'b0;
        2'b10:y=1'b1;
        2'b11:y=~y;
      endcase
    end
endmodule