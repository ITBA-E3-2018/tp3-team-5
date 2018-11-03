//Modulo que se encarga de la logica combinacional del bloque
//de salida de la maquina de estados.
//Este es el bloque que define cual va a ser la salida
//de la FSM en base al estado actual y a los inputs de los
//sensores de los niveles de agua.
module logica_comb_de_salida(
    I,
    S,
    y,
    B1,
    B2
);

input I;
input S;
input y;
output B1;
output B2;
wire a,b,c,d;
nand (a,S,S); //Niego s
nand (b,y,y); //Niego y
nand(c,a,b);
nand(B1,c,I);

nand (d,a,y);
nand(B2,I,d);

endmodule 