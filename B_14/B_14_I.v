module FUNC1(I0, I1, S, out);
input I0, I1;
input S;
output out;
assign out = S? I1:I0;
endmodule

//A função implementada acima é um multiplexador
//sendo o S seletor, out a saída e I0 e I1 as entradas.