
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
    wire wirey3;
    wire wireY1;
    wire wireY2;
    wire wireY3;    


    combCircEj2 combCirc(inputW,wirey1,wirey2,wirey3,wireY1,wireY2,wireY3);

    flipFlopStageEj2 ffsEj2(wireY1,wireY2,wireY3,inputClk,wirey1,wirey2,wirey3,inputReset);

    assign outputZ = wirey3;

endmodule
