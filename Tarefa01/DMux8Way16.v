/* módulo DMux8Way16 */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _DMux8Way16_
`define _DMux8Way16_
`include "DMux4Way16.v"

module DMux8Way16(a, b, c, d, e, f, g, h, in, sel);
    input [15:0] in; 
    input [2:0] sel;
    output [15:0] a, b, c, d, e, f, g, h;
    wire [15:0] w1, w2;
    
    DMux16 Dmux0(w1, w2, in, sel[2]);
    DMux4Way16 Dmux1(a, b, c, d, w1, sel[1:0]);
    DMux4Way16 Dmux2(e, f, g, h, w2, sel[1:0]);

    // Descrição de conexões internas do módulo

endmodule

`endif