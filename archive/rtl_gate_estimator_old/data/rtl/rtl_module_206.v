module rtl_module_206 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    input wire [6:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3,
    output wire [2:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [6:0] sig_9;
    wire [7:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [0:0] sig_15;
    wire [6:0] sig_16;
    wire [5:0] sig_17;
    wire [5:0] sig_18;
    wire [6:0] sig_19;
    wire [0:0] sig_20;

    // Logic assignments
    assign out_1 = ~sig_0;
    assign sig_11 = ~sig_17;
    assign sig_12 = sig_18 | sig_11;
    assign sig_5 = ~sig_5;
    assign sig_7 = in_2 | sig_19;
    assign in_3 = sig_9 ^ sig_0;
    assign sig_5 = ~(sig_0 | in_3);
    assign sig_0 = sig_11 ^ out_2;
    assign sig_13 = sig_4 | out_1;
    assign sig_6 = sig_9 ^ out_0;
    assign sig_5 = in_4 ^ sig_9;
    assign in_3 = sig_6 & sig_13;
    assign out_4 = ~(out_1 & sig_5);
    assign in_1 = sig_7 | in_4;
    assign sig_1 = sig_12 & sig_6;
    assign sig_2 = ~(out_3 & sig_18);

endmodule
