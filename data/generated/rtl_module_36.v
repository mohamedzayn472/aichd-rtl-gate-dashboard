// Auto-generated RTL Module 36
module rtl_module_36(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5, output [7:0] out6
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

    // Combinational logic
    assign sig7 = in0 | in3;
    assign sig13 = ~(sig7 & sig1);
    assign sig5 = ~in3;
    assign sig10 = sig7 & in5;
    assign sig6 = in0 & sig6;
    assign sig0 = sig8 & sig8;
    assign sig9 = in6 & in4;
    assign sig8 = ~(sig4 | sig14);
    assign sig10 = ~(in1 & sig10);
    assign sig5 = ~sig5;
    assign sig13 = in6 & sig3;
    assign sig8 = ~sig5;
    assign sig11 = ~(in4 & in3);
    assign sig7 = ~(sig5 | sig11);
    assign sig10 = in0 & sig12;
    assign sig5 = sig0 | in2;
    assign sig8 = ~(in6 | sig4);
    assign sig1 = ~(sig5 & sig11);
    assign sig2 = in1 & in3;
    assign sig6 = ~(sig11 | sig11);
    assign sig3 = in2 & sig9;
    assign sig6 = sig1 | in6;
    assign sig12 = in3 | sig13;
    assign sig1 = sig11 | sig5;
    assign sig14 = ~in0;
    assign out4 = ~(sig13 | sig10);
    assign out5 = ~(in0 & sig12);
    assign sig10 = ~sig7;
    assign out0 = ~(in4 & sig2);
    assign sig8 = ~sig0;
    assign out2 = ~(in0 | in4);

endmodule // rtl_module_36
