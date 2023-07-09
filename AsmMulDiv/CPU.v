/* Leonardo Vecchi Meirelles - 12011ECP002 */

/* módulo CPU */

`ifndef _CPU_
`define _CPU_
`include "Register16.v"
`include "ALU.v"
`include "ProgramCounter.v"
`include "Mux16.v"

module CPU(pc, addrM, outM, writeM, instruct, inM, reset, clk);
    input  [15:0] instruct, inM; 
    input  reset, clk;
    output [15:0] pc, addrM, outM;
    output writeM;
    wire [15:0] w1, w2, w6;
    wire w3, w4, w5, w7, w8, w9, w10, w11, w12, w13, w14, zr, ng;

    Mux16 mux0(w1, outM, instruct, w3);

    and and0(w4, instruct[15], instruct[5]);
    not not0(w3, instruct[15]);
    or or0(w5, w3, w4);

    Register16 regA(addrM, w1, w5, clk);

    and and1(w14, instruct[15], instruct[4]);

    Register16 regD(w2, outM, w14, clk);

    Mux16 mux1(w6, addrM, inM, instruct[12]);

    ALU alu0(outM, zr, ng, w2, w6, instruct[11], instruct[10], instruct[9], instruct[8], instruct[7], instruct[6]);

    and and2(writeM, instruct[15], instruct[3]);

    and and3(w8, instruct[2], ng);
    and and4(w9, instruct[1], zr);
    nor nor0(w7, zr, ng);
    and and5(w10, instruct[0], w7);
    or or1(w11, w9, w10);
    or or2(w12, w8, w11);
    and and6(w13, w12, instruct[15]);

    ProgramCounter pc0(pc, addrM, w13, 1'b1, reset, clk);

endmodule

`endif