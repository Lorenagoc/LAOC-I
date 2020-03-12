module registrador(dado, clock, habilita_escrita, saida);
//Lorena Gomes de Oliveira Cabral

	input [15:0] dado;
	input clock;
	input habilita_escrita;
	output reg [15:0] saida;
	
	always@(posedge clock)
		if(habilita_escrita)
			saida <= dado;
		else
			saida <= 0;

endmodule
