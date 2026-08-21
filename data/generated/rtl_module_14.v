// Auto-generated RTL Module 14
module rtl_module_14(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1,
    output [7:0] out0, output [7:0] out1
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
    assign sig7 = ~(in1 | in1);
    assign sig2 = ~(sig11 & sig6);
    assign sig7 = ~(in1 | sig5);
    assign sig9 = sig11 & in1;
    assign sig10 = ~in1;
    assign sig10 = sig1 & sig10;
    assign sig8 = ~in1;
    assign sig0 = ~(sig10 | sig2);
    assign sig2 = in1 | sig0;
    assign sig5 = sig3 & in1;
    assign sig9 = ~in0;
    assign sig5 = sig10 | sig7;
    assign sig9 = in1 ^ in0;
    assign sig6 = sig8 | sig5;
    assign sig1 = in1 ^ sig3;
    assign sig7 = sig11 & in0;
    assign out0 = ~(in1 & sig8);
    assign out1 = sig4 & sig12;

endmodule // rtl_module_14
