//Testbench correspondiente al bloque de logica combinacional
//de salida.

module logica_comb_de_salida_tb( 
);

reg w;
reg y;
wire z;
logica_comb_de_salida inst(w,y,z);

initial begin
  $display("w\t y\t z");
  $monitor("%b\t %b\t %b", w, y, z);
  //Pruebo todas las combinaciones posibles
  w=0;
  y=0;
  #1
  w=0;
  y=1;
  #1
  w=1;
  y=0;
  #1
  w=1;
  y=1;
  #100
  $finish;
  
end
endmodule // 