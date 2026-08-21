// Auto-generated RTL Module 38
module rtl_module_38(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5,
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
    wire [7:0] sig11;
    wire [7:0] sig12;
    wire [7:0] sig13;
    wire [7:0] sig14;
    wire [7:0] sig15;
    wire [7:0] sig16;
    wire [7:0] sig17;
    wire [7:0] sig18;

    // Combinational logic
    assign sig1 = ~(in3 & in3);
    assign sig16 = sig6 ^ sig10;
    assign sig17 = in0 & sig5;
    assign sig2 = ~(sig0 & in5);
    assign sig13 = in5 | sig6;
    assign sig13 = sig6 & sig17;
    assign sig4 = ~(in0 | in5);
    assign sig1 = sig14 & sig10;
    assign sig5 = in0 & sig1;
    assign sig18 = sig17 ^ in0;
    assign sig12 = in2 | sig13;
    assign sig13 = ~sig12;
    assign sig3 = in0 ^ in3;
    assign sig18 = ~(sig0 & sig2);
    assign sig11 = in5 & sig2;
    assign sig9 = ~(sig3 & in2);
    assign sig14 = ~(in0 & sig9);
    assign sig0 = ~sig12;
    assign sig17 = ~in1;
    assign sig17 = sig4 | sig12;
    assign sig9 = in5 ^ sig4;
    assign sig17 = ~(sig11 | in0);
    assign sig1 = ~(in1 & sig3);
    assign sig17 = sig18 & sig12;
    assign sig6 = ~(in0 & in2);
    assign sig13 = ~(sig11 | sig6);
    assign sig5 = ~(in4 | sig4);
    assign sig8 = sig7 | in4;
    assign sig18 = in0 | sig5;
    assign sig17 = sig17 & sig14;
    assign sig2 = in2 & in5;
    assign sig18 = sig3 ^ sig6;
    assign sig11 = ~in2;
    assign sig9 = sig7 | in0;
    assign sig10 = ~(in0 & sig6);
    assign sig10 = ~sig14;
    assign sig18 = ~(in5 & in2);
    assign sig11 = sig18 | sig18;
    assign sig0 = in3 ^ sig5;
    assign sig13 = sig7 ^ in1;
    assign sig10 = in2 ^ sig4;
    assign sig14 = ~sig14;
    assign sig17 = in2 ^ in3;
    assign sig8 = sig5 & sig2;
    assign sig8 = in4 | sig6;
    assign sig2 = ~(sig2 | in5);
    assign sig18 = in4 & sig0;
    assign out5 = ~(sig12 & sig18);
    assign out0 = in0 | in4;
    assign out1 = sig17 ^ sig17;
    assign sig4 = ~in5;
    assign out3 = sig12 ^ in1;
    assign out4 = ~(in5 & sig9);

endmodule // rtl_module_38
