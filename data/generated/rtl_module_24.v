// Auto-generated RTL Module 24
module rtl_module_24(
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

    // Combinational logic
    assign sig1 = in1 ^ in3;
    assign sig2 = ~(sig3 | sig2);
    assign sig2 = in0 & sig0;
    assign sig2 = ~sig2;
    assign sig1 = in1 & sig0;
    assign sig4 = ~sig3;
    assign sig0 = ~(in4 & in3);
    assign sig4 = sig0 & sig2;
    assign sig2 = in4 & sig4;
    assign sig2 = ~sig0;
    assign sig0 = ~in3;
    assign out1 = ~(sig4 | sig1);

endmodule // rtl_module_24
