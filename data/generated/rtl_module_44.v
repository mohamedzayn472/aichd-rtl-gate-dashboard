// Auto-generated RTL Module 44
module rtl_module_44(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3,
    output [7:0] out0, output [7:0] out1, output [7:0] out2
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;
    wire [7:0] sig4;

    // Combinational logic
    assign sig1 = ~(in3 | in2);
    assign sig1 = sig2 | sig3;
    assign sig0 = in1 | sig0;
    assign sig3 = ~(sig2 | in2);
    assign sig4 = ~in2;
    assign sig4 = ~sig1;
    assign sig4 = in3 | in3;
    assign out1 = ~(sig4 | sig2);
    assign out2 = in3 ^ sig4;
    assign out0 = sig0 | in3;

endmodule // rtl_module_44
