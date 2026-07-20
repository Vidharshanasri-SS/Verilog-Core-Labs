`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 17:14:17
// Design Name: 
// Module Name: d_ff
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


module d_ff(q,clk,d);
input clk,d;
output reg q;
always @(posedge clk )
begin 
case({d,clk})
2'b00:q <=q;
2'b01:q <=1'b0;
2'b11:q <=1'b1; 
endcase 
end 
endmodule
