module rtl_module_138 (
input wire [7:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    output wire [1:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [6:0] sig_10;
    wire [5:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [2:0] sig_14;
    wire [3:0] sig_15;
    wire [4:0] sig_16;
    wire [4:0] sig_17;
    wire [5:0] sig_18;
    wire [3:0] sig_19;

    // Logic assignments
    assign out_0 = (~(in_0 | (~((sig_17 | (sig_16 ^ (sig_9 | (sig_0 | sig_17)))) ^ in_1))));
    assign out_1 = (~(sig_14 | (sig_15 & (sig_15 & ((~((sig_14 | sig_5) | sig_17)) & sig_9)))));
    assign sig_10 = ((~(sig_17 & in_3)) & sig_12);
    assign sig_14 = (sig_4 ^ (~(~(sig_11 & ((~(sig_12 | (sig_9 ^ (~sig_10)))) ^ sig_16)))));
    assign sig_18 = (~(~((~((~(~(sig_18 & sig_0))) | sig_19)) | sig_0)));
    assign sig_10 = (~(sig_5 & ((sig_1 & (~((~((~(sig_4 & in_2)) | sig_18)) & sig_3))) ^ sig_1)));
    assign sig_10 = (~(~(((~(sig_13 & sig_9)) | sig_0) | in_1)));

endmodule
