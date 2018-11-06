//Modulo que se encarga de la logica combinacional del bloque
//de salida de la maquina de estados.
//Este es el bloque que define cual va a ser la salida
//de la FSM en base al estado actual y al bit de input.
module logica_comb_de_salida(
    w,
    y1,
    y2,
    z
);

input w;
input y1;
input y2;
output z;

wire a;
nand (a,w,y1,y2);
nand (z,a,a); //La salida es el and de las tres entradas.

endmodule 