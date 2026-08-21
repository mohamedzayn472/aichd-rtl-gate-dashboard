module rtl_module_211 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    input wire [5:0] in_5,
    input wire [6:0] in_6,
    input wire [6:0] in_7,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [6:0] sig_11;
    wire [7:0] sig_12;
    wire [0:0] sig_13;
    wire [5:0] sig_14;

    // Logic assignments
    assign in_7 = sig_7 ^ sig_7;
    assign sig_10 = ~in_6;
    assign sig_5 = ~in_7;
    assign in_7 = sig_11 ^ out_2;
    assign sig_2 = in_5 | sig_11;
    assign sig_10 = sig_4 ^ in_2;
    assign in_2 = in_2 & out_2;
    assign in_0 = ~(in_4 | sig_9);
    assign sig_7 = ~in_2;
    assign sig_12 = ~(in_4 | in_1);
    assign sig_7 = in_5 & in_1;
    assign sig_1 = sig_3 | sig_13;

endmodule
