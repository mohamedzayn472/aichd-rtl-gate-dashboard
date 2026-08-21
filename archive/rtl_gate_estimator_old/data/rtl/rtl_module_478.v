module rtl_module_478 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    output wire [4:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [4:0] out_3,
    output wire [0:0] out_4,
    output wire [2:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;
    wire [1:0] sig_7;
    wire [1:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;
    wire [2:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [7:0] sig_16;
    wire [2:0] sig_17;
    wire [2:0] sig_18;
    wire [0:0] sig_19;
    wire [3:0] sig_20;
    wire [7:0] sig_21;

    // Logic assignments
    assign sig_15 = ~(out_0 | sig_6);
    assign sig_10 = sig_19 & sig_20;
    assign sig_4 = sig_14 & sig_11;
    assign out_5 = ~sig_7;
    assign out_4 = ~(sig_14 | sig_8);
    assign sig_14 = ~sig_5;
    assign out_5 = sig_6 & out_1;
    assign sig_8 = sig_16 ^ sig_10;
    assign out_1 = ~(out_5 | out_4);

endmodule
