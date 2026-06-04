module tb_mux_64;
reg [5:0]s;
reg [63:0]i;
wire out;
integer x;
mux64_1 uut(.out(out), .s(s), .i(i));
initial
begin
for(x=0;x<30;x=x+1)
begin 
i={$random,$random};
s=$random% 64; #10;
end 
$finish; 
end 
initial 
begin
$monitor("s=%b | i=%b | out=%b",s,i,out);
end  
endmodule
