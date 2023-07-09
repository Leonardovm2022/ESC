/* módulo Increment16 */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _Increment16_
`define _Increment16_
`include "Adder16.v"

module Increment16(out, in);
    input [15:0] in;
    output [15:0] out;
    wire ovfl;

    Adder16 ad0(out, ovfl, in, 16'b0000000000000001);

    // Descrição de conexões internas do módulo

endmodule

`endif