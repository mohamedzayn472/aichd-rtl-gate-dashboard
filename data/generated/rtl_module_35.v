// Auto-generated RTL Module 35
module rtl_module_35(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6, input [7:0] in7,
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

    // Combinational logic
    assign sig2 = in1 & in1;
    assign sig2 = ~(sig1 | sig3);
    assign sig0 = in7 ^ sig0;
    assign sig6 = sig6 | in0;
    assign sig5 = in5 ^ sig6;
    assign sig0 = sig3 ^ sig5;
    assign sig6 = in0 & in0;
    assign sig1 = sig5 | sig5;
    assign sig4 = in5 ^ sig3;
    assign sig2 = sig5 ^ in1;
    assign sig3 = in2 ^ sig0;
    assign sig2 = ~sig3;
    assign sig6 = ~in7;
    assign sig6 = ~sig5;
    assign sig5 = in1 | sig1;
    assign sig0 = ~(sig0 | in2);
    assign sig6 = ~in7;
    assign sig1 = ~(sig5 & sig3);
    assign sig4 = ~(in6 & in5);
    assign sig6 = sig6 & sig5;
    assign sig3 = ~(in2 | sig3);
    assign sig0 = sig3 & in7;
    assign sig2 = in4 & sig5;
    assign sig5 = sig5 & sig6;
    assign sig4 = ~(in3 & in5);
    assign sig4 = ~(sig5 & sig5);
    assign sig5 = in6 & sig5;
    assign out3 = sig3 | in5;
    assign out4 = ~(in6 | sig1);
    assign out5 = ~(sig4 & sig0);
    assign out6 = in2 & in7;
    assign sig1 = ~sig6;
    assign out0 = in7 & sig2;
    assign out1 = sig2 | in4;
    assign out2 = in3 & sig4;

endmodule // rtl_module_35
