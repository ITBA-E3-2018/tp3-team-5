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
        $monitor("Inputs: %b    %b\nOutput: %b",input1,input2,outputN);

        input1 = 4'b0000;
        input2 = 4'b0011; #10;

        input1 = 4'b1010;
        input2 = 4'b0011; #10;

    end

    
endmodule