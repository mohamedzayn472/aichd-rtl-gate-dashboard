module rtl_module_297 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [0:0] in_3,
    output wire [1:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [1:0] sig_11;
    wire [2:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [6:0] sig_16;
    wire [6:0] sig_17;

    // Logic assignments
    assign out_0 = (~(sig_7 | (((~((sig_5 & (sig_1 | sig_1)) & sig_9)) | out_0) & in_2)));
    assign sig_12 = ((~((~(sig_2 & sig_5)) ^ sig_12)) | sig_14);
    assign sig_16 = (sig_14 & (~(sig_8 & (~((~(sig_1 | in_3)) & sig_15)))));
    assign sig_14 = ((sig_17 | (~(in_1 | (sig_13 ^ sig_14)))) ^ sig_10);
    assign sig_10 = (~(sig_0 | (sig_8 & (~(sig_0 & sig_9)))));

endmodule
