// Auto-generated RTL Module 5
module rtl_module_5(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5,
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
    wire [7:0] sig8;
    wire [7:0] sig9;
    wire [7:0] sig10;
    wire [7:0] sig11;
    wire [7:0] sig12;
    wire [7:0] sig13;
    wire [7:0] sig14;

    // Combinational logic
    assign sig4 = ~(in0 & in2);
    assign sig9 = sig6 | sig12;
    assign sig7 = ~(in5 & sig5);
    assign sig10 = ~sig7;
    assign sig12 = in4 | sig7;
    assign sig1 = ~(sig2 | sig10);
    assign sig10 = in4 ^ in5;
    assign sig13 = ~(sig5 & sig1);
    assign sig3 = in5 | sig4;
    assign sig0 = sig2 | in0;
    assign sig13 = in3 | sig9;
    assign sig14 = sig7 & sig6;
    assign sig11 = ~(in4 | in1);
    assign sig6 = ~(sig6 | sig7);
    assign sig11 = in1 | sig10;
    assign sig12 = sig14 & in0;
    assign sig2 = ~in1;
    assign sig0 = ~(sig8 | sig7);
    assign out3 = ~(in1 & in0);
    assign sig12 = ~sig2;
    assign sig8 = ~in5;
    assign out1 = ~(sig9 & in2);
    assign sig13 = ~in4;

endmodule // rtl_module_5
