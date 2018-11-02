
module control(
    inputY1,
    inputY2,
    inputClk,
    outputy1,
    outputy2
);

RisingEdge_DFlipFlop(inputY1,inputClk,outputy1);
RisingEdge_DFlipFlop(inputY2,inputClk,outputy2);

endmodule

module RisingEdge_DFlipFlop(
    D,
    clk,
    Q
);

input D; // Data input 
input clk; // clock input 
output Q; // output Q 

always @(posedge clk) 
begin
    Q <= D; 
end
endmodule

