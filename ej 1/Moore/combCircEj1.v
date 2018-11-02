
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

//outputs
output outputY1;
output outputY2;

Y1 = (~inputI) | ((~inputS) & ((~inputy1) | inputy2);

Y2 = (~inputI) | ((~inputy2)&(inputy1)&(~inputS));

endmodule

