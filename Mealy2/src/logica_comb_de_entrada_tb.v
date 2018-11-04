//Testbench correspondiente al bloque de logica combinacional
//de entrada.

module logica_comb_de_entrada_tb( 
);

reg w;
reg y1;
reg y2;
wire Yout1;
wire Yout2;
logica_comb_de_entrada inst(w,y1,y2,Yout1,Yout2);

initial begin
  $display("w\t y1\t y2\t Yout1\t Yout2");
  $monitor("%b\t %b\t %b\t %b\t %b", w, y1, y2, Yout1, Yout2);
  //Pruebo todas las combinaciones posibles
  w=0;
  y1=0;
  y2=0;
  #1
  w=0;
  y1=0;
  y2=1;
  #1
  w=0;
  y1=1;
  y2=0;
  #1
  w=0;
  y1=1;
  y2=1;
  #1
  w=1;
  y1=0;
  y2=0;
  #1
  w=1;
  y1=0;
  y2=1;
  #1
  w=1;
  y1=1;
  y2=0;
  #1
  w=1;
  y1=1;
  y2=1;
  #100
  $finish;
  
end
endmodule // 
