module rtl_module_147 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    output wire [2:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [2:0] sig_9;
    wire [0:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;
    wire [3:0] sig_13;
    wire [6:0] sig_14;
    wire [4:0] sig_15;
    wire [4:0] sig_16;

    // Logic assignments
    assign out_0 = ((~((~(in_1 & (~(sig_12 & (~((~(in_2 | sig_15)) & sig_6)))))) | sig_9)) ^ sig_0);
    assign out_1 = (~(~(~(~((~(sig_16 & sig_0)) | sig_14)))));
    assign sig_12 = ((~(out_0 & (sig_8 & (~(sig_14 | (~((~((~(~sig_14)) | sig_12)) | sig_12))))))) & in_4);
    assign out_1 = (~(~((sig_15 & sig_12) | sig_11)));
    assign sig_5 = (~(((in_0 ^ (sig_9 & (~(((sig_6 & sig_16) ^ sig_7) | sig_14)))) | sig_0) | sig_12));
    assign sig_10 = (sig_3 ^ (out_1 ^ (in_4 ^ ((~((~(~(~(sig_7 & sig_1)))) & sig_14)) | sig_15))));
    assign sig_7 = ((~((~(((sig_5 ^ (~((sig_16 ^ in_2) | sig_5))) & sig_10) & sig_5)) & sig_13)) | sig_13);
    assign sig_7 = (~((~((~((sig_2 ^ in_3) | sig_11)) & out_0)) & sig_6));

endmodule
