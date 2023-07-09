/* módulo And8Way */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _And8Way_
`define _And8Way_

module And8Way(out, a, b, c, d, e, f, g, h);
    input a, b, c, d, e, f, g, h;
    output out;
    wire w1, w2, w3, w4, w5, w6;

    and and0(w1, a, b);
    and and1(w2, c, d);
    and and2(w3, e, f);
    and and3(w4, g, h);
    and and4(w5, w1, w2);
    and and5(w6, w3, w4);
    and and6(out, w5, w6);

    // Descrição de conexões internas do módulo

endmodule

`endif