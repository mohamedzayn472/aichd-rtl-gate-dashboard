module rtl_module_310 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [6:0] in_2,
    input wire [4:0] in_3,
    input wire [6:0] in_4,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2,
    output wire [6:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [4:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [1:0] sig_13;
    wire [5:0] sig_14;
    wire [3:0] sig_15;
    wire [5:0] sig_16;
    wire [5:0] sig_17;
    wire [0:0] sig_18;
    wire [5:0] sig_19;
    wire [1:0] sig_20;
    wire [4:0] sig_21;
    wire [3:0] sig_22;
    wire [2:0] sig_23;
    wire [1:0] sig_24;
    wire [1:0] sig_25;
    wire [4:0] sig_26;
    wire [3:0] sig_27;
    wire [0:0] sig_28;
    wire [7:0] sig_29;
    wire [7:0] sig_30;

    // Logic assignments
    assign sig_3 = ~(sig_11 | sig_24);
    assign sig_3 = ~(sig_18 & sig_11);
    assign sig_4 = sig_0 | sig_27;
    assign sig_10 = ~(sig_11 & out_4);
    assign sig_15 = ~(sig_29 | sig_2);
    assign sig_6 = ~(in_0 & sig_14);
    assign sig_25 = ~(sig_26 & in_2);
    assign sig_26 = ~out_4;
    assign out_0 = ~sig_7;
    assign sig_10 = sig_5 | out_1;
    assign sig_30 = ~(sig_22 & sig_17);
    assign sig_17 = out_3 & in_3;
    assign sig_16 = sig_24 | sig_29;
    assign sig_13 = ~(sig_22 | sig_12);
    assign sig_28 = sig_16 & out_4;
    assign sig_17 = ~(sig_28 & sig_28);
    assign sig_29 = sig_5 | sig_15;

endmodule
