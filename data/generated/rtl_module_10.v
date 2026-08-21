// Auto-generated RTL Module 10
module rtl_module_10(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
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
    wire [7:0] sig19;
    wire [7:0] sig20;
    wire [7:0] sig21;
    wire [7:0] sig22;
    wire [7:0] sig23;
    wire [7:0] sig24;
    wire [7:0] sig25;
    wire [7:0] sig26;
    wire [7:0] sig27;
    wire [7:0] sig28;

    // Combinational logic
    assign sig7 = in6 ^ in6;
    assign sig7 = ~(sig25 & sig11);
    assign sig8 = ~(in1 | sig19);
    assign sig24 = ~(sig24 | in5);
    assign sig4 = ~(in5 | sig26);
    assign sig20 = ~(sig3 | sig28);
    assign sig25 = ~(in0 | in2);
    assign sig18 = ~sig1;
    assign sig2 = in5 ^ sig4;
    assign sig13 = sig10 ^ in5;
    assign sig25 = in1 | sig4;
    assign sig16 = ~(sig28 & sig11);
    assign sig5 = ~(in2 & in6);
    assign sig25 = sig26 ^ sig15;
    assign sig10 = in5 ^ sig27;
    assign sig4 = sig14 & in0;
    assign sig23 = in6 | sig21;
    assign sig25 = ~(sig12 | sig27);
    assign sig25 = ~(in2 & in0);
    assign sig8 = ~sig0;
    assign sig11 = ~(in0 & sig14);
    assign sig8 = ~(sig23 | in5);
    assign sig20 = ~(in3 & sig26);
    assign sig7 = sig3 ^ sig21;
    assign sig19 = ~in0;
    assign sig7 = ~(sig10 & sig19);
    assign out2 = ~(in0 | sig20);
    assign sig9 = ~sig22;
    assign out4 = ~(in3 | sig3);
    assign out5 = sig1 | sig1;
    assign out6 = in3 ^ in0;
    assign out7 = sig7 & sig28;
    assign out0 = ~(in1 & sig12);
    assign sig21 = ~sig11;

endmodule // rtl_module_10
