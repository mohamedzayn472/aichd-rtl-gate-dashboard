module rtl_module_320 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [3:0] in_2,
    input wire [2:0] in_3,
    input wire [5:0] in_4,
    input wire [1:0] in_5,
    input wire [4:0] in_6,
    output wire [5:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [0:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [7:0] sig_12;
    wire [4:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [5:0] sig_16;
    wire [3:0] sig_17;
    wire [1:0] sig_18;
    wire [6:0] sig_19;
    wire [0:0] sig_20;
    wire [7:0] sig_21;
    wire [7:0] sig_22;

    // Logic assignments
    assign sig_11 = sig_0 & sig_21;
    assign sig_15 = sig_2 & sig_3;
    assign in_3 = sig_10 ^ sig_1;
    assign sig_17 = sig_0 & sig_12;
    assign sig_10 = ~(in_4 | in_5);
    assign sig_18 = sig_10 & in_0;
    assign in_6 = ~(sig_11 | sig_5);
    assign sig_17 = ~in_5;
    assign sig_16 = ~(in_1 | sig_0);

endmodule
