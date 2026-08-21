module rtl_module_209 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    output wire [2:0] out_0,
    output wire [0:0] out_1,
    output wire [1:0] out_2,
    output wire [2:0] out_3,
    output wire [4:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [7:0] sig_15;
    wire [6:0] sig_16;
    wire [0:0] sig_17;
    wire [1:0] sig_18;
    wire [2:0] sig_19;
    wire [6:0] sig_20;
    wire [5:0] sig_21;

    // Logic assignments
    assign sig_21 = ~(sig_18 | sig_6);
    assign sig_2 = out_0 | out_5;
    assign sig_0 = sig_17 | sig_10;
    assign sig_10 = sig_5 ^ in_1;
    assign sig_7 = in_0 & sig_2;
    assign sig_11 = sig_16 | sig_4;
    assign out_1 = ~out_2;
    assign sig_11 = sig_15 | sig_16;
    assign out_5 = sig_4 ^ in_0;

endmodule
