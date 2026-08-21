// Auto-generated RTL Module 41
module rtl_module_41(
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

    // Combinational logic
    assign sig21 = in6 | in6;
    assign sig14 = sig23 & sig7;
    assign sig6 = ~(in1 | sig3);
    assign sig10 = ~(sig12 & in6);
    assign sig21 = ~(in4 & sig22);
    assign sig12 = ~(sig1 | sig5);
    assign sig2 = ~(in0 | in6);
    assign sig13 = sig15 | sig19;
    assign sig7 = in0 & sig8;
    assign sig1 = sig2 ^ in4;
    assign sig19 = ~(in3 | sig12);
    assign sig22 = ~(sig16 | sig9);
    assign sig5 = ~(in0 & in6);
    assign sig0 = ~(sig15 | sig14);
    assign sig25 = in6 | sig21;
    assign sig1 = ~(sig9 & in1);
    assign sig22 = ~(in4 & sig16);
    assign sig21 = sig19 | sig5;
    assign sig20 = in2 & in1;
    assign sig8 = sig5 & sig2;
    assign sig21 = ~in2;
    assign sig18 = ~sig12;
    assign sig23 = in4 | sig0;
    assign sig17 = ~(sig2 | sig2);
    assign sig17 = in5 ^ in6;
    assign sig8 = ~(sig11 & sig11);
    assign sig14 = in4 | sig6;
    assign sig0 = ~sig18;
    assign sig16 = in1 ^ sig13;
    assign sig16 = sig17 & sig2;
    assign sig25 = in2 ^ in0;
    assign sig25 = ~(sig8 & sig17);
    assign sig14 = ~(in2 & sig22);
    assign sig15 = ~sig18;
    assign sig24 = in6 | sig10;
    assign sig14 = ~sig21;
    assign sig15 = ~(in6 & in0);
    assign sig12 = sig8 & sig2;
    assign sig21 = ~(in6 | sig7);
    assign sig10 = ~(sig7 | in6);
    assign sig16 = ~in2;
    assign sig8 = ~(sig0 & sig22);
    assign sig12 = in2 | in0;
    assign sig2 = ~(sig23 | sig10);
    assign sig10 = ~(in1 & sig15);
    assign sig8 = sig6 ^ in4;
    assign sig6 = in5 | sig21;
    assign sig6 = ~sig23;
    assign sig8 = in5 | in1;
    assign sig7 = sig7 | sig6;
    assign sig24 = ~(in2 & sig4);
    assign sig21 = sig3 & in0;
    assign out3 = ~(in3 | sig19);
    assign out4 = sig24 & sig17;
    assign out5 = in6 & in3;
    assign out6 = sig19 ^ sig10;
    assign sig8 = ~in4;
    assign sig24 = ~sig5;
    assign out2 = ~(in2 & sig12);

endmodule // rtl_module_41
