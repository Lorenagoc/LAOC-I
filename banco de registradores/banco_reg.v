module banco_reg(Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, clock);

	input [2:0] Read1, Read2, WriteReg;
	input [15:0] WriteData;
	input RegWrite, clock;
	output [15:0] Data1,Data2;
	wire [7:0] saida_decodificador;
	wire [7:0] saida_reg0, saida_reg1, saida_reg2, saida_reg3, saida_reg4, saida_reg5, saida_reg6, saida_reg7;
	
	
	//registrador(dado, clock, habilita_escrita, saida);
	//Usaremos um array de registradores, sendo que os dados contidos neles serão as únicas saídas
	
	registrador reg0(entrada1, clock, saida_decodificador[0] & RegWrite, saida_reg0);
	registrador reg1(entrada1, clock, saida_decodificador[1] & RegWrite, saida_reg1);
	registrador reg2(entrada1, clock, saida_decodificador[2] & RegWrite, saida_reg2);
	registrador reg3(entrada1, clock, saida_decodificador[3] & RegWrite, saida_reg3);
	registrador reg4(entrada1, clock, saida_decodificador[4] & RegWrite, saida_reg4);
	registrador reg5(entrada1, clock, saida_decodificador[5] & RegWrite, saida_reg5);
	registrador reg6(entrada1, clock, saida_decodificador[6] & RegWrite, saida_reg6);
	registrador reg7(entrada1, clock, saida_decodificador[7] & RegWrite, saida_reg7);
	
	//decodificador(entrada, saida);
	//Usaremos um decodificador para cada porta de leitura ou escrita, no caso a porta Write
	
	 decodificador dec1(WriteAdd, saida_dec);
	
	//multiplexador(entrada0, entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, controle, saida);
	//As postar de leitura serão implementadas com um par de multiplexadores
	
	multiplexador mux1(saida_reg0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,saida_reg6,saida_reg7,Read1,Data1);
	multiplexador mux2(saida_reg0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,saida_reg6,saida_reg7,Read2,Data2); 

endmodule
