// Auto-generated RTL Module 17
module rtl_module_17(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2,
    output [7:0] out0, output [7:0] out1, output [7:0] out2
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

    // Combinational logic
    assign sig6 = ~(in1 & in0);
    assign sig9 = ~(sig11 & sig4);
    assign sig8 = in2 ^ sig8;
    assign sig9 = ~sig11;
    assign sig5 = in1 ^ sig0;
    assign sig6 = sig10 ^ sig1;
    assign sig11 = ~(in1 & in2);
    assign sig7 = ~(sig0 | sig9);
    assign sig12 = in2 ^ sig12;
    assign sig11 = ~(sig9 & in0);
    assign sig2 = in2 & sig7;
    assign sig9 = ~(sig10 & sig11);
    assign sig10 = ~in0;
    assign sig11 = sig0 | sig9;
    assign sig7 = in0 & sig0;
    assign sig6 = sig6 ^ in0;
    assign sig8 = ~(in0 | sig6);
    assign sig11 = ~(sig7 & sig11);
    assign sig8 = in2 & in0;
    assign sig10 = sig8 | sig5;
    assign sig6 = ~in2;
    assign sig8 = sig2 ^ in1;
    assign sig10 = in2 ^ sig5;
    assign sig12 = ~(sig10 | sig10);
    assign sig7 = ~(in1 | in2);
    assign sig8 = sig3 | sig4;
    assign out2 = in0 ^ sig4;
    assign out0 = sig11 ^ in0;
    assign out1 = ~(in2 | sig7);

endmodule // rtl_module_17
