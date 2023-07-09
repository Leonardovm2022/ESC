/* módulo Mux8Way16 */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _Mux8Way16_
`define _Mux8Way16_

`include "Mux4Way16.v"

module Mux8Way16(out, a, b, c, d, e, f, g, h, sel);
    input [15:0] a, b, c, d, e, f, g, h;
    input [2:0] sel;
    output [15:0] out;
    wire [15:0] w1, w2;

    Mux4Way16 mux0(w1, a, b, c, d, sel[1:0]);
    Mux4Way16 mux1(w2, e, f, g, h, sel[1:0]);
    Mux16 mux2(out, w1, w2, sel[2]);

    // Descrição de conexões internas do módulo

endmodule

`endif