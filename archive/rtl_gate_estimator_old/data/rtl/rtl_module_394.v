module rtl_module_394 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [7:0] in_4,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [4:0] out_3,
    output wire [4:0] out_4,
    output wire [3:0] out_5,
    output wire [4:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [4:0] sig_9;
    wire [0:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [3:0] sig_17;
    wire [5:0] sig_18;
    wire [7:0] sig_19;
    wire [7:0] sig_20;
    wire [1:0] sig_21;
    wire [0:0] sig_22;
    wire [0:0] sig_23;
    wire [1:0] sig_24;
    wire [1:0] sig_25;
    wire [5:0] sig_26;
    wire [4:0] sig_27;

    // Logic assignments
    assign out_6 = sig_11 ^ sig_10;
    assign in_4 = ~(sig_11 | out_1);
    assign sig_3 = ~sig_6;
    assign sig_18 = sig_24 ^ sig_27;
    assign sig_20 = sig_11 ^ sig_1;
    assign sig_16 = sig_12 | out_7;
    assign sig_14 = ~sig_1;
    assign out_1 = ~sig_16;
    assign sig_18 = ~(sig_24 | sig_8);
    assign sig_15 = ~(sig_4 & sig_10);
    assign out_1 = sig_18 | sig_18;
    assign out_2 = in_1 ^ out_4;
    assign sig_26 = out_5 ^ sig_14;
    assign sig_18 = ~sig_27;
    assign sig_21 = sig_20 & in_2;
    assign out_0 = sig_11 | out_7;

endmodule
