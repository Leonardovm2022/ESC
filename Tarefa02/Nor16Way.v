/* módulo Nor16Way */

`ifndef _Nor16Way_
`define _Nor16Way_

module Nor16Way(out, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p);
    input a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
    output out;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15;

    or or0(w1, a, b);
    or or1(w2, c, d);
    or or2(w3, e, f);
    or or3(w4, g, h);
    or or4(w5, i, j);
    or or5(w6, k, l);
    or or6(w7, m, n);
    or or7(w8, o, p);
    or or8(w9, w1, w2);
    or or9(w10, w3, w4);
    or or10(w11, w5, w6);
    or or11(w12, w7, w8);
    or or12(w13, w9, w10);
    or or13(w14, w11, w12);
    or or14(w15, w13, w14);
    not not0(out, w15);


    // Descrição de conexões internas do módulo

endmodule

`endif