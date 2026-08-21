module rtl_module_354 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [7:0] out_2,
    output wire [0:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [1:0] sig_7;
    wire [1:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [0:0] sig_11;
    wire [0:0] sig_12;
    wire [4:0] sig_13;
    wire [4:0] sig_14;
    wire [2:0] sig_15;
    wire [6:0] sig_16;
    wire [4:0] sig_17;
    wire [3:0] sig_18;
    wire [3:0] sig_19;
    wire [3:0] sig_20;

    // Logic assignments
    assign sig_16 = ~(sig_10 | in_0);
    assign sig_3 = ~(sig_20 & sig_15);
    assign sig_10 = ~(sig_13 & out_0);
    assign sig_18 = ~(sig_0 | sig_20);
    assign sig_10 = in_0 | out_4;
    assign sig_18 = sig_19 ^ sig_6;
    assign sig_7 = ~(sig_11 & sig_17);
    assign in_0 = sig_15 | sig_9;

endmodule
