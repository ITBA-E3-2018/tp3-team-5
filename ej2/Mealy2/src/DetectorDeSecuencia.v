//Modulo que simula el control de una mquina
//de estados que reconoce en forma sincronica
//la secuencia de 4 bits 1-1-0-1.
module DetectorDeSecuencia(
    w,
    z,
    clk,
    reset_n
);
input clk; //Entrada de clock
input reset_n; //Entrada de reset
input w; //bit detectado.
output z;
wire a;
wire estado_actual1;
wire estado_actual2;
wire prox_estado1;
wire prox_estado2;
//Etapa de la logicca de entrada
logica_comb_de_entrada primer_bloque(w,estado_actual1, estado_actual2,prox_estado1,prox_estado2);
//Etapa de flip-flops donde se guarda el estado actual.
RisingEdgeFlipFlopD f1(prox_estado1,estado_actual1,clk,reset_n);
RisingEdgeFlipFlopD f2(prox_estado2,estado_actual2,clk,reset_n);
//Etapa de la logica de salida
logica_comb_de_salida segundo_bloque(w,estado_actual1,estado_actual2,a);
RisingEdgeFlipFlopD f3(a,z,clk,reset_n); //Flip flop a la salida para asegurar que
                                        //el output sea sincronico.

endmodule 