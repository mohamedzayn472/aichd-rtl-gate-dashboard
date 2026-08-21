// Auto-generated RTL Module 0
module rtl_module_0(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
    output [7:0] out0, output [7:0] out1
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;

    // Combinational logic
    assign sig0 = ~(in2 | in1);
    assign sig2 = sig2 | sig0;
    assign sig2 = ~(in4 | sig0);
    assign sig0 = ~sig0;
    assign sig2 = in1 & sig0;
    assign out1 = ~(sig0 & sig2);
    assign out0 = in5 | in5;

endmodule // rtl_module_0
