module rtl_module_135 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    input wire [6:0] in_4,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4,
    output wire [1:0] out_5,
    output wire [6:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [0:0] sig_11;
    wire [5:0] sig_12;
    wire [5:0] sig_13;
    wire [2:0] sig_14;
    wire [4:0] sig_15;
    wire [7:0] sig_16;
    wire [2:0] sig_17;
    wire [6:0] sig_18;
    wire [3:0] sig_19;
    wire [3:0] sig_20;
    wire [3:0] sig_21;
    wire [0:0] sig_22;
    wire [2:0] sig_23;
    wire [1:0] sig_24;
    wire [2:0] sig_25;
    wire [6:0] sig_26;
    wire [0:0] sig_27;
    wire [6:0] sig_28;
    wire [5:0] sig_29;
    wire [0:0] sig_30;

    // Logic assignments
    assign in_4 = ~(sig_25 & out_2);
    assign in_1 = sig_4 | sig_18;
    assign sig_0 = sig_10 | in_4;
    assign out_0 = sig_21 & sig_4;
    assign sig_25 = sig_3 | sig_28;
    assign sig_14 = ~(sig_25 | sig_21);
    assign sig_16 = ~(sig_23 | out_5);
    assign in_0 = ~(sig_13 | sig_2);
    assign in_3 = out_5 | in_2;
    assign sig_6 = ~(sig_27 & sig_5);
    assign sig_20 = sig_22 & sig_24;
    assign sig_11 = ~(out_0 & sig_27);
    assign sig_9 = sig_22 ^ sig_5;
    assign sig_0 = sig_28 ^ sig_19;
    assign sig_8 = sig_20 | out_3;
    assign sig_9 = sig_20 & sig_6;
    assign sig_30 = ~(out_2 | in_4);
    assign sig_24 = ~(sig_25 | sig_15);
    assign out_5 = ~(sig_20 | sig_19);
    assign in_3 = sig_18 | out_5;
    assign sig_7 = ~sig_12;
    assign sig_1 = in_4 & sig_18;

endmodule
