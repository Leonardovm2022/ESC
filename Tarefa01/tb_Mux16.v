/* testbench para Mux16 */
/* ordem de portas: out, a, b, sel */
/* input [15:0] a; input [15:0] b; input sel; */
/* output [15:0] out; */

`include "Mux16.v"

`define assert(signal, value) \
    if (signal !== value) \
    begin \
        $display("ASSERTION FAILED in %m: signal != value"); \
        $finish; \
    end else begin \
        $display("Success! %m: signal = value"); \
    end

module tb_Mux16;
    reg [15:0] a;
    reg [15:0] b;
    reg sel;
    wire [15:0] out;

    Mux16 mymodule(out, a, b, sel);
    
    initial
    begin
        $dumpfile("tb_Mux16.vcd");
        $dumpvars(0, tb_Mux16);

        a = 16'b0000110011000011; b = 16'b0000000001111010; sel = 1'b1; #1;
         `assert(out, 16'b0000000001111010)
        a = 16'b0000111000001111; b = 16'b0000100000110110; sel = 1'b0; #1;
         `assert(out, 16'b0000111000001111)
        a = 16'b0001100100001100; b = 16'b0100110001101000; sel = 1'b0; #1;
         `assert(out, 16'b0001100100001100)
        a = 16'b0001101001100011; b = 16'b1001111001010110; sel = 1'b0; #1;
         `assert(out, 16'b0001101001100011)
        a = 16'b0001111111001111; b = 16'b0011001001010101; sel = 1'b1; #1;
         `assert(out, 16'b0011001001010101)
        a = 16'b0011111010001001; b = 16'b1010000100000111; sel = 1'b1; #1;
         `assert(out, 16'b1010000100000111)
        a = 16'b0101010010000001; b = 16'b0000100111111010; sel = 1'b0; #1;
         `assert(out, 16'b0101010010000001)
        a = 16'b0101101100011001; b = 16'b1111010101111010; sel = 1'b0; #1;
         `assert(out, 16'b0101101100011001)
        a = 16'b0101101101111000; b = 16'b1000010000000110; sel = 1'b1; #1;
         `assert(out, 16'b1000010000000110)
        a = 16'b0110000101101101; b = 16'b1000001001001011; sel = 1'b1; #1;
         `assert(out, 16'b1000001001001011)
        a = 16'b0110101000000010; b = 16'b0000111001010110; sel = 1'b1; #1;
         `assert(out, 16'b0000111001010110)
        a = 16'b0110110101100010; b = 16'b1010000010001001; sel = 1'b0; #1;
         `assert(out, 16'b0110110101100010)
        a = 16'b1000000000011010; b = 16'b0000110101110110; sel = 1'b1; #1;
         `assert(out, 16'b0000110101110110)
        a = 16'b1000010101010011; b = 16'b1001111000010000; sel = 1'b1; #1;
         `assert(out, 16'b1001111000010000)
        a = 16'b1001000011011000; b = 16'b0001001010101000; sel = 1'b1; #1;
         `assert(out, 16'b0001001010101000)
        a = 16'b1001011000000000; b = 16'b0110000010111011; sel = 1'b1; #1;
         `assert(out, 16'b0110000010111011)
        a = 16'b1001011111100010; b = 16'b1100111111110100; sel = 1'b0; #1;
         `assert(out, 16'b1001011111100010)
        a = 16'b1010000010110101; b = 16'b1011110000111010; sel = 1'b1; #1;
         `assert(out, 16'b1011110000111010)
        a = 16'b1010011111010011; b = 16'b1011000011010011; sel = 1'b0; #1;
         `assert(out, 16'b1010011111010011)
        a = 16'b1010111000111101; b = 16'b1010010000010011; sel = 1'b1; #1;
         `assert(out, 16'b1010010000010011)
        a = 16'b1011001011001010; b = 16'b1010111110101000; sel = 1'b1; #1;
         `assert(out, 16'b1010111110101000)
        a = 16'b1011010010111110; b = 16'b1101011011110011; sel = 1'b1; #1;
         `assert(out, 16'b1101011011110011)
        a = 16'b1011011110111011; b = 16'b1111001111010001; sel = 1'b1; #1;
         `assert(out, 16'b1111001111010001)
        a = 16'b1011111010111110; b = 16'b1001000011000010; sel = 1'b0; #1;
         `assert(out, 16'b1011111010111110)
        a = 16'b1100010010101110; b = 16'b0111011001100010; sel = 1'b0; #1;
         `assert(out, 16'b1100010010101110)
        a = 16'b1101101011101010; b = 16'b1000111001001010; sel = 1'b0; #1;
         `assert(out, 16'b1101101011101010)
        a = 16'b1101101110110101; b = 16'b0011010011100000; sel = 1'b1; #1;
         `assert(out, 16'b0011010011100000)
        a = 16'b1101110000100011; b = 16'b0110001000001111; sel = 1'b1; #1;
         `assert(out, 16'b0110001000001111)
        a = 16'b1110100111001111; b = 16'b1010001100110110; sel = 1'b0; #1;
         `assert(out, 16'b1110100111001111)
        a = 16'b1111000011011110; b = 16'b0100101100011010; sel = 1'b0; #1;
         `assert(out, 16'b1111000011011110)

    end
endmodule