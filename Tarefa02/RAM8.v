/* módulo RAM8 */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _RAM8_
`define _RAM8_
`include "Register16.v"
`include "DMux8Way.v"
`include "Mux8Way16.v"

module RAM8(out, in, addr, write, clk);
    input [15:0] in;
    input [2:0] addr;
    input write, clk;
    output [15:0] out;
    wire write1, write2, write3, write4, write5, write6, write7, write8;
    wire [15:0] outw1, outw2, outw3, outw4, outw5, outw6, outw7, outw8;

    DMux8Way dmux0(write1, write2, write3, write4, write5, write6, write7, write8, write, addr);

    Register16 rg0(outw1, in, write1, clk);
    Register16 rg1(outw2, in, write2, clk);
    Register16 rg2(outw3, in, write3, clk);
    Register16 rg3(outw4, in, write4, clk);
    Register16 rg4(outw5, in, write5, clk);
    Register16 rg5(outw6, in, write6, clk);
    Register16 rg6(outw7, in, write7, clk);
    Register16 rg7(outw8, in, write8, clk);

    Mux8Way16 mux0(out, outw1, outw2, outw3, outw4, outw5, outw6, outw7, outw8, addr);


    // Descrição de conexões internas do módulo

endmodule

`endif