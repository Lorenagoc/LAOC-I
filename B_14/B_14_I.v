module FUNC1(I0, I1, S, out);
input I0, I1;
input S;
output out;
assign out = S? I1:I0;
endmodule

//A fun��o implementada acima � um multiplexador
//sendo o S seletor, out a sa�da e I0 e I1 as entradas.