
module flipFlopStageEj1(
    inputY1,
    inputY2,
    inputClk,
    outputy1,
    outputy2,
    inputR
);

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
output Q; // output Q 

always @(R)
if (
    ~R
) begin
    Q = 0;
end
endmodule

always @(posedge clk) 
begin
    Q <= D; 
end
endmodule

