// Auto-generated RTL Module 6
module rtl_module_6(
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
    wire [7:0] sig26;
    wire [7:0] sig27;
    wire [7:0] sig28;

    // Combinational logic
    assign sig23 = ~(in3 & in1);
    assign sig8 = ~sig14;
    assign sig8 = in6 | sig20;
    assign sig7 = ~(sig15 & in5);
    assign sig22 = in3 ^ sig2;
    assign sig10 = sig7 ^ sig8;
    assign sig4 = in4 ^ in0;
    assign sig22 = sig7 | sig12;
    assign sig2 = in5 | sig6;
    assign sig10 = ~sig13;
    assign sig1 = ~(in3 & sig13);
    assign sig12 = sig26 | sig13;
    assign sig27 = ~(in5 & in0);
    assign sig0 = ~(sig12 & sig15);
    assign sig12 = in2 ^ sig24;
    assign sig23 = ~sig17;
    assign sig19 = ~(in4 | sig25);
    assign sig8 = sig15 | sig7;
    assign sig0 = ~in3;
    assign sig21 = ~sig10;
    assign sig23 = ~(in6 | sig12);
    assign sig4 = sig26 | in3;
    assign sig12 = ~(in4 & sig0);
    assign sig0 = ~(sig18 & sig21);
    assign sig4 = in5 & in3;
    assign sig1 = ~sig5;
    assign sig6 = in3 ^ sig10;
    assign sig10 = ~sig10;
    assign sig24 = ~in2;
    assign sig26 = ~sig8;
    assign out2 = in3 & in0;
    assign out3 = ~(sig17 | sig1);
    assign out4 = in1 ^ sig20;
    assign out5 = sig24 & in5;
    assign out6 = in6 & sig0;
    assign out0 = sig6 | sig26;

endmodule // rtl_module_6
