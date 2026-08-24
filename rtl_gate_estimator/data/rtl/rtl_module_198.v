module rtl_module_198 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    output wire [6:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign out_0 = (~(in_0 | (sig_9 | (~(out_0 & (~(in_0 ^ (~(sig_4 | sig_5)))))))));
    assign out_1 = (~(sig_8 & (~(~(((sig_10 & (~(sig_1 & (out_0 | sig_10)))) | out_0) | sig_0)))));
    assign out_2 = (((sig_2 & sig_2) | sig_5) ^ in_1);
    assign sig_3 = (~(~(~((out_1 | (~(~(in_0 ^ sig_1)))) & sig_8))));
    assign sig_4 = (~(sig_7 & ((in_0 ^ sig_3) ^ sig_9)));

endmodule
