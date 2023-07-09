/* módulo Mux4Way16 */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef Mux4Way16
`define Mux4Way16
`include "Mux16.v"

module Mux4Way16(out, a, b, c, d, sel);
    input [15:0] a, b, c, d;
    input [1:0] sel;
    output [15:0] out;

    wire [15:0] w1, w2;

    // Descrição de conexões internas do módulo
    Mux16 mux0(w1, a, b, sel[0]);
    Mux16 mux1(w2, c, d, sel[0]);
    Mux16 mux2(out, w1, w2, sel[1]);
endmodule

`endif