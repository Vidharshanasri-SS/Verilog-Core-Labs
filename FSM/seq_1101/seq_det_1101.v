module seq_det_1101(y,in,clk,reset);
input in,clk,reset;
output reg y;
reg [1:0]s,ns;

localparam
s0=2'b00,
s1=2'b01,
s2=2'b10,
s3=2'b11;

always @(posedge clk or posedge reset)
begin 
if (reset==0)
s<=ns;
else 
s<=s0;
end

always @(*)
begin
ns=s;
y = 1'b0;
case(s)
s0:
begin 
if(in)
ns=s1;
else 
ns=s0;
end
s1:
begin
if(in)
ns=s2;
else
ns=s0;
end
s2:
begin
if(in) 
ns=s2;
else 
ns=s3;
end 
s3:
begin
if(in)
begin 
y=1'b1;
ns=s1;
end 
else 
ns=s0;
end 
endcase
end

endmodule 
