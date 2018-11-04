//Testbench correspondiente al bloque de logica combinacional
//de salida.

module logica_comb_de_salida_tb( 
);

reg w;
reg y1;
reg y2;
wire z;
logica_comb_de_salida inst(w,y1,y2,z);

initial begin
  $display("w\t y1\t y2\t z");
  $monitor("%b\t %b\t %b\t %b", w, y1, y2,z);
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