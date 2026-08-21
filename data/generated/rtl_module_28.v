// Auto-generated RTL Module 28
module rtl_module_28(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6, input [7:0] in7,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3
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
    wire [7:0] sig17;

    // Combinational logic
    assign sig10 = in5 ^ in4;
    assign sig10 = ~(sig4 & sig15);
    assign sig3 = ~(in0 | sig1);
    assign sig3 = ~(sig14 | in0);
    assign sig0 = in7 | sig14;
    assign sig4 = ~sig6;
    assign sig8 = ~(in4 | in2);
    assign sig2 = sig11 & sig8;
    assign sig12 = in2 ^ sig1;
    assign sig13 = ~(sig9 | in3);
    assign sig0 = ~(in1 | sig3);
    assign sig4 = sig15 | sig2;
    assign sig0 = ~(in3 & in7);
    assign sig13 = sig10 & sig3;
    assign sig2 = ~(in2 | sig15);
    assign sig3 = sig12 | in1;
    assign sig9 = in5 & sig11;
    assign sig4 = sig12 | sig4;
    assign sig14 = in0 & in2;
    assign sig13 = sig6 ^ sig4;
    assign sig2 = ~(in7 & sig6);
    assign sig12 = sig4 & in1;
    assign sig4 = in6 ^ sig10;
    assign sig7 = sig8 | sig2;
    assign sig9 = ~(in4 & in0);
    assign sig6 = sig16 | sig16;
    assign sig1 = ~(in6 | sig9);
    assign sig3 = sig15 | in6;
    assign sig16 = in7 | sig2;
    assign sig4 = sig11 & sig10;
    assign sig11 = ~in6;
    assign sig2 = ~(sig5 & sig15);
    assign sig8 = in1 & sig0;
    assign sig12 = sig1 | in0;
    assign sig13 = ~(in4 & sig16);
    assign sig2 = ~sig12;
    assign sig2 = ~(in2 | in4);
    assign sig6 = sig2 ^ sig16;
    assign sig2 = in5 | sig12;
    assign out3 = sig13 ^ in3;
    assign out0 = in3 & sig2;
    assign sig14 = ~sig3;
    assign out2 = ~(in0 & in4);

endmodule // rtl_module_28
