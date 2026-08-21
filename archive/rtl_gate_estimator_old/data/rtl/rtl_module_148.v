module rtl_module_148 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    output wire [5:0] out_0,
    output wire [3:0] out_1,
    output wire [1:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4,
    output wire [1:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;
    wire [3:0] sig_10;
    wire [0:0] sig_11;
    wire [5:0] sig_12;
    wire [1:0] sig_13;
    wire [6:0] sig_14;
    wire [7:0] sig_15;
    wire [5:0] sig_16;
    wire [4:0] sig_17;
    wire [1:0] sig_18;
    wire [0:0] sig_19;
    wire [7:0] sig_20;
    wire [2:0] sig_21;
    wire [7:0] sig_22;
    wire [2:0] sig_23;
    wire [4:0] sig_24;
    wire [2:0] sig_25;
    wire [4:0] sig_26;
    wire [7:0] sig_27;
    wire [4:0] sig_28;
    wire [1:0] sig_29;
    wire [4:0] sig_30;
    wire [0:0] sig_31;

    // Logic assignments
    assign out_2 = sig_4 ^ sig_0;
    assign sig_16 = ~in_0;
    assign sig_19 = ~in_0;
    assign sig_13 = sig_5 & sig_19;
    assign sig_29 = out_0 ^ sig_6;
    assign sig_14 = sig_6 & sig_9;
    assign out_2 = ~sig_2;
    assign sig_11 = in_2 ^ sig_27;
    assign sig_12 = out_5 ^ sig_21;

endmodule
