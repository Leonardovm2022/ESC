/* módulo DMux4Way */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _DMux4Way_
`define _DMux4Way_
`include "DMux.v"

module DMux4Way(a, b, c, d, in, sel);
    input in;
    input [1:0] sel;
    output a, b, c, d;
    wire w1, w2;

    DMux DMux0(w1, w2, in, sel[1]);
    DMux DMux1(a, b, w1, sel[0]);
    DMux DMux2(c, d, w2, sel[0]);

    // Descrição de conexões internas do módulo

endmodule

`endif