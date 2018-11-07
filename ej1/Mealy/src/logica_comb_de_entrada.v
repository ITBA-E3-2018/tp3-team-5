//Modulo que se encarga de la logica combinacional del bloque
//de entrada de la maquina de estados.
//Este es el bloque que define cual va a ser el proximo estado
//de la FSM en base al estado actual y a los inputs de los
//sensores de los niveles de agua.
module logica_comb_de_entrada(
    I,
    S,
    y,
    Yout
);

input I;
input S;
input y;
output Yout;
wire a;
nand (a,S,S); //Utilizo una nand como not
nand (Yout, I, a, y);

endmodule 