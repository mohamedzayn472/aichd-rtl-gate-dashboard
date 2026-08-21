module rtl_module_101 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [2:0] sig_13;
    wire [0:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [2:0] sig_17;
    wire [7:0] sig_18;
    wire [6:0] sig_19;
    wire [1:0] sig_20;
    wire [7:0] sig_21;
    wire [0:0] sig_22;
    wire [7:0] sig_23;
    wire [5:0] sig_24;
    wire [7:0] sig_25;
    wire [7:0] sig_26;
    wire [7:0] sig_27;
    wire [1:0] sig_28;
    wire [2:0] sig_29;
    wire [1:0] sig_30;
    wire [5:0] sig_31;

    // Logic assignments
    assign sig_8 = sig_30 | sig_15;
    assign sig_11 = ~(in_0 & sig_31);
    assign sig_9 = ~(sig_24 & sig_2);
    assign sig_29 = sig_4 | sig_19;
    assign sig_16 = sig_5 & sig_23;
    assign sig_4 = sig_18 ^ sig_7;

endmodule
