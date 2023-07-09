/* módulo Bit */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _Bit_
`define _Bit_
`include "Mux.v"
`include "DLatch.v"

module Bit(out, in, load, clk);
    input in, load, clk;
    output out;
    wire w1;

    Mux mux0(w1, out, in, load);
    DLatch dl0(out, w1, clk);
    

    // Descrição de conexões internas do módulo

endmodule

`endif