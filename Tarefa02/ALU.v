/* módulo ALU */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _ALU_
`define _ALU_
`include "Mux16.v"
`include "Not16.v"
`include "Adder16.v"
`include "And16.v"
`include "Nor16Way.v"

module ALU(out, zr, ng, x, y, zx, nx, zy, ny, f, no);
    input [15:0] x, y;
    input zx, nx, zy, ny, f, no;
    output [15:0] out; 
    output zr, ng;
    wire [15:0] w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
    wire ovfl;

    // If (zx == 1) sets x = 0
    Mux16 mux0(w1, x, 16'b0000000000000000, zx);

    // If (nx == 1) sets x = !x
    Not16 not0(w2, w1);
    Mux16 mux1(w5, w1, w2, nx);

    // If (zy == 1) sets y = 0
    Mux16 mux2(w3, y, 16'b0000000000000000, zy);

    // If (ny == 1) sets y = !y
    Not16 not1(w4, w3);
    Mux16 mux3(w6, w3, w4, ny);

    // If (f == 0) sets out = x&y
    // If (f == 1) sets out = x+y
    And16 and0(w7, w5, w6);
    Adder16 add0(w8, ovfl, w5, w6);
    Mux16 mux4(w9, w7, w8, f);

    // If (no == 1) sets out = !out
    Not16 not2(w10, w9);
    Mux16 mux5(out, w9, w10, no);

    // If (out < 0) sets ng = 1
    assign ng = out[15];

    // If (out == 0) sets zr = 1
    Nor16Way nor0(zr, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], out[8], out[9], out[10], out[11], out[12], out[13], out[14], out[15]);

    // Descrição de conexões internas do módulo

endmodule

`endif