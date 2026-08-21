// Auto-generated RTL Module 15
module rtl_module_15(
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

    // Combinational logic
    assign sig3 = ~(in2 & in3);
    assign sig7 = sig2 & sig1;
    assign sig5 = in3 | sig1;
    assign sig8 = ~(sig5 | in0);
    assign sig2 = ~(in2 & sig4);
    assign sig8 = ~(sig2 | sig5);
    assign sig2 = in0 | in1;
    assign sig5 = sig7 | sig0;
    assign sig8 = ~(in2 & sig7);
    assign sig4 = sig1 | in0;
    assign sig8 = ~in3;
    assign sig1 = ~sig6;
    assign out4 = in2 | in0;
    assign sig8 = ~sig7;
    assign out6 = in1 ^ sig8;
    assign out7 = ~(sig2 | in1);
    assign sig1 = ~in0;
    assign out1 = ~(sig2 & sig4);
    assign out2 = in1 | in2;
    assign out3 = ~(sig3 | sig5);

endmodule // rtl_module_15
