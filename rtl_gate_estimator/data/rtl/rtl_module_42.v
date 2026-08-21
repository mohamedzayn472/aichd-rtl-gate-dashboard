module rtl_module_42 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] in_2,
    input wire [0:0] in_3,
    output wire [0:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [5:0] sig_12;
    wire [5:0] sig_13;
    wire [5:0] sig_14;
    wire [5:0] sig_15;

    // Logic assignments
    assign out_0 = (~(~(~(sig_4 & (in_3 & ((sig_8 ^ (sig_10 & in_0)) ^ sig_0))))));
    assign sig_7 = (~(~(out_0 & (~((~(sig_11 | sig_12)) | sig_2)))));
    assign sig_10 = (~(sig_3 | (sig_6 ^ in_1)));
    assign sig_12 = (~(sig_11 & ((sig_12 ^ (~(~(~(sig_2 | (~(in_3 | sig_8))))))) & sig_12)));
    assign sig_9 = (~(sig_6 | (~((~((~(sig_1 & (~(~(sig_13 | sig_3))))) | in_2)) & in_0))));
    assign sig_8 = (~((sig_13 ^ (~(in_3 | sig_11))) | sig_11));

endmodule
