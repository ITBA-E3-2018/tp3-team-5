
module combCircEj1(
    inputI,
    inputS,
    inputy1,
    inputy2,
    outputY1,
    outputY2
);

    //inputs
    input inputI;
    input inputS;
    input inputy1;
    input inputy2;

    //outputs
    output outputY1;
    output outputY2;

    assign outputY1 = (~inputI) | ((~inputS) & ((~inputy1) | inputy2));

    assign outputY2 = (~inputI) | ((~inputy2)&(inputy1)&(~inputS));

endmodule

