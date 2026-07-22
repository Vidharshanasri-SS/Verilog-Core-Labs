`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 17:05:34
// Design Name: 
// Module Name: tf_110
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
module tf_110(y,reset,clk,in);
output reg y;
input reset,clk,in; 
reg [2:0] ns,s; 

localparam 
s0=3'b000,
s1=3'b001,
s2=3'b010,
s3=3'b100,
s4=3'b101,
s5=3'b110,
s6=3'b111;

always @ (posedge clk or posedge reset)
begin
if (reset)
    s<=s0;
else
    s<=ns;
end

always @(*)
begin 
y=1'b0;
ns=s; 
case(s)

s0:begin 
if(in)
    ns=s1;
else 
    ns=s0;
end

s1:begin 
if(in)
    ns=s2;
else
    ns=s0;
end

s2:begin 
if(in)
    ns=s2;
else
    begin 
    y=1'b1;
    ns=s3;
    end
end 

s3:begin 
if(in)
    begin 
    y=1'b1;
    ns=s5;
    end
else 
    begin 
    y=1'b1;
    ns=s4;
    end
end

s4:begin
if(in)
    begin 
    y=1'b1;
    ns=s5;
    end
else
    begin 
    y=1'b1;
    ns=s4;
    end
end
  
s5:begin
if(in)
    begin 
    y=1'b1;
    ns=s6;
    end
else
    begin 
    y=1'b1;
    ns=s4;
    end
end 

s6:begin
if(in)
    begin 
    y=1'b1;
    ns=s6;
    end
else 
    begin 
    y=1'b0;
    ns=s0;
    end
end 

endcase
end
endmodule
