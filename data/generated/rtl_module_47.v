// Auto-generated RTL Module 47
module rtl_module_47(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2,
    output [7:0] out0, output [7:0] out1
);

    // Internal signals
    wire [7:0] sig0;
    wire [7:0] sig1;
    wire [7:0] sig2;
    wire [7:0] sig3;

    // Combinational logic
    assign sig3 = ~(in2 & in1);
    assign sig2 = ~(sig2 & sig0);
    assign sig0 = in2 | sig0;
    assign sig3 = sig3 | in0;
    assign sig3 = ~(in0 | sig2);
    assign sig0 = sig0 ^ sig2;
    assign sig0 = ~(in0 | in1);
    assign sig1 = sig0 | sig0;
    assign sig1 = ~(in1 & sig1);
    assign out1 = ~(sig1 & in2);
    assign out0 = ~(in0 | sig3);

endmodule // rtl_module_47
