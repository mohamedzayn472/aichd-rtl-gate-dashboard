module rtl_module_339 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [6:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [6:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;
    wire [4:0] sig_12;
    wire [2:0] sig_13;
    wire [0:0] sig_14;
    wire [5:0] sig_15;
    wire [3:0] sig_16;

    // Logic assignments
    assign out_1 = ~(sig_12 | out_0);
    assign sig_5 = out_1 | sig_15;
    assign out_0 = ~(out_0 & sig_8);
    assign sig_16 = sig_12 | sig_4;
    assign sig_9 = in_2 ^ sig_7;
    assign sig_2 = ~(sig_9 | sig_9);
    assign sig_7 = sig_15 ^ in_2;
    assign sig_12 = sig_9 ^ sig_2;

endmodule
