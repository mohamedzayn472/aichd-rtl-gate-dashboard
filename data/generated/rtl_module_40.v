// Auto-generated RTL Module 40
module rtl_module_40(
    input clk,
    input reset,
    input [7:0] in0, input [7:0] in1, input [7:0] in2, input [7:0] in3, input [7:0] in4, input [7:0] in5,
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

    // Combinational logic
    assign sig6 = in5 & in4;
    assign sig12 = sig12 | sig7;
    assign sig9 = ~in2;
    assign sig9 = ~(sig12 | in5);
    assign sig4 = in3 & sig2;
    assign sig3 = ~sig12;
    assign sig8 = in2 & in4;
    assign sig3 = ~sig4;
    assign sig12 = in5 & sig11;
    assign sig1 = sig9 & in4;
    assign sig10 = ~(in0 & sig6);
    assign sig5 = sig11 | sig12;
    assign sig1 = ~in2;
    assign sig9 = sig6 | sig10;
    assign sig8 = in2 ^ sig13;
    assign sig5 = ~sig9;
    assign out2 = ~(in2 & sig10);
    assign sig3 = ~sig12;
    assign sig12 = ~in4;
    assign out5 = ~(sig7 & sig2);
    assign out6 = in4 ^ sig8;
    assign sig4 = ~sig4;
    assign out1 = ~(in2 & sig12);

endmodule // rtl_module_40
