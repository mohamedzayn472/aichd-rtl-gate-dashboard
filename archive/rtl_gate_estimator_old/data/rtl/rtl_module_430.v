module rtl_module_430 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [6:0] in_3,
    input wire [1:0] in_4,
    output wire [2:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [6:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [0:0] sig_11;
    wire [4:0] sig_12;
    wire [5:0] sig_13;
    wire [5:0] sig_14;
    wire [5:0] sig_15;
    wire [5:0] sig_16;
    wire [5:0] sig_17;
    wire [0:0] sig_18;
    wire [2:0] sig_19;
    wire [6:0] sig_20;
    wire [3:0] sig_21;
    wire [5:0] sig_22;
    wire [6:0] sig_23;
    wire [0:0] sig_24;
    wire [7:0] sig_25;
    wire [7:0] sig_26;

    // Logic assignments
    assign sig_9 = sig_3 | sig_26;
    assign sig_7 = ~in_3;
    assign sig_21 = in_2 ^ in_1;
    assign sig_6 = ~(sig_10 & sig_20);
    assign sig_19 = ~(sig_4 & sig_22);
    assign in_1 = ~(sig_6 & sig_6);
    assign in_3 = sig_23 | sig_18;

endmodule
