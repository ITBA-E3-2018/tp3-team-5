
module combCircEj3(
    inputW,
    inputy1,
    inputy2,
    outputY1,
    outputY2
);

    //inputs
    input inputW;
    input inputy1;
    input inputy2;

    //outputs
    output outputY1;
    output outputY2;

    assign outputY1 = (~inputy1)&(~inputy2)&inputW;
    assign outputY2 = inputW&(inputy1|inputy2);

endmodule

