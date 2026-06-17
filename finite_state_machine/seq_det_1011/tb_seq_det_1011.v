module tb_seq_det_1011;
reg clk, reset, in;
wire detect;
integer x;
seq_det_1011 uut(.clk(clk),.reset(reset),.in(in),.detect(detect));
always #10 clk = ~clk;
initial
begin
clk = 0;
reset = 1;
in = 0;
#10;
reset = 0;
end
initial
begin
for(x=0; x<10; x=x+1)
begin
in =$random&1;
#20;
end
$finish;
end
always @(posedge clk) 
begin
    $display("time=%0t in=%b detect=%b",
             $time, in, detect);
end
endmodule