module rtl_module_88 (
input wire [0:0] in_0,
    input wire [6:0] in_1,
    input wire [7:0] in_2,
    input wire [5:0] in_3,
    input wire [7:0] in_4,
    input wire [1:0] in_5,
    input wire [2:0] in_6,
    input wire [3:0] in_7,
    output wire [6:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [7:0] sig_13;
    wire [0:0] sig_14;
    wire [4:0] sig_15;
    wire [0:0] sig_16;

    // Logic assignments
    assign out_0 = ((sig_14 ^ (sig_13 & (~((~(sig_9 & (sig_5 ^ in_1))) & in_5)))) & in_7);
    assign sig_12 = (sig_11 & (~(~(sig_1 & (~(sig_13 | sig_12))))));
    assign sig_9 = (~(in_5 & (~(~(~((in_4 | (~(((~(sig_5 & in_0)) ^ sig_8) | in_2))) & in_3))))));
    assign sig_11 = (sig_14 | (~((~((~(sig_10 & (~(in_0 & in_4)))) ^ sig_16)) | sig_9)));
    assign sig_1 = (in_0 | ((~(~(sig_16 | sig_8))) ^ sig_10));
    assign sig_2 = (sig_16 ^ (in_3 & in_6));
    assign sig_7 = (~((~((~((in_6 | sig_14) | in_7)) & sig_15)) | in_0));
    assign sig_7 = (sig_2 ^ (sig_9 ^ sig_8));
    assign sig_0 = (sig_2 ^ ((sig_7 ^ in_4) ^ sig_11));

endmodule
