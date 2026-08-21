module rtl_module_113 (
input wire [2:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    input wire [0:0] in_3,
    input wire [4:0] in_4,
    input wire [2:0] in_5,
    input wire [7:0] in_6,
    input wire [3:0] in_7,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [7:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [4:0] sig_10;
    wire [6:0] sig_11;
    wire [0:0] sig_12;
    wire [3:0] sig_13;
    wire [3:0] sig_14;
    wire [3:0] sig_15;
    wire [7:0] sig_16;
    wire [3:0] sig_17;
    wire [6:0] sig_18;

    // Logic assignments
    assign sig_10 = ~in_5;
    assign sig_0 = sig_9 ^ in_2;
    assign sig_16 = in_2 | sig_1;
    assign sig_8 = ~sig_3;
    assign sig_10 = in_1 | sig_6;
    assign sig_11 = ~(sig_2 & sig_5);
    assign sig_6 = ~sig_5;
    assign sig_3 = ~sig_17;
    assign sig_2 = ~sig_0;
    assign in_0 = ~in_5;
    assign in_7 = ~sig_0;
    assign in_2 = ~(sig_3 | out_1);
    assign sig_1 = sig_18 & sig_8;

endmodule
