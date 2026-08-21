module rtl_module_197 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    input wire [1:0] in_4,
    output wire [1:0] out_0,
    output wire [5:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3,
    output wire [2:0] out_4,
    output wire [3:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [2:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [5:0] sig_13;
    wire [2:0] sig_14;
    wire [5:0] sig_15;
    wire [7:0] sig_16;
    wire [1:0] sig_17;
    wire [0:0] sig_18;
    wire [7:0] sig_19;
    wire [5:0] sig_20;
    wire [6:0] sig_21;
    wire [3:0] sig_22;
    wire [3:0] sig_23;
    wire [5:0] sig_24;
    wire [3:0] sig_25;
    wire [5:0] sig_26;
    wire [7:0] sig_27;

    // Logic assignments
    assign sig_16 = ~(sig_7 & sig_3);
    assign out_3 = sig_9 ^ out_4;
    assign sig_10 = ~(sig_10 & sig_26);
    assign sig_25 = ~(in_1 & sig_15);
    assign sig_1 = ~(sig_19 & sig_4);
    assign sig_15 = ~(sig_0 & out_0);
    assign sig_24 = ~out_5;
    assign sig_12 = ~(in_4 | sig_23);
    assign sig_7 = ~sig_12;
    assign sig_4 = ~(sig_18 | in_3);
    assign sig_10 = ~sig_9;
    assign in_0 = ~(sig_15 | sig_17);
    assign sig_25 = ~(out_2 & sig_4);
    assign sig_15 = sig_26 ^ sig_15;
    assign out_1 = ~(sig_7 & sig_7);
    assign out_5 = ~(sig_2 & sig_13);
    assign in_3 = ~(sig_7 | out_0);
    assign sig_13 = ~(sig_10 & sig_19);
    assign in_0 = ~sig_14;
    assign sig_8 = sig_4 ^ sig_13;
    assign in_1 = sig_21 & sig_0;
    assign sig_24 = sig_4 ^ sig_23;

endmodule
