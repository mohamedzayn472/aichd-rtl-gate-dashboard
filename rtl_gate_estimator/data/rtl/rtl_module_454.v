module rtl_module_454 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3,
    output wire [4:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [1:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;

    // Logic assignments
    assign out_0 = ((~(out_0 | (~(~(in_0 ^ (out_5 ^ (~(in_0 | out_4)))))))) & out_0);
    assign out_1 = (~(sig_10 | (~(~(sig_5 & sig_13)))));
    assign out_2 = (~((~((~((~(sig_11 & (~(sig_1 & in_0)))) | sig_3)) & sig_6)) & sig_1));
    assign out_3 = (sig_12 | (sig_10 ^ (sig_8 | (sig_1 ^ (sig_0 & (sig_12 ^ (sig_6 ^ out_4)))))));
    assign out_4 = (~(out_0 | ((~(sig_8 & ((sig_10 | (~((sig_9 | sig_5) & out_2))) & sig_4))) ^ sig_9)));
    assign out_5 = (~(sig_6 | (~(~((~(sig_12 & sig_3)) | sig_11)))));
    assign sig_5 = (~(sig_0 | (sig_0 & (in_0 & (sig_11 & out_2)))));
    assign sig_7 = (~(sig_3 | ((~(~sig_11)) & sig_0)));

endmodule
