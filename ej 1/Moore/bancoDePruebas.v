`timescale 100us/10us

module bancoDePruebas();

    reg inputI;
    reg inputS; 
    wire inputClk;
    reg inputReset;   
    wire outputB0;
    wire outputB1;

    clock_gen clk_gen(inputClk);

    control inst1(inputI, inputS, inputClk, inputReset, outputB0, outputB1);

    initial begin
        $monitor("Inputs: %b    %b\nOutputs: %b    %b",inputI,inputS,outputB0,outputB1);

        inputReset = 1'b1;
        inputI = 1'b1;
        inputS = 1'b1; #10;

        inputI = 1'b1;
        inputS = 1'b1; #10;

        inputI = 1'b1;
        inputS = 1'b0; #10;

        inputI = 1'b1;
        inputS = 1'b0; #10;

        inputI = 1'b0;
        inputS = 1'b0; #10;

        inputI = 1'b0;
        inputS = 1'b0; #10;

        inputI = 1'b1;
        inputS = 1'b0; #10;

        inputI = 1'b1;
        inputS = 1'b1; #10;

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