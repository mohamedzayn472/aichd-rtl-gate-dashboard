module rtl_module_80 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    input wire [7:0] in_2,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [5:0] out_3,
    output wire [3:0] out_4,
    output wire [2:0] out_5,
    output wire [6:0] out_6
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [7:0] sig_8;
    wire [5:0] sig_9;
    wire [1:0] sig_10;
    wire [7:0] sig_11;
    wire [1:0] sig_12;
    wire [2:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [1:0] sig_16;
    wire [1:0] sig_17;
    wire [3:0] sig_18;
    wire [7:0] sig_19;
    wire [1:0] sig_20;
    wire [4:0] sig_21;
    wire [0:0] sig_22;
    wire [5:0] sig_23;
    wire [0:0] sig_24;
    wire [7:0] sig_25;
    wire [7:0] sig_26;
    wire [7:0] sig_27;
    wire [5:0] sig_28;
    wire [6:0] sig_29;

    // Logic assignments
    assign sig_7 = in_2 ^ out_5;
    assign sig_16 = ~(out_3 | sig_13);
    assign sig_27 = out_4 & sig_7;
    assign sig_0 = ~(sig_15 & out_6);
    assign sig_15 = sig_28 & sig_2;
    assign sig_29 = sig_1 | sig_14;
    assign sig_5 = out_6 ^ sig_14;
    assign sig_13 = in_0 ^ sig_4;
    assign sig_8 = ~(out_4 & sig_6);
    assign sig_25 = ~(sig_20 | sig_8);
    assign sig_12 = sig_28 ^ sig_8;

endmodule
