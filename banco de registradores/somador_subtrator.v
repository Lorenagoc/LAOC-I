module somador_subtrator(entrada0,entrada1,controle,saida);

	input [15:0] entrada0, entrada1;
	input controle;
	output reg [15:0] saida;
	
	always@(*)
		case(controle)
			
			1'b0: saida = entrada0 + entrada1;
			1'b1: saida = entrada0 + ~entrada1 + 1;
		endcase
endmodule
