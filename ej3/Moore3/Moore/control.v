
module control(
    inputW,
    inputClk,
    inputReset,
    outputZ
);

    input inputW;
    input inputClk;
    input inputReset;
    output outputZ;
    wire wirey1;
    wire wirey2;
    wire wireY1;
    wire wireY2;   


    combCircEj3 combCirc(inputW,wirey1,wirey2,wireY1,wireY2);

    flipFlopStageEj3 ffsEj3(wireY1,wireY2,inputClk,wirey1,wirey2,inputReset);

    assign outputZ = wirey1;

endmodule
