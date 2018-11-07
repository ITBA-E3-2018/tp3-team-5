`timescale 100us/10us

module bancoDePruebas();

    reg inputW; 
    wire inputClk;
    reg inputReset;   
    wire outputZ;

    clock_gen clk_gen(inputClk);

    control inst1(inputW,inputClk,inputReset,outputZ);

    initial begin
        $monitor("Input: %b\nOutput: %b",inputW,outputZ);

        inputReset = 1'b0; #10;

        inputReset = 1'b1; #10;

        inputW = 1'b0; #10;

        inputW = 1'b1; #10;

        inputW = 1'b1; #10;

        inputW = 1'b0; #10;

        inputW = 1'b0; #10;

        inputW = 1'b0; #10;

        inputW = 1'b1; #10;

        inputW = 1'b1; #10;

        inputW = 1'b0; #10;

        inputW = 1'b1; #10;

        inputW = 1'b0; #10;

        inputW = 1'b1; #10;

        inputReset = 1'b0; #10;


    end

    reg dummy;
    reg[8*64:0] dumpfile_path = "output.vcd";

    initial begin
        dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
        $dumpfile(dumpfile_path);
        $dumpvars(0, bancoDePruebas);
    end

endmodule