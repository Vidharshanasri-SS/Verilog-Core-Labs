module tb_seq_det_1011;
reg clk,reset,in;
wire detect;
integer x;

seq_det_1011 uut(.clk(clk), .reset(reset), .in(in), .detect(detect));

initial 
begin 
clk=0;
reset=1;
in=0;
#20;
reset=0;
end 

always #10 clk =~clk;

initial 
begin 
#25;
for(x=0;x<20;x=x+1)
begin
in=$random; #20;
end 
#20;
$finish;
end 

always @(posedge clk)
begin
#20;
$display("input=%b | output=%b | time=%0t",in,detect,$time);
end 

endmodule