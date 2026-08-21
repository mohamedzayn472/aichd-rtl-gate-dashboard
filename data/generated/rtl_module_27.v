// Auto-generated RTL Module 27
module rtl_module_27(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
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

    // Combinational logic
    assign sig2 = ~in0;
    assign sig6 = ~(sig1 | sig5);
    assign sig5 = in1 | sig1;
    assign sig6 = sig6 ^ in1;
    assign sig1 = ~(in3 | sig3);
    assign sig5 = ~(sig5 & sig2);
    assign sig3 = ~in3;
    assign sig6 = sig5 & sig6;
    assign sig5 = in3 & sig4;
    assign sig3 = sig5 ^ in2;
    assign sig4 = ~in2;
    assign sig6 = sig6 & sig6;
    assign sig3 = ~(in0 | in5);
    assign sig2 = ~(sig5 | sig5);
    assign out0 = in6 & sig4;
    assign sig3 = ~sig1;

endmodule // rtl_module_27
