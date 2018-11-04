//Testbench correspondiente a la FSM que implementa el control
//de dos bombas de agua.
`timescale 10us / 1us

module FSM_tb;

wire clk;
reg reset_n;
reg w;
wire z;
FSM inst(w,z,clk,reset_n);
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
    #2
    w=1;
    #3
    w=0;
    #1
    $finish;

end

reg dummy;
  reg[8*64:0] dumpfile_path = "output.vcd";

  initial begin
    dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
    $dumpfile(dumpfile_path);
    $dumpvars(0,FSM_tb);
  end


endmodule 