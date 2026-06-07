module mux(o,s,x,y);
    output o;
    input s,x,y;
    wire [1:0] w;
    wire S;
    not g4(S,s);
    and g1(w[0],S,x);  
    and g2(w[1],s,y);   
    or  g3(o,w[0],w[1]);
endmodule


module d_ff(y,clk,d);
    output reg y;
    input clk,d;
    always @(posedge clk)
    begin
        y <= d;
    end
endmodule

module piso_register(y,s,clk,i,sin);
    output y;
    input s,clk,sin;
    input [3:0] i;
    wire [5:0] w;
    wire n;
    sub_mod mod_0(n,s,sin,i[0]);
    d_ff ff_1(w[0],clk,n);
    sub_mod mod_1(w[1],s,w[0],i[1]);
    d_ff ff_2(w[2],clk,w[1]);
    sub_mod mod_2(w[3],s,w[2],i[2]);
    d_ff ff_3(w[4],clk,w[3]);
    sub_mod mod_3(w[5],s,w[4],i[3]);
    d_ff ff_4(y,clk,w[5]);

endmodule
