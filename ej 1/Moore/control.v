`include "flipflopStageEj1.v"
`include "combCircEj1.v"

module control(
    inputI,
    inputS,
    inputClk,
    inputReset,
    outputB0,
    outputB1
);

input inputI;
input inputS;
input inputClk;
input inputReset;
output outputB0;
output outputB1;
wire wirey1;
wire wirey2;
wire wireY1;
wire wireY2;


combCircEj1 combCirc(inputI,inputS,wirey1,wirey2,wireY1,wireY2);

flipflopStageEj1 ffsEj1(wireY1,wireY2,inputClk,wirey1,wirey2,inputReset);

outputB0 = outputy2;
outputB1 = outputy1;

endmodule
