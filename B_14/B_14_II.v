module FUNC2(out,ctl,clk,reset);
  
  output [7:0] out;
  input ctl, clk, reset;
  reg [7:0] out;
  
  always @(posedge clk)
    
    if (reset) begin
      out <= 8'b00000000;
    end
    else if (ctl) begin
      out <= out + 1;
    end
    else begin
      out <= out - 1;
    end
    
endmodule

//A fun��o implementada acima � um contador ass�ncrono de 8 bits
//sendo o ctrl o controle, out a sa�da, clk o clock e reset a entrada que zera/limpa o contador