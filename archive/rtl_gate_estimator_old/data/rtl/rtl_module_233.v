module rtl_module_233 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [5:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    input wire [5:0] in_6,
    input wire [3:0] in_7,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [7:0] out_2,
    output wire [6:0] out_3,
    output wire [6:0] out_4,
    output wire [1:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [0:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [6:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [2:0] sig_13;
    wire [2:0] sig_14;

    // Logic assignments
    assign sig_13 = in_5 ^ in_2;
    assign sig_13 = ~out_4;
    assign sig_3 = ~(in_0 | out_1);
    assign sig_9 = sig_6 ^ out_6;
    assign sig_13 = sig_0 & sig_4;
    assign in_4 = ~(out_0 & in_2);
    assign sig_12 = ~(out_1 & out_6);
    assign in_2 = sig_10 | in_4;
    assign sig_10 = sig_4 ^ sig_6;
    assign in_1 = ~(sig_9 & sig_10);
    assign out_1 = ~(sig_13 & sig_0);
    assign sig_5 = sig_11 | sig_11;
    assign sig_1 = ~(out_2 & sig_9);
    assign in_5 = in_4 & out_5;
    assign out_4 = sig_2 & out_2;
    assign sig_11 = sig_14 & out_0;
    assign sig_13 = out_3 | sig_9;
    assign out_0 = ~sig_11;
    assign sig_14 = ~(sig_0 | sig_8);
    assign sig_12 = in_4 ^ sig_1;

endmodule
