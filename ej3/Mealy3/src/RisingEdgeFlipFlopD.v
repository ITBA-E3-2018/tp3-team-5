//Modulo que simula el comportamiento de un flip flop D
//,de flancos ascedentes,con reset asincronico
module RisingEdgeFlipFlopD(
D,
Q,
clk,
reset_n
);

input D; // Data input 
input clk; // clock input 
input reset_n; //reset input
output reg Q; // output Q 
always @(posedge clk) 
begin
 Q <= D; 
end 

always @(reset_n) //Si reset_n es 0, pone en cero la salida del flip flop
    if (~reset_n) begin
      Q<=0;
    end

endmodule 