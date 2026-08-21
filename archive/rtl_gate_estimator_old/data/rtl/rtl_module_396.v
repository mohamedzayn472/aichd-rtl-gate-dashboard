module rtl_module_396 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [5:0] in_4,
    input wire [3:0] in_5,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [0:0] sig_6;
    wire [7:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;
    wire [4:0] sig_13;
    wire [1:0] sig_14;
    wire [3:0] sig_15;
    wire [3:0] sig_16;
    wire [5:0] sig_17;
    wire [1:0] sig_18;
    wire [3:0] sig_19;
    wire [0:0] sig_20;

    // Logic assignments
    assign out_2 = sig_13 & sig_4;
    assign sig_13 = ~sig_8;
    assign sig_19 = ~sig_8;
    assign out_3 = sig_20 ^ out_1;
    assign sig_11 = in_1 & sig_6;
    assign in_0 = ~(in_3 | out_2);
    assign sig_8 = ~(sig_17 | out_0);
    assign sig_3 = sig_18 ^ in_1;
    assign sig_5 = ~(sig_15 & sig_5);
    assign sig_20 = ~(sig_9 | out_3);
    assign sig_10 = ~(in_4 & sig_3);
    assign sig_18 = ~(out_0 & sig_0);

endmodule
