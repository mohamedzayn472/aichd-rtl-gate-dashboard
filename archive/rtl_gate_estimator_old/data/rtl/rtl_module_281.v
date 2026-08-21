module rtl_module_281 (
input wire [7:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [2:0] out_2,
    output wire [0:0] out_3,
    output wire [6:0] out_4,
    output wire [1:0] out_5,
    output wire [6:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [3:0] sig_12;
    wire [0:0] sig_13;
    wire [2:0] sig_14;
    wire [5:0] sig_15;
    wire [5:0] sig_16;
    wire [6:0] sig_17;
    wire [3:0] sig_18;
    wire [6:0] sig_19;
    wire [3:0] sig_20;
    wire [7:0] sig_21;
    wire [2:0] sig_22;
    wire [6:0] sig_23;
    wire [2:0] sig_24;
    wire [4:0] sig_25;
    wire [2:0] sig_26;
    wire [0:0] sig_27;
    wire [6:0] sig_28;
    wire [6:0] sig_29;
    wire [1:0] sig_30;
    wire [5:0] sig_31;

    // Logic assignments
    assign in_1 = ~(out_6 & out_7);
    assign sig_18 = ~(sig_3 & sig_9);
    assign sig_3 = sig_11 | out_6;
    assign in_2 = ~(in_2 & sig_14);
    assign sig_31 = ~(sig_11 & sig_7);
    assign out_6 = sig_2 & sig_8;
    assign sig_3 = sig_8 | sig_1;
    assign sig_15 = sig_29 ^ out_7;
    assign sig_20 = sig_31 & sig_6;
    assign sig_31 = ~sig_23;
    assign sig_28 = ~(sig_22 & sig_16);
    assign sig_3 = out_2 & sig_4;
    assign sig_17 = ~(sig_13 & out_0);
    assign sig_0 = ~(sig_21 & sig_16);
    assign sig_5 = in_0 ^ in_2;

endmodule
