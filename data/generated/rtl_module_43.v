// Auto-generated RTL Module 43
module rtl_module_43(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4
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

    // Combinational logic
    assign sig4 = ~(in2 & in1);
    assign sig5 = ~sig5;
    assign sig3 = in3 | sig6;
    assign sig5 = ~sig5;
    assign sig7 = ~in2;
    assign sig1 = sig2 | sig3;
    assign sig6 = ~(in2 | in1);
    assign sig2 = ~sig3;
    assign sig0 = ~(in1 | sig7);
    assign sig2 = sig6 | in3;
    assign sig4 = ~(in2 | sig7);
    assign sig1 = sig0 ^ sig6;
    assign sig3 = ~(in1 | in0);
    assign sig7 = sig7 ^ sig1;
    assign sig5 = ~(in2 | sig4);
    assign sig0 = sig4 ^ in2;
    assign sig5 = ~in0;
    assign sig4 = ~(sig3 | sig2);
    assign sig7 = in2 ^ in3;
    assign sig7 = sig6 & sig4;
    assign sig5 = ~(in1 | sig2);
    assign sig1 = ~sig6;
    assign sig3 = in1 & sig5;
    assign sig4 = sig5 ^ sig4;
    assign sig7 = ~(in3 & in2);
    assign sig2 = sig7 ^ sig6;
    assign sig3 = in0 | sig2;
    assign out2 = ~(sig4 | in0);
    assign out3 = in1 | sig6;
    assign out4 = sig1 & sig1;
    assign sig0 = ~in0;
    assign sig1 = ~sig1;

endmodule // rtl_module_43
