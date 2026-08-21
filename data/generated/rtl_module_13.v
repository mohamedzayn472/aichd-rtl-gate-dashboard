// Auto-generated RTL Module 13
module rtl_module_13(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5, output [7:0] out6, output [7:0] out7
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;
    wire [7:0] sig4;
    wire [7:0] sig5;
    wire [7:0] sig6;
    wire [7:0] sig7;
    wire [7:0] sig8;
    wire [7:0] sig9;
    wire [7:0] sig10;
    wire [7:0] sig11;
    wire [7:0] sig12;
    wire [7:0] sig13;
    wire [7:0] sig14;
    wire [7:0] sig15;
    wire [7:0] sig16;

    // Combinational logic
    assign sig0 = ~(in0 & in0);
    assign sig16 = sig6 ^ sig4;
    assign sig9 = ~in0;
    assign sig1 = sig9 | in0;
    assign sig2 = in3 | sig14;
    assign sig16 = sig15 & sig0;
    assign sig4 = ~(in1 & in5);
    assign sig11 = sig13 ^ sig0;
    assign sig5 = in4 | sig13;
    assign sig11 = ~(sig2 | in4);
    assign sig16 = in4 & sig16;
    assign sig15 = ~(sig0 & sig12);
    assign sig11 = in5 & in3;
    assign sig2 = sig0 ^ sig11;
    assign sig10 = in1 ^ sig3;
    assign sig10 = sig1 | in2;
    assign sig15 = ~(in1 | sig14);
    assign sig2 = ~(sig5 | sig4);
    assign sig1 = ~(in6 | in3);
    assign sig6 = sig6 ^ sig1;
    assign sig16 = in2 & sig9;
    assign sig8 = ~sig15;
    assign sig9 = in6 & sig6;
    assign sig8 = sig1 ^ sig10;
    assign out0 = in6 & in2;
    assign sig14 = ~sig12;
    assign sig5 = ~in2;
    assign sig11 = ~sig15;
    assign out4 = ~(in2 & sig2);
    assign out5 = ~(sig13 | sig2);
    assign sig5 = ~in4;
    assign out7 = ~(sig9 & sig10);

endmodule // rtl_module_13
