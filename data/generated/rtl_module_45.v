// Auto-generated RTL Module 45
module rtl_module_45(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5
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

    // Combinational logic
    assign sig0 = in1 ^ in2;
    assign sig9 = sig4 & sig11;
    assign sig15 = ~in0;
    assign sig0 = ~sig9;
    assign sig7 = ~in2;
    assign sig13 = sig11 & sig6;
    assign sig7 = ~(in3 & in3);
    assign sig7 = sig12 | sig12;
    assign sig7 = in0 ^ sig13;
    assign sig8 = ~(sig8 & in2);
    assign sig2 = ~in1;
    assign sig3 = sig4 | sig9;
    assign sig8 = ~(in3 | in3);
    assign sig10 = ~(sig15 | sig6);
    assign sig0 = in1 & sig1;
    assign sig8 = sig3 | in2;
    assign sig7 = in3 | sig0;
    assign sig15 = sig4 & sig0;
    assign sig9 = in2 | in3;
    assign sig14 = ~sig11;
    assign sig2 = ~(in0 | sig10);
    assign sig12 = sig1 | in2;
    assign sig6 = in3 & sig5;
    assign sig3 = sig12 ^ sig0;
    assign sig14 = ~(in1 | in3);
    assign sig14 = sig1 | sig6;
    assign sig15 = ~(in0 | sig6);
    assign sig10 = ~sig9;
    assign sig8 = in0 | sig3;
    assign sig6 = ~sig9;
    assign sig3 = in0 ^ in1;
    assign sig0 = sig13 | sig10;
    assign sig12 = in2 | sig3;
    assign sig15 = sig0 | in0;
    assign sig2 = ~(in1 | sig11);
    assign sig2 = sig5 | sig15;
    assign sig1 = ~(in2 | in0);
    assign sig4 = sig4 ^ sig3;
    assign sig10 = ~in1;
    assign sig6 = ~(sig11 & in3);
    assign out4 = in3 & sig11;
    assign out5 = ~(sig4 | sig8);
    assign out0 = in3 & in3;
    assign out1 = ~(sig9 & sig15);
    assign out2 = in1 | sig11;
    assign out3 = sig14 ^ in2;

endmodule // rtl_module_45
