// Auto-generated RTL Module 21
module rtl_module_21(
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

    // Combinational logic
    assign sig8 = in1 ^ in5;
    assign sig4 = sig6 | sig4;
    assign sig2 = in4 & sig9;
    assign sig7 = ~(sig6 | in4);
    assign sig8 = in2 & sig6;
    assign sig2 = sig6 ^ sig6;
    assign sig8 = in3 ^ in1;
    assign sig3 = ~sig3;
    assign sig7 = in5 ^ sig2;
    assign sig6 = sig8 & in3;
    assign sig6 = ~(in4 & sig2);
    assign sig5 = sig4 | sig3;
    assign out0 = ~(in0 | in3);
    assign out1 = sig1 ^ sig8;
    assign out2 = ~(in1 | sig0);
    assign out3 = sig6 ^ in5;
    assign out4 = ~(in4 & sig0);
    assign out5 = sig3 & sig9;

endmodule // rtl_module_21
