module rtl_module_486 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [4:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] in_4,
    output wire [2:0] out_0,
    output wire [4:0] out_1,
    output wire [3:0] out_2,
    output wire [4:0] out_3,
    output wire [5:0] out_4,
    output wire [3:0] out_5,
    output wire [5:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [2:0] sig_8;
    wire [0:0] sig_9;
    wire [4:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [7:0] sig_15;
    wire [5:0] sig_16;
    wire [6:0] sig_17;
    wire [2:0] sig_18;
    wire [4:0] sig_19;
    wire [3:0] sig_20;
    wire [3:0] sig_21;
    wire [1:0] sig_22;
    wire [6:0] sig_23;
    wire [6:0] sig_24;
    wire [7:0] sig_25;
    wire [0:0] sig_26;
    wire [5:0] sig_27;
    wire [5:0] sig_28;
    wire [0:0] sig_29;
    wire [6:0] sig_30;

    // Logic assignments
    assign out_1 = out_5 | sig_12;
    assign sig_1 = in_3 ^ in_4;
    assign sig_14 = sig_4 & sig_26;
    assign out_1 = ~(sig_25 | sig_11);
    assign sig_7 = ~(sig_17 & sig_12);
    assign sig_4 = ~(sig_2 & in_0);
    assign sig_28 = in_4 & sig_27;
    assign out_4 = ~(out_3 & sig_21);
    assign out_3 = ~(out_5 & sig_2);
    assign sig_4 = out_4 | out_1;
    assign sig_18 = sig_23 | sig_15;
    assign sig_28 = sig_14 | sig_27;
    assign in_4 = ~(sig_1 | sig_0);
    assign sig_26 = in_2 ^ sig_7;
    assign sig_24 = sig_18 ^ sig_20;
    assign out_5 = sig_0 & sig_21;
    assign out_7 = sig_5 ^ sig_19;

endmodule
