`include "control.v"
`include "clock.v"

module bancoDePruebas();

    reg inputI;
    reg inputS; 
    reg inputClk;
    reg inputReset;   
    wire outputB0;
    wire outputB1;

    clock_gen clk_gen(inputClk);

    control inst1(inputI, inputS, inputClk, inputReset, outputB0, outputB1);

    initial begin
        $monitor("Inputs: %b    %b\nOutput: %b  %b",inputI,inputS,outputB0,outputB1);

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


    end

    
endmodule