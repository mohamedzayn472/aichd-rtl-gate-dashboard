module rtl_module_468 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    input wire [0:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    input wire [7:0] in_5,
    output wire [3:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3,
    output wire [5:0] out_4,
    output wire [0:0] out_5,
    output wire [6:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;
    wire [3:0] sig_14;
    wire [4:0] sig_15;
    wire [6:0] sig_16;
    wire [7:0] sig_17;
    wire [4:0] sig_18;
    wire [6:0] sig_19;

    // Logic assignments
    assign out_1 = ~in_2;
    assign sig_7 = sig_2 | out_5;
    assign out_4 = sig_10 | sig_1;
    assign sig_3 = in_3 ^ sig_12;
    assign in_3 = in_5 & in_1;
    assign out_5 = out_1 | in_2;
    assign sig_1 = ~sig_14;
    assign sig_19 = sig_13 & sig_10;
    assign out_3 = ~(out_4 & out_4);
    assign sig_6 = sig_9 | in_1;
    assign in_5 = ~sig_10;
    assign sig_7 = sig_14 ^ out_2;
    assign sig_17 = ~(sig_11 | out_4);
    assign sig_7 = ~(sig_15 & in_1);
    assign sig_5 = out_0 ^ in_2;
    assign out_3 = in_1 | sig_19;
    assign out_4 = ~(sig_15 & out_1);
    assign in_3 = ~out_4;
    assign sig_1 = sig_4 & sig_5;

endmodule
