// Auto-generated RTL Module 1
module rtl_module_1(
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

    // Combinational logic
    assign sig4 = ~in4;
    assign sig5 = sig2 & sig6;
    assign sig5 = in1 ^ sig3;
    assign sig1 = sig1 & in3;
    assign sig9 = in6 ^ sig5;
    assign sig8 = sig0 ^ sig7;
    assign sig8 = in3 & in0;
    assign sig9 = sig9 ^ sig5;
    assign sig0 = in5 | sig1;
    assign sig4 = ~(sig3 | in6);
    assign sig1 = in6 & sig3;
    assign sig7 = ~sig4;
    assign sig2 = ~(in6 | in2);
    assign sig4 = sig5 ^ sig3;
    assign sig9 = ~(in5 | sig1);
    assign sig3 = ~(sig2 | in4);
    assign sig4 = in3 | sig6;
    assign sig5 = ~(sig8 | sig3);
    assign sig0 = in1 & in6;
    assign sig1 = sig6 ^ sig4;
    assign sig3 = in4 | sig5;
    assign sig7 = ~(sig7 | in3);
    assign sig3 = in2 | sig2;
    assign sig4 = ~(sig8 | sig8);
    assign sig9 = ~(in4 | in3);
    assign sig3 = ~sig5;
    assign sig1 = in4 | sig7;
    assign sig2 = sig1 & in1;
    assign sig1 = ~(in3 | sig9);
    assign sig9 = ~sig6;
    assign sig4 = ~in4;
    assign sig8 = ~(sig0 & sig1);
    assign sig1 = in6 ^ sig5;
    assign sig7 = sig6 ^ in1;
    assign sig8 = in5 & sig4;
    assign sig4 = sig8 | sig1;
    assign sig3 = ~(in4 | in4);
    assign out2 = sig5 | sig2;
    assign out3 = ~(in6 & sig8);
    assign out4 = sig9 & in2;
    assign sig1 = ~in0;
    assign out6 = sig4 ^ sig3;
    assign out0 = in1 & in4;
    assign out1 = sig1 & sig7;

endmodule // rtl_module_1
