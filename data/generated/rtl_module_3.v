// Auto-generated RTL Module 3
module rtl_module_3(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5,
    output [7:0] out0
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;
    wire [7:0] sig4;
    wire [7:0] sig5;

    // Combinational logic
    assign sig4 = in5 & in1;
    assign sig4 = sig2 & sig4;
    assign sig0 = in3 | sig1;
    assign sig2 = sig2 ^ in0;
    assign sig5 = in5 | sig1;
    assign sig3 = sig2 & sig4;
    assign sig1 = ~(in5 & in1);
    assign sig0 = sig1 | sig3;
    assign sig3 = in5 | sig2;
    assign sig2 = ~(sig5 | in1);
    assign sig3 = in5 | sig0;
    assign sig1 = sig3 & sig1;
    assign sig2 = ~in2;

endmodule // rtl_module_3
