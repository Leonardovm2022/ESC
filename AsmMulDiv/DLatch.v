/* módulo DLatch */
/* Leonardo Vecchi Meirelles - 12011ECP002 */

`ifndef _DLatch_
`define _DLatch_

module DLatch(q, d, clk);
    input d, clk;
    output q;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, notq;

    not not1(w1, d);
    nand nand1(w2, d, clk);
    nand nand2(w5, w2, w3);
    nand nand3(w4, w1, clk);
    nand nand4(w3, w5, w4);

    not not2(w7, clk);
    
    not not3(w6, w5);
    nand nand5(w8, w5, w7);
    nand nand6(q, w8, notq);
    nand nand7(w9, w7, w6);
    nand nand8(notq, q, w9);


    // Descrição de conexões internas do módulo

endmodule

`endif