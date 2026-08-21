// Auto-generated RTL Module 20
module rtl_module_20(
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

    // Combinational logic
    assign sig0 = ~(in1 | in3);
    assign sig3 = ~(sig3 & sig0);
    assign sig4 = in3 | sig3;
    assign sig5 = sig4 & in3;
    assign sig2 = in0 ^ sig3;
    assign sig4 = sig5 & sig1;
    assign sig2 = in0 & in3;
    assign sig0 = ~(sig0 | sig4);
    assign sig2 = in3 & sig0;
    assign sig1 = ~sig1;
    assign sig3 = ~(in3 | sig2);
    assign sig3 = ~sig3;
    assign sig0 = in1 & in2;
    assign sig4 = sig4 | sig3;
    assign sig0 = in1 | sig0;
    assign sig4 = sig3 ^ in3;
    assign sig1 = ~in1;
    assign sig1 = ~sig2;
    assign sig0 = in1 ^ in0;
    assign sig0 = ~(sig3 | sig4);
    assign out4 = in1 | sig0;
    assign out5 = sig4 & in0;
    assign sig1 = ~in0;
    assign out7 = ~(sig0 | sig3);
    assign sig4 = ~in1;
    assign out1 = sig0 | sig1;
    assign out2 = ~(in2 & sig1);
    assign out3 = ~(sig4 | in2);

endmodule // rtl_module_20
