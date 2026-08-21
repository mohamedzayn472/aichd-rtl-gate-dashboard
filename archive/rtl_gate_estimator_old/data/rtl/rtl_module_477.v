module rtl_module_477 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    input wire [6:0] in_5,
    output wire [6:0] out_0,
    output wire [3:0] out_1,
    output wire [4:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [7:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [4:0] sig_14;
    wire [4:0] sig_15;
    wire [0:0] sig_16;
    wire [4:0] sig_17;
    wire [7:0] sig_18;
    wire [3:0] sig_19;

    // Logic assignments
    assign sig_13 = ~out_0;
    assign sig_7 = ~sig_1;
    assign sig_13 = ~sig_19;
    assign sig_4 = ~(sig_10 | in_2);
    assign sig_16 = ~(sig_11 | sig_9);
    assign out_0 = ~out_1;
    assign sig_2 = sig_13 ^ sig_12;
    assign sig_3 = sig_6 | sig_10;
    assign sig_15 = ~in_2;
    assign out_3 = sig_2 ^ sig_6;
    assign sig_0 = ~(sig_19 & sig_12);
    assign sig_16 = ~(sig_4 & sig_1);

endmodule
