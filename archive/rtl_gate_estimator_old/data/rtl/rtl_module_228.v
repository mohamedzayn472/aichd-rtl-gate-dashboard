module rtl_module_228 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    input wire [4:0] in_5,
    output wire [1:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;
    wire [2:0] sig_13;
    wire [1:0] sig_14;
    wire [3:0] sig_15;
    wire [7:0] sig_16;
    wire [4:0] sig_17;
    wire [5:0] sig_18;
    wire [5:0] sig_19;
    wire [6:0] sig_20;
    wire [1:0] sig_21;
    wire [1:0] sig_22;
    wire [4:0] sig_23;
    wire [0:0] sig_24;
    wire [4:0] sig_25;

    // Logic assignments
    assign in_2 = ~(sig_17 | in_1);
    assign sig_9 = sig_25 ^ sig_19;
    assign sig_21 = ~in_2;
    assign sig_0 = ~(sig_1 & sig_2);
    assign in_1 = ~in_2;
    assign in_3 = out_1 | sig_7;
    assign sig_18 = sig_19 ^ in_5;
    assign sig_18 = sig_3 & sig_23;
    assign sig_14 = sig_7 & sig_0;
    assign sig_7 = sig_10 | sig_15;
    assign in_3 = sig_21 ^ out_0;

endmodule
