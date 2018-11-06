//Testbench correspondiente al bloque de logica combinacional
//de entrada.

module logica_comb_de_entrada_tb( 
);

reg I;
reg S;
reg y;
wire Yout;
logica_comb_de_entrada inst(I,S,y,Yout);

initial begin
  $display("I\t S\t y\t Out");
  $monitor("%b\t %b\t %b\t %b", I, S, y, Yout);
  //Pruebo todas las combinaciones posibles
  I=0;
  S=0;
  y=0;
  #1
  I=0;
  S=1;
  y=0;
  #1
  I=1;
  S=0;
  y=0;
  #1
  I=1;
  S=1;
  y=0;
  #1
  I=0;
  S=0;
  y=1;
  #1
  I=0;
  S=1;
  y=1;
  #1
  I=1;
  S=0;
  y=1;
  #1
  I=1;
  S=1;
  y=1;
  #100
  $finish;
  
end
endmodule // 
