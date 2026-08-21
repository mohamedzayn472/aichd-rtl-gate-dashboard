module rtl_module_340 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [6:0] in_2,
    input wire [4:0] in_3,
    input wire [6:0] in_4,
    input wire [6:0] in_5,
    output wire [0:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [6:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [6:0] sig_9;
    wire [1:0] sig_10;
    wire [2:0] sig_11;
    wire [4:0] sig_12;
    wire [7:0] sig_13;
    wire [6:0] sig_14;
    wire [5:0] sig_15;

    // Logic assignments
    assign out_0 = (~(in_5 ^ (~(~(sig_14 & (sig_5 | sig_7))))));
    assign sig_5 = (~(~((sig_4 ^ (~(~(out_0 & sig_2)))) | sig_4)));
    assign sig_7 = (sig_6 ^ (~(~((~(in_5 & in_1)) | sig_0))));
    assign sig_11 = (in_1 | (~((~((~(sig_1 | (~(sig_7 & (in_1 & ((~in_4) | sig_15)))))) | sig_4)) | sig_14)));
    assign sig_15 = (~(~(~sig_12)));
    assign sig_6 = ((in_1 | sig_0) & sig_0);
    assign sig_15 = (~(sig_12 & ((~((sig_5 & (~(in_4 | in_2))) | in_5)) & sig_11)));
    assign sig_11 = ((~((~in_3) | sig_11)) & sig_6);

endmodule
