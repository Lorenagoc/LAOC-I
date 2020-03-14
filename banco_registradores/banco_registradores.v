module banco_registradores(Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, clock);
//Lorena Gomes de Oliveira Cabral

	input [2:0] Read1, Read2, WriteReg; //Registrador de leitura 1, Registrador de leitura 2, Registrador para escrita
	input [15:0] WriteData; //dados para escrita
	input RegWrite; //controle de escrita
	input clock; //clock para acionar a escrita
	output [15:0] Data1,Data2; //valores dos registradores lidos
	wire [7:0] saida_decodificador;
	wire [15:0] saida_reg0, saida_reg1, saida_reg2, saida_reg3, saida_reg4, saida_reg5, saida_reg6, saida_reg7; //saída dos registradores

	//Usaremos um decodificador para cada porta de leitura ou escrita
	//decodificador(entrada, saida);
	 decodificador dec1(WriteReg, saida_decodificador);
		
	//Usaremos um array de registradores, sendo que os dados contidos neles serão as únicas saídas	
	//registrador(dado, clock, habilita_escrita, saida);	
	registrador reg0(WriteData, clock, saida_decodificador[0] & RegWrite, saida_reg0);
	registrador reg1(WriteData, clock, saida_decodificador[1] & RegWrite, saida_reg1);
	registrador reg2(WriteData, clock, saida_decodificador[2] & RegWrite, saida_reg2);
	registrador reg3(WriteData, clock, saida_decodificador[3] & RegWrite, saida_reg3);
	registrador reg4(WriteData, clock, saida_decodificador[4] & RegWrite, saida_reg4);
	registrador reg5(WriteData, clock, saida_decodificador[5] & RegWrite, saida_reg5);
	registrador reg6(WriteData, clock, saida_decodificador[6] & RegWrite, saida_reg6);
	registrador reg7(WriteData, clock, saida_decodificador[7] & RegWrite, saida_reg7);
		
	//As postar de leitura serão implementadas com um par de multiplexadores	
	//multiplexador(entrada0, entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7, controle, saida);	
	multiplexador mux1(saida_reg0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,saida_reg6,saida_reg7,Read1,Data1);
	multiplexador mux2(saida_reg0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,saida_reg6,saida_reg7,Read2,Data2); 

endmodule
