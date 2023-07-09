/* módulo DMux */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _DMux_
`define _DMux_

module DMux(a, b, in, sel);
    input in, sel;
    output a, b;
    wire w1;

    and and0(b, in, sel);
    and and1(a, in, w1);
    not not0(w1, sel);

    // Descrição de conexões internas do módulo

endmodule

`endif