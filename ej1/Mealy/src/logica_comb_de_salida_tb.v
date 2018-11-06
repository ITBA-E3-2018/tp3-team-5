//Testbench correspondiente al bloque de logica combinacional
//de salida.

module logica_comb_de_salida_tb( 
);

reg I;
reg S;
reg y;
wire B1;
wire B2;
logica_comb_de_salida inst(I,S,y,B1,B2);

initial begin
  $display("I\t S\t y\t B1 B2");
  $monitor("%b\t %b\t %b\t %b %b", I, S, y, B1,B2);
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