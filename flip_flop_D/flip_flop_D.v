module flip_flop_D(D,Q,clk);
  
input D,clk;
output reg Q;

always @(posedge clk)
  begin
    Q <= D;
  end
endmodule
