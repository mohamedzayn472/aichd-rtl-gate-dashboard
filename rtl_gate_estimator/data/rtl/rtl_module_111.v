module rtl_module_111 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;

    // Logic assignments
    assign out_0 = ((~(sig_10 | sig_5)) | sig_11);
    assign out_1 = (out_1 | ((sig_5 & sig_6) ^ sig_10));
    assign out_2 = (sig_1 | (~(sig_6 | sig_8)));
    assign out_1 = (~(sig_7 | (~(sig_5 & sig_13))));
    assign out_2 = (~(sig_5 & (~(sig_13 | (sig_3 & (~(((sig_10 ^ in_1) ^ sig_6) | sig_12)))))));
    assign sig_2 = (~(sig_6 & (~((sig_6 ^ (sig_6 | (~(sig_1 | (~(~(sig_11 | sig_11))))))) & sig_14))));

endmodule
