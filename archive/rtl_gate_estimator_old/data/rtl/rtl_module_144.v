module rtl_module_144 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [6:0] in_2,
    input wire [3:0] in_3,
    input wire [5:0] in_4,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [4:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [2:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [3:0] sig_12;
    wire [1:0] sig_13;
    wire [3:0] sig_14;
    wire [5:0] sig_15;
    wire [5:0] sig_16;
    wire [2:0] sig_17;
    wire [5:0] sig_18;
    wire [1:0] sig_19;
    wire [0:0] sig_20;

    // Logic assignments
    assign sig_5 = ~(sig_1 | sig_9);
    assign sig_20 = ~(sig_5 & out_2);
    assign sig_12 = in_2 | sig_7;
    assign sig_14 = sig_1 ^ sig_11;
    assign in_3 = sig_12 | sig_3;
    assign sig_14 = ~(out_4 | out_2);
    assign in_2 = ~(sig_13 | out_2);
    assign sig_8 = ~(sig_16 | sig_19);
    assign sig_5 = ~out_0;
    assign sig_1 = sig_1 ^ in_1;

endmodule
