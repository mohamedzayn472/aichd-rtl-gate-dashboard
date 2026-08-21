module rtl_module_253 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    output wire [7:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [2:0] out_5,
    output wire [0:0] out_6,
    output wire [6:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [6:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [4:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [2:0] sig_13;
    wire [7:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [3:0] sig_17;
    wire [0:0] sig_18;
    wire [0:0] sig_19;
    wire [4:0] sig_20;

    // Logic assignments
    assign out_0 = (~((~(out_6 & sig_10)) | out_4));
    assign out_1 = (~((~((~(out_6 & (~(sig_17 | ((~(sig_17 | out_4)) | sig_18))))) & in_1)) | sig_20));
    assign out_2 = ((~(sig_12 & (((sig_14 ^ sig_18) ^ out_0) ^ sig_11))) ^ sig_1);
    assign out_3 = (~((~(sig_2 & (sig_12 ^ (sig_14 | (sig_18 ^ (out_0 | (~sig_14))))))) | out_1));
    assign out_4 = (~(~(out_1 ^ (sig_13 ^ (~(sig_15 | sig_18))))));
    assign out_5 = (out_7 ^ (~(~(out_1 | (((~(sig_2 | (in_0 ^ (~(sig_4 | in_1))))) ^ out_4) ^ sig_10)))));
    assign out_6 = ((~(sig_8 & (~(sig_7 & (sig_2 | sig_4))))) | sig_4);
    assign out_7 = (~((sig_7 | (sig_13 | (~((~(out_0 & out_7)) & out_3)))) & sig_18));
    assign sig_0 = ((~((~(sig_1 & (~(sig_13 & (sig_9 & (((out_2 | sig_18) | sig_10) & sig_17)))))) | out_5)) | out_6);
    assign out_2 = (~((sig_16 & (~((~(out_5 | (sig_9 | ((sig_5 ^ sig_17) & sig_15)))) | sig_10))) & sig_10));

endmodule
