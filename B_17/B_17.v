module acumulador(in, out, rst, clk);

input [15:0] in;
input clk, rst;
output reg [15:0]out;

//Ou o clock ou o reset estará ativo/terá prioridade
//O reset é assíncrono, ou seja, quando válido (seja em 0 ou 1),
//reseta o registrador independente do clock
//Se o reset estiver ativo, a saída será zerada
//Se o reset estiver inativo, a saída será somada com a entrada do registrador

always@(posedge clk or posedge rst)
	begin
		if(rst)
			out = 16'b0;
		else
			out = (out + in);
	end
endmodule