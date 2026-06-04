module siso(q,clk,d);
output q;
input clk,d; 
wire [2:0] w;
d_ff ff_1(w[0],clk,d);
d_ff ff_2(w[1],clk,w[0]);
d_ff ff_3(w[2],clk,w[1]);
d_ff ff_4(q,clk,w[2]);
endmodule
module d_ff(q,clk,d);
input clk,d;
output reg q;
always @(posedge clk)
begin
q <= d;
end
endmodule