/* módulo DMux4Way16 */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _DMux4Way16_
`define _DMux4Way16_
`include "DMux16.v"

module DMux4Way16(a, b, c, d, in, sel);
    input [15:0] in; 
    input [1:0] sel;
    output [15:0] a, b, c, d;
    wire [15:0] w1, w2;

    DMux16 DMux0(w1, w2, in, sel[1]);
    DMux16 DMux1(a, b, w1, sel[0]);
    DMux16 DMux2(c, d, w2, sel[0]);



    // Descrição de conexões internas do módulo

endmodule

`endif