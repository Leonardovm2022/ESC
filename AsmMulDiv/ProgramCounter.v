/* módulo ProgramCounter */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _ProgramCounter_
`define _ProgramCounter_
`include "Mux16.v"
`include "Increment16.v"
`include "Register16.v"

module ProgramCounter(out, in, load, inc, reset, clk);
    input [15:0] in;
    input load, inc, reset, clk;
    output [15:0] out;
    wire [15:0] w1, w2, w3, w4;

    Increment16 inc0(w1, out);

    Mux16 mux0(w2, out, w1, inc);
    Mux16 mux1(w3, w2, in, load);
    Mux16 mux2(w4, w3, 16'b0000000000000000, reset);

    Register16 rg0(out, w4, 1'b1, clk);

    // Descrição de conexões internas do módulo

endmodule

`endif