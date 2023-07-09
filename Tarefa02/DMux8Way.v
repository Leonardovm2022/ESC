/* módulo DMux8Way */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _DMux8Way_
`define _DMux8Way_
`include "DMux.v"

module DMux8Way(a, b, c, d, e, f, g, h, in, sel);
    input in;
    input [2:0] sel;
    output a, b, c, d, e, f, g, h;
    wire w1, w2, w3, w4, w5, w6;

    DMux dmux0(w1, w2, in, sel[2]);

    DMux dmux1(w3, w4, w1, sel[1]);
    DMux dmux2(w5, w6, w2, sel[1]);

    DMux dmux3(a, b, w3, sel[0]);
    DMux dmux4(c, d, w4, sel[0]);
    DMux dmux5(e, f, w5, sel[0]);
    DMux dmux6(g, h, w6, sel[0]);

    // Descrição de conexões internas do módulo

endmodule

`endif