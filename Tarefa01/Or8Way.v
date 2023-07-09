/* módulo Or8Way */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _Or8Way_
`define _Or8Way_

module Or8Way(out, a, b, c, d, e, f, g, h);
    input a, b, c, d, e, f, g, h;
    output out;
    wire w1, w2, w3, w4, w5, w6;

    or or0(w1, a, b);
    or or1(w2, c, d);
    or or2(w3, e, f);
    or or3(w4, g, h);
    or or4(w5, w1, w2);
    or or5(w6, w3, w4);
    or or6(out, w5, w6);
    // Descrição de conexões internas do módulo

endmodule

`endif