// Auto-generated RTL Module 23
module rtl_module_23(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3, output [7:0] out4, output [7:0] out5
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

    // Combinational logic
    assign sig5 = ~in0;
    assign sig9 = ~sig7;
    assign sig10 = in1 | sig4;
    assign sig1 = sig10 & in0;
    assign sig6 = ~in3;
    assign sig10 = ~(sig7 & sig0);
    assign sig7 = in1 & in0;
    assign sig5 = ~sig10;
    assign sig0 = ~(in0 & sig8);
    assign sig4 = sig3 | in3;
    assign sig4 = in0 & sig10;
    assign sig0 = ~(sig9 & sig10);
    assign sig3 = in2 | in0;
    assign sig1 = ~(sig2 & sig6);
    assign sig3 = in1 ^ sig9;
    assign sig6 = ~(sig6 & in2);
    assign sig8 = ~(in1 | sig1);
    assign sig1 = ~(sig5 | sig0);
    assign sig1 = ~in1;
    assign sig9 = sig9 ^ sig9;
    assign sig0 = ~in2;
    assign out3 = ~(sig4 | in3);
    assign sig5 = ~in1;
    assign out5 = ~(sig6 & sig6);
    assign out0 = in3 | in0;
    assign out1 = ~(sig4 & sig3);

endmodule // rtl_module_23
