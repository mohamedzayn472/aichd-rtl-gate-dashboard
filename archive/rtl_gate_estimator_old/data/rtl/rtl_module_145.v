module rtl_module_145 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    input wire [6:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [7:0] in_5,
    input wire [2:0] in_6,
    input wire [5:0] in_7,
    output wire [6:0] out_0,
    output wire [3:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3,
    output wire [0:0] out_4,
    output wire [0:0] out_5,
    output wire [7:0] out_6,
    output wire [4:0] out_7
);

    // Internal signals
    wire [2:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [0:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;
    wire [7:0] sig_21;
    wire [7:0] sig_22;
    wire [1:0] sig_23;
    wire [5:0] sig_24;
    wire [1:0] sig_25;
    wire [0:0] sig_26;
    wire [3:0] sig_27;
    wire [0:0] sig_28;
    wire [0:0] sig_29;
    wire [2:0] sig_30;
    wire [1:0] sig_31;

    // Logic assignments
    assign sig_2 = in_5 | sig_4;
    assign sig_15 = ~(sig_26 | in_0);
    assign in_3 = ~(sig_8 | in_2);
    assign in_3 = sig_11 & in_4;
    assign sig_13 = out_4 ^ sig_31;
    assign sig_9 = ~out_4;
    assign sig_0 = sig_29 | sig_21;
    assign sig_0 = sig_12 & sig_1;
    assign sig_18 = ~(out_0 & sig_20);
    assign in_7 = ~(sig_25 | sig_25);
    assign sig_28 = sig_22 | out_2;
    assign sig_9 = ~sig_12;
    assign sig_22 = ~(sig_6 | in_5);
    assign sig_10 = out_5 ^ in_5;
    assign sig_27 = sig_7 ^ out_2;
    assign out_7 = ~(sig_5 | out_4);
    assign in_4 = sig_23 & in_3;
    assign in_0 = out_2 | sig_5;
    assign sig_16 = ~sig_4;
    assign in_6 = ~sig_13;
    assign sig_29 = sig_25 | sig_24;
    assign sig_11 = out_5 ^ sig_21;
    assign sig_1 = ~(sig_24 | in_6);
    assign sig_6 = sig_15 | sig_16;
    assign sig_31 = ~sig_24;
    assign sig_17 = sig_4 | in_4;
    assign sig_19 = sig_2 ^ out_3;
    assign sig_28 = out_1 ^ in_6;
    assign sig_21 = in_6 | out_7;
    assign sig_7 = in_1 & sig_21;
    assign sig_9 = in_1 | sig_22;
    assign sig_25 = ~(sig_20 | sig_14);
    assign in_7 = sig_27 ^ in_5;
    assign sig_19 = sig_5 ^ sig_1;
    assign sig_24 = ~sig_19;
    assign sig_13 = ~(in_3 & sig_20);
    assign sig_15 = in_6 ^ in_3;
    assign sig_16 = ~(out_6 | sig_19);
    assign sig_10 = sig_4 | sig_17;
    assign sig_30 = sig_9 | sig_25;
    assign sig_23 = ~(sig_25 & sig_19);
    assign out_3 = in_3 & out_1;
    assign in_7 = sig_6 | in_7;

endmodule
