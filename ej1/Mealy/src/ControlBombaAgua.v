//Modulo que simula el control de una bomba de
//agua que funciona con dos sensores.
module ControlBombaAgua(
    I,
    S,
    B1,
    B2,
    clk,
    reset_n
);
input clk; //Entrada de clock
input reset_n; //Entrada de reset
input I; //Sensor del nivel inferior de la bomba
input S; //Sensor del nivel superior de la bomba
output B1;
output B2;
wire estado_actual;
wire prox_estado;

logica_comb_de_entrada primer_bloque(I,S,estado_actual,prox_estado);
RisingEdgeFlipFlopD f1(prox_estado,estado_actual,clk,reset_n);
logica_comb_de_salida segundo_bloque(I,S,estado_actual,B1,B2);

endmodule // ControlBombaAgua