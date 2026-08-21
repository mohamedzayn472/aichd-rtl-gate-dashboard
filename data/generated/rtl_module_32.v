// Auto-generated RTL Module 32
module rtl_module_32(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2,
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
    wire [7:0] sig19;
    wire [7:0] sig20;
    wire [7:0] sig21;
    wire [7:0] sig22;
    wire [7:0] sig23;
    wire [7:0] sig24;
    wire [7:0] sig25;
    wire [7:0] sig26;
    wire [7:0] sig27;

    // Combinational logic
    assign sig18 = ~(in2 | in1);
    assign sig11 = sig22 & sig22;
    assign sig18 = ~(in2 & sig4);
    assign sig17 = sig26 | in1;
    assign sig1 = in0 ^ sig15;
    assign sig19 = sig1 & sig7;
    assign sig15 = in0 | in2;
    assign sig6 = sig10 & sig19;
    assign sig5 = in1 | sig22;
    assign sig4 = sig1 ^ in0;
    assign sig24 = ~(in2 & sig4);
    assign sig27 = sig27 & sig16;
    assign sig22 = in0 ^ in1;
    assign sig3 = ~(sig12 | sig18);
    assign sig4 = in1 ^ sig10;
    assign sig25 = sig23 | in1;
    assign sig10 = ~(in1 | sig20);
    assign sig22 = sig22 | sig17;
    assign sig21 = ~(in1 & in0);
    assign sig12 = ~(sig26 & sig5);
    assign sig9 = in2 ^ sig22;
    assign sig0 = sig5 | in2;
    assign sig27 = ~(in2 | sig12);
    assign sig19 = ~(sig1 & sig5);
    assign sig20 = in2 ^ in0;
    assign sig4 = ~(sig3 & sig15);
    assign sig7 = in2 ^ sig2;
    assign sig20 = sig10 ^ in0;
    assign out4 = in2 & sig21;
    assign out5 = ~(sig23 | sig10);
    assign sig8 = ~in0;
    assign out1 = sig7 | sig22;
    assign out2 = in1 & sig8;
    assign out3 = sig23 & in0;

endmodule // rtl_module_32
