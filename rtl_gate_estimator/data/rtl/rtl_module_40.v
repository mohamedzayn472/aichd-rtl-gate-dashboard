module rtl_module_40 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    output wire [3:0] out_0,
    output wire [6:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [1:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [5:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [7:0] sig_12;
    wire [1:0] sig_13;
    wire [5:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [6:0] sig_17;

    // Logic assignments
    assign out_0 = (~((~((((sig_10 & (~(sig_0 & sig_6))) | sig_16) & sig_1) | sig_6)) & sig_9));
    assign out_1 = ((~(sig_11 | sig_16)) | sig_7);
    assign sig_10 = (sig_9 & (~(sig_4 & (~(~(out_0 | (out_0 ^ ((sig_7 | sig_7) & sig_14))))))));
    assign sig_5 = (~(sig_15 | ((sig_1 & (~(in_1 & sig_3))) & sig_1)));
    assign sig_6 = (~(((~sig_11) & sig_6) & sig_3));

endmodule
