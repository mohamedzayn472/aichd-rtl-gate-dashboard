module rtl_module_35 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [1:0] in_2,
    input wire [4:0] in_3,
    input wire [7:0] in_4,
    input wire [7:0] in_5,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [6:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;
    wire [2:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [3:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [7:0] sig_15;
    wire [0:0] sig_16;
    wire [1:0] sig_17;
    wire [6:0] sig_18;

    // Logic assignments
    assign out_0 = ((sig_8 & (sig_0 ^ (~((~(sig_9 | (~(~(in_3 & sig_16))))) | sig_11)))) & sig_16);
    assign out_1 = (~(((sig_6 ^ sig_9) ^ in_0) & sig_5));
    assign out_2 = ((~(sig_11 & (out_1 ^ (sig_2 & sig_14)))) | sig_1);
    assign sig_12 = (((~(sig_3 | (~(~((~((~(sig_14 & out_2)) | sig_7)) & in_4))))) & sig_4) | in_4);
    assign sig_4 = (~(sig_11 & (~((sig_12 | ((sig_7 ^ (~(sig_10 | sig_16))) | sig_18)) | sig_4))));
    assign sig_3 = ((sig_7 | (~(in_0 | sig_18))) ^ sig_3);
    assign out_1 = (sig_10 ^ (((sig_1 & (sig_1 | (sig_13 | (sig_13 & sig_18)))) | sig_5) | sig_18));
    assign sig_15 = (~((in_0 ^ (sig_7 | (~(~(~(in_5 | sig_0)))))) | sig_7));
    assign out_2 = (sig_8 | ((out_2 | sig_8) & sig_16));
    assign sig_13 = (sig_16 & (~(sig_11 & (~(sig_17 | (~(~(sig_6 | sig_4))))))));
    assign sig_16 = (~(~out_1));

endmodule
