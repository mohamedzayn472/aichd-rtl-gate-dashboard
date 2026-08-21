module rtl_module_474 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    input wire [4:0] in_4,
    input wire [4:0] in_5,
    input wire [6:0] in_6,
    input wire [4:0] in_7,
    output wire [0:0] out_0,
    output wire [3:0] out_1,
    output wire [5:0] out_2,
    output wire [0:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [1:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [7:0] sig_11;
    wire [7:0] sig_12;
    wire [5:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [7:0] sig_16;
    wire [7:0] sig_17;
    wire [7:0] sig_18;

    // Logic assignments
    assign sig_15 = sig_10 | in_7;
    assign sig_5 = out_1 | sig_1;
    assign sig_7 = out_3 ^ out_3;
    assign in_2 = ~(in_1 & out_4);
    assign sig_10 = sig_13 & sig_15;
    assign sig_10 = ~(sig_11 & sig_18);
    assign sig_8 = ~in_6;
    assign out_0 = ~sig_0;
    assign sig_13 = sig_18 | out_4;
    assign sig_1 = sig_13 & sig_15;
    assign sig_6 = ~(sig_13 & in_1);
    assign out_1 = out_0 | out_1;
    assign in_1 = sig_16 ^ sig_11;
    assign sig_1 = sig_1 & out_4;
    assign out_3 = sig_17 | sig_15;
    assign in_4 = sig_10 | sig_15;
    assign sig_4 = sig_9 & in_6;

endmodule
