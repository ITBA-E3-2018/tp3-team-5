//Modulo que simula una maquina de estados de Mealy con
//dos estados. La misma puede ser implementada como un
//detector de flancos ascendentes.


module FSM(
    w,
    z,
    clk,
    reset_n
);
input clk; //Entrada de clock
input reset_n; //Entrada de reset
input w; //entrada de la FSM
output z; //salida de la FSM
wire estado_actual;
wire prox_estado = w;

RisingEdgeFlipFlopD f1(prox_estado,estado_actual,clk,reset_n);
logica_comb_de_salida segundo_bloque(w,estado_actual,z);

endmodule 