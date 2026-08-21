// Auto-generated RTL Module 4
module rtl_module_4(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6, input [7:0] in7,
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

    // Combinational logic
    assign sig5 = in3 & in6;
    assign sig5 = sig1 ^ sig4;
    assign sig5 = ~(in6 | sig8);
    assign sig2 = sig1 & in4;
    assign sig1 = ~(in4 & sig0);
    assign sig5 = ~(sig6 & sig5);
    assign sig6 = ~in1;
    assign sig0 = ~(sig3 & sig4);
    assign sig8 = ~(in6 | sig0);
    assign sig6 = ~(sig3 & in5);
    assign sig5 = in5 & sig9;
    assign sig8 = ~(sig1 | sig4);
    assign out0 = in6 ^ in5;
    assign sig8 = ~sig4;
    assign out2 = in3 | sig6;
    assign out3 = ~(sig6 | in2);

endmodule // rtl_module_4
