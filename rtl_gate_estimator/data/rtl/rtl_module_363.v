module rtl_module_363 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [4:0] in_3,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [2:0] out_2,
    output wire [4:0] out_3,
    output wire [4:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [2:0] sig_3;
    wire [0:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;
    wire [2:0] sig_11;
    wire [5:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [5:0] sig_15;

    // Logic assignments
    assign out_0 = ((sig_8 & sig_7) & sig_8);
    assign out_1 = ((sig_3 & sig_6) ^ sig_13);
    assign out_2 = (~(sig_13 & (~(((~(out_1 | (~((~(sig_9 | ((~sig_8) & out_0))) | out_4)))) & out_0) | sig_9))));
    assign out_3 = (~(in_0 | (out_2 | (~((sig_0 & ((~(out_3 | (~sig_3))) & sig_3)) & sig_3)))));
    assign out_4 = (~(out_4 | (~(~(in_0 | (~((~(in_2 | sig_14)) & sig_8)))))));
    assign out_5 = (~(sig_9 ^ in_2));
    assign sig_0 = (~(((sig_2 ^ sig_6) & out_1) | sig_15));
    assign out_0 = (in_3 & (~((sig_6 | (out_1 & in_1)) & sig_7)));
    assign sig_14 = (~(sig_4 & (sig_2 & (sig_4 & (~(((sig_15 | sig_14) ^ sig_0) | sig_7))))));
    assign out_5 = (out_3 | (sig_11 | (~((((~((sig_12 ^ (out_5 | in_0)) | sig_2)) | in_0) & out_0) | sig_0))));
    assign sig_8 = (~(out_3 | (~(sig_10 | (~(in_0 | (~(~((out_0 ^ ((~out_0) ^ sig_3)) | in_3)))))))));

endmodule
