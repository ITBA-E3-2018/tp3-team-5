//Testbench correspondiente a la FSM que implementa el detector
//de la secuencia de 4 bits 1-1-0-1.
`timescale 10us / 1us

module DetectorDeSecuencia_tb;

wire clk;
reg reset_n;
reg w;
wire z;
DetectorDeSecuencia inst(w,z,clk,reset_n);
clock_gen clk_gen(clk);

initial begin
    reset_n=0; //Pongo la FSM en su estado incial
    w=0;
    #1
    reset_n=1;
    #1
    w=1;
    #2
    w=0;
    #1
    w=1;
    #3
    w=0;
    #2
    $finish;

end

reg dummy;
  reg[8*64:0] dumpfile_path = "output.vcd";

  initial begin
    dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
    $dumpfile(dumpfile_path);
    $dumpvars(0,DetectorDeSecuencia_tb);
  end


endmodule 