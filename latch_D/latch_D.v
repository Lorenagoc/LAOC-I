module latch_D(HAB,D,Q);
  
input HAB,D;
output reg Q;

initial begin
  Q = 1'b0;
end
  
  always@(HAB or D)
    if(HAB == 1)
      Q <= D;
    else
      Q = Q;
endmodule