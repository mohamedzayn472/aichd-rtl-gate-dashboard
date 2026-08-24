module rtl_module_322 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    input wire [6:0] in_4,
    input wire [7:0] in_5,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;
    wire [6:0] sig_12;
    wire [7:0] sig_13;
    wire [4:0] sig_14;
    wire [5:0] sig_15;

    // Logic assignments
    assign out_0 = (sig_10 | (~(sig_3 ^ (sig_8 | sig_5))));
    assign out_1 = (sig_11 ^ (sig_1 | (~((~(~((~(out_2 & (~(sig_5 & (in_3 & out_0))))) | in_3))) | sig_7))));
    assign out_2 = (sig_3 ^ (~sig_7));
    assign sig_15 = (~((in_1 ^ sig_15) | sig_11));
    assign out_1 = (~((~((in_2 | sig_12) | sig_7)) & in_1));
    assign sig_15 = (~((~((sig_3 | sig_14) & sig_5)) & out_0));
    assign sig_6 = (~(in_0 & (~(sig_0 & ((sig_10 | (sig_4 ^ (~(sig_4 & ((sig_2 | out_2) ^ in_1))))) | sig_14)))));
    assign sig_6 = (sig_8 | ((~(out_0 | (~(in_5 | ((~(sig_15 & (~in_3))) | sig_15))))) ^ sig_14));
    assign sig_8 = (~(~((((~(sig_9 | in_0)) | sig_11) | sig_2) | out_2)));
    assign sig_5 = (~((out_0 & (~(in_2 & (sig_12 | (sig_13 & in_4))))) & out_0));

endmodule
