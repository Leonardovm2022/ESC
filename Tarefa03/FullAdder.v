/* módulo FullAdder */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _FullAdder_
`define _FullAdder_
`include "HalfAdder.v"

module FullAdder(s, cout, a, b, cin);
    input a, b, cin;
    output s, cout;
    wire w1, w2, w3;

    HalfAdder ha0(w1, w2, a, b);
    HalfAdder ha1(s, w3, w1, cin);
    or or0(cout, w2, w3);

    // Descrição de conexões internas do módulo

endmodule

`endif