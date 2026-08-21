module rtl_module_296 (
input wire [4:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [2:0] in_3,
    input wire [0:0] in_4,
    input wire [2:0] in_5,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [7:0] out_3,
    output wire [2:0] out_4,
    output wire [0:0] out_5,
    output wire [5:0] out_6
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [4:0] sig_10;
    wire [6:0] sig_11;
    wire [7:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;
    wire [0:0] sig_15;
    wire [0:0] sig_16;
    wire [1:0] sig_17;
    wire [1:0] sig_18;
    wire [4:0] sig_19;
    wire [1:0] sig_20;

    // Logic assignments
    assign in_5 = sig_18 & sig_3;
    assign sig_2 = out_4 | sig_6;
    assign out_2 = ~in_2;
    assign in_0 = ~sig_15;
    assign in_5 = out_0 ^ out_3;
    assign sig_18 = sig_9 ^ in_2;
    assign in_1 = out_5 & sig_11;
    assign sig_8 = ~(sig_9 | out_0);
    assign sig_0 = sig_9 & out_1;
    assign sig_0 = out_6 & in_5;
    assign in_5 = sig_17 ^ sig_10;
    assign out_5 = sig_3 ^ sig_13;
    assign in_1 = sig_6 | sig_10;

endmodule
