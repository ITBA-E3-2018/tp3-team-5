//Modulo que se encarga de la logica combinacional del bloque
//de entrada de la maquina de estados.
//Este es el bloque que define cual va a ser el proximo estado
//de la FSM en base al estado actual y al bit ingesado como input.
module logica_comb_de_entrada(
    w,
    y1,
    y2,
    Yout1,
    Yout2
);

input w;
input y1;
input y2;
output Yout1;
output Yout2;

wire a,b,c,d,e,f,g,h,i;
nand (a,w,w); //Utilizo una nand como not, niego w.
nand (b,y1,y1); //niego y1.
nand (c,y2,y2); //niego y2.

nand (d, b, w,y2);
nand (e, a, y1, c);
nand (Yout1,d,e); //Salida correspondiente a la primera variable de estado.

nand (f, w, b, c);
nand (g, a, y1, c);
nand (Yout2, f, g); //Salida correspondiente a la segunda variable de estado.


endmodule 