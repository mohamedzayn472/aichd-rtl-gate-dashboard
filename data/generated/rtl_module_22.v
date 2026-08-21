// Auto-generated RTL Module 22
module rtl_module_22(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
    output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3
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
    wire [7:0] sig15;
    wire [7:0] sig16;
    wire [7:0] sig17;

    // Combinational logic
    assign sig9 = in6 | in2;
    assign sig3 = sig6 & sig6;
    assign sig7 = ~(in6 | sig15);
    assign sig7 = ~(sig6 | in3);
    assign sig12 = ~(in2 & sig9);
    assign sig11 = ~sig17;
    assign sig16 = in2 ^ in2;
    assign sig3 = ~sig14;
    assign sig6 = ~(in3 | sig10);
    assign sig1 = sig10 ^ in3;
    assign sig4 = ~(in6 & sig7);
    assign sig13 = sig8 & sig17;
    assign sig10 = in1 ^ in1;
    assign sig15 = sig12 | sig7;
    assign sig8 = ~(in5 & sig10);
    assign sig14 = ~sig15;
    assign sig5 = in5 | sig11;
    assign sig5 = sig17 | sig15;
    assign sig16 = ~(in5 & in0);
    assign sig0 = sig2 & sig1;
    assign sig7 = ~in1;
    assign sig6 = sig4 & in0;
    assign sig1 = ~(in3 & sig11);
    assign sig0 = ~(sig15 & sig15);
    assign sig13 = in4 & in4;
    assign sig8 = sig0 & sig16;
    assign sig16 = ~(in2 & sig0);
    assign out3 = ~(sig13 | in6);
    assign out0 = in0 | sig3;
    assign out1 = ~(sig4 & sig7);
    assign out2 = in4 | in4;

endmodule // rtl_module_22
