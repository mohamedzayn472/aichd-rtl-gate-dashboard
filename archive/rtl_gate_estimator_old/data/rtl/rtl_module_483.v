module rtl_module_483 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2,
    output wire [0:0] out_3,
    output wire [4:0] out_4,
    output wire [1:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [7:0] sig_8;
    wire [0:0] sig_9;
    wire [4:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [2:0] sig_14;
    wire [5:0] sig_15;
    wire [2:0] sig_16;
    wire [3:0] sig_17;
    wire [3:0] sig_18;
    wire [7:0] sig_19;
    wire [1:0] sig_20;
    wire [7:0] sig_21;
    wire [5:0] sig_22;
    wire [6:0] sig_23;
    wire [1:0] sig_24;
    wire [7:0] sig_25;
    wire [6:0] sig_26;
    wire [7:0] sig_27;
    wire [5:0] sig_28;
    wire [0:0] sig_29;
    wire [5:0] sig_30;

    // Logic assignments
    assign sig_13 = ~(out_3 | sig_13);
    assign sig_2 = sig_1 & sig_20;
    assign sig_21 = ~(out_4 | sig_3);
    assign out_5 = ~out_2;
    assign sig_13 = sig_2 | sig_29;
    assign sig_11 = ~(sig_22 & sig_16);
    assign sig_29 = ~(in_1 | out_0);
    assign sig_14 = ~(sig_17 & sig_0);
    assign sig_20 = ~sig_16;

endmodule
