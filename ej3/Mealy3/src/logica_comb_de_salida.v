//Modulo que se encarga de la logica combinacional del bloque
//de salida de la maquina de estados.
//Este es el bloque que define cual va a ser la salida
//de la FSM en base al estado actual y al input.
module logica_comb_de_salida(
    w,
    y,
    z
);

input w;
input y;
output z;
wire a,b,c,d;
nand (a,y,y); //Niego y
nand(b,a,w);
nand(z,b,b); //La salida es el and de ~y con w.

endmodule 