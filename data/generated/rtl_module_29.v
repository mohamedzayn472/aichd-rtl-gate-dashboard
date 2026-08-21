// Auto-generated RTL Module 29
module rtl_module_29(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5, input [7:0] in6,
    output [7:0] out0, output [7:0] out1, output [7:0] out2
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;
    wire [7:0] sig4;
    wire [7:0] sig5;

    // Combinational logic
    assign sig5 = in5 & in1;
    assign sig2 = sig1 & sig3;
    assign sig2 = ~(in4 & sig5);
    assign sig5 = sig2 | in1;
    assign sig0 = in5 ^ sig0;
    assign out2 = sig3 ^ sig2;
    assign out0 = ~(in0 & in2);
    assign out1 = ~(sig4 | sig5);

endmodule // rtl_module_29
