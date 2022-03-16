module twoToOneMux(D0, D1, S, Y);

    input D0,D1,S;
    output Y;
    wire Y;
    
    assign Y = (S) ? D1 : D0;

endmodule;