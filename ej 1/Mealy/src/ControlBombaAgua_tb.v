//Testbench correspondiente a la FSM que implementa el control
//de dos bombas de agua.
`timescale 1us / 1us

module ControlBombaAgua_tb;

wire clk;
reg reset_n;
reg I;
reg S;
wire B1;
wire B2;
ControlBombaAgua inst(I,S,B1,B2,clk,reset_n);
clock_gen clk_gen(clk);

initial begin
    reset_n=0; //Pongo la FSM en su estado incial
    #1
    reset_n=1;
    #1  
    I=0;
    S=0;
    #3
    I=1;
    S=0;
    #7
    I=1;
    S=1;
    #4
    I=1;
    S=0;
    #2
    I=1;
    S=1;
    #1
    $finish;

end

reg dummy;
  reg[8*64:0] dumpfile_path = "output.vcd";

  initial begin
    dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
    $dumpfile(dumpfile_path);
    $dumpvars(0,ControlBombaAgua_tb);
  end


endmodule 