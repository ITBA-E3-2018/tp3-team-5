
module combCircEj2(
    inputW,
    inputy1,
    inputy2,
    inputy3,
    outputY1,
    outputY2,
    outputY3
);

    //inputs
    input inputW;
    input inputy1;
    input inputy2;
    input inputy3;

    //outputs
    output outputY1;
    output outputY2;
    output outputY3;

    assign outputY1 = (~inputy1)&(~inputy3)&(inputy2^inputW);
    assign outputY2 = (inputy2&inputy3) | (inputy1&inputy3) | (inputW&inputy1&(~inputy2)) | (inputy2&(~inputy1)&(~inputW));
    assign outputY3 = inputy3 | (inputy1&inputy2&inputW);

endmodule

