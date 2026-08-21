// Auto-generated RTL Module 16
module rtl_module_16(
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
    wire [7:0] sig29;

    // Combinational logic
    assign sig20 = in2 & in1;
    assign sig20 = ~(sig8 & sig4);
    assign sig2 = in4 ^ sig17;
    assign sig18 = ~(sig20 & in1);
    assign sig21 = ~(in1 & sig5);
    assign sig19 = ~(sig23 & sig28);
    assign sig26 = in4 ^ in0;
    assign sig20 = sig2 & sig1;
    assign sig6 = ~(in2 & sig20);
    assign sig20 = ~(sig13 & in4);
    assign sig20 = in3 & sig28;
    assign sig9 = ~(sig9 & sig20);
    assign sig25 = ~in1;
    assign sig14 = ~(sig12 | sig9);
    assign sig5 = in5 & sig1;
    assign sig15 = ~sig13;
    assign sig10 = ~in1;
    assign sig27 = ~(sig4 & sig10);
    assign sig27 = ~(in2 | in5);
    assign sig24 = sig12 ^ sig4;
    assign sig3 = in4 ^ sig17;
    assign sig3 = sig7 ^ in3;
    assign sig4 = in3 ^ sig7;
    assign sig12 = sig1 & sig9;
    assign sig27 = ~(in3 & in1);
    assign sig29 = sig26 | sig10;
    assign sig6 = ~(in5 & sig10);
    assign sig14 = sig15 | in4;
    assign sig15 = ~in2;
    assign sig16 = sig2 & sig12;
    assign sig6 = ~in1;
    assign sig1 = ~(sig11 & sig1);
    assign sig28 = in3 ^ sig19;
    assign sig9 = ~(sig21 | in3);
    assign sig3 = ~(in0 & sig27);
    assign sig28 = ~sig4;
    assign sig24 = in5 ^ in2;
    assign sig1 = ~sig11;
    assign sig18 = ~in0;
    assign sig17 = ~(sig6 & in2);
    assign sig16 = in0 ^ sig12;
    assign sig17 = ~sig24;
    assign sig19 = in4 ^ in5;
    assign sig12 = sig4 & sig3;
    assign sig11 = in2 ^ sig17;
    assign out0 = sig6 | in4;
    assign out1 = ~(in3 & sig16);
    assign out2 = sig1 & sig1;
    assign out3 = in5 | in2;
    assign sig14 = ~sig16;

endmodule // rtl_module_16
