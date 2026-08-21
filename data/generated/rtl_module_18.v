// Auto-generated RTL Module 18
module rtl_module_18(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
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

    // Combinational logic
    assign sig1 = ~(in2 & in2);
    assign sig6 = ~(sig10 & sig8);
    assign sig12 = ~in2;
    assign sig4 = sig4 | in0;
    assign sig7 = ~(in0 | sig5);
    assign sig7 = ~(sig4 | sig11);
    assign sig8 = in1 | in2;
    assign sig1 = ~(sig4 | sig2);
    assign sig0 = ~(in1 & sig3);
    assign sig10 = ~(sig8 | in1);
    assign sig6 = in0 | sig1;
    assign sig1 = sig11 ^ sig7;
    assign sig8 = ~(in1 | in0);
    assign sig7 = sig6 | sig10;
    assign sig12 = ~in1;
    assign sig10 = sig5 ^ in2;
    assign sig9 = in0 & sig10;
    assign sig11 = sig8 | sig11;
    assign sig13 = in1 & in3;
    assign sig6 = sig0 | sig13;
    assign sig11 = ~in1;
    assign sig4 = sig0 ^ in0;
    assign sig4 = ~(in0 & sig5);
    assign sig8 = ~sig10;
    assign sig13 = ~(in3 & in1);
    assign sig3 = ~(sig7 & sig4);
    assign sig11 = in2 & sig2;
    assign sig4 = ~sig10;
    assign out4 = ~(in1 | sig0);
    assign out5 = ~(sig5 | sig12);
    assign out6 = in1 ^ in1;
    assign out7 = ~(sig13 & sig10);
    assign sig8 = ~in3;
    assign out1 = sig1 ^ in3;
    assign out2 = ~(in0 | sig2);
    assign out3 = sig7 | sig5;

endmodule // rtl_module_18
