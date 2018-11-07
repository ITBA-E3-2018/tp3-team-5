
module flipFlopStageEj3(
    inputY1,
    inputY2,
    inputClk,
    outputy1,
    outputy2,
    inputR
);

    input inputY1;
    input inputY2;
    input inputClk;
    output outputy1;
    output outputy2;
    input inputR;

    RisingEdge_DFlipFlop ffd1(inputY1,inputClk,outputy1,inputR);
    RisingEdge_DFlipFlop ffd2(inputY2,inputClk,outputy2,inputR);

endmodule

module RisingEdge_DFlipFlop(
    D,
    clk,
    Q,
    R
);

    input D; // Data input 
    input clk; // clock input 
    input R;
    output reg Q; // output Q 

    always @(posedge clk) 
    if (
        ~R
    ) begin
        Q <= 0;
    end else begin
        Q <= D; 
    end
endmodule

