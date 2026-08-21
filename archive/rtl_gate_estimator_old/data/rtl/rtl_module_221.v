module rtl_module_221 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    output wire [7:0] out_0,
    output wire [3:0] out_1,
    output wire [5:0] out_2,
    output wire [7:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [6:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;
    wire [6:0] sig_11;
    wire [1:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [2:0] sig_15;
    wire [3:0] sig_16;
    wire [3:0] sig_17;
    wire [3:0] sig_18;
    wire [5:0] sig_19;
    wire [1:0] sig_20;

    // Logic assignments
    assign sig_10 = ~(sig_0 & sig_5);
    assign sig_15 = ~(sig_11 | sig_3);
    assign sig_7 = sig_4 & sig_16;
    assign in_2 = out_1 & sig_5;
    assign sig_14 = ~(sig_20 & sig_17);
    assign in_1 = sig_12 | sig_19;
    assign sig_14 = sig_2 ^ sig_18;

endmodule
