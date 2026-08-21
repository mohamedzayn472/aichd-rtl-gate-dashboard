module rtl_module_442 (
input wire [4:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    input wire [1:0] in_5,
    output wire [0:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [6:0] sig_7;
    wire [5:0] sig_8;
    wire [2:0] sig_9;
    wire [4:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [6:0] sig_15;
    wire [4:0] sig_16;

    // Logic assignments
    assign out_0 = (~(~(sig_16 & (~((~(~(sig_12 & in_1))) & out_0)))));
    assign out_1 = (sig_12 & (~((((sig_14 & (in_3 & out_1)) & sig_16) ^ out_2) & sig_5)));
    assign out_2 = ((sig_7 & (~(sig_12 & sig_11))) | sig_12);
    assign out_3 = (sig_7 | (~(~in_5)));
    assign sig_6 = (~((~((out_1 ^ (~sig_16)) & sig_12)) | sig_16));
    assign sig_16 = ((~(sig_0 | (~(in_5 | (sig_10 & sig_8))))) | out_0);
    assign sig_8 = (~(sig_1 & (~(~(sig_6 | (~(out_0 | sig_13)))))));
    assign sig_10 = (~(sig_12 | (~((out_1 ^ (sig_5 ^ (~(in_0 & out_3)))) & sig_10))));
    assign sig_1 = (~(sig_12 & (~((out_1 & ((sig_3 ^ (~(sig_1 | sig_5))) | out_3)) & in_4))));
    assign sig_15 = (~(~(sig_5 | ((~(~(sig_5 & (sig_4 ^ sig_7)))) | out_3))));
    assign sig_16 = ((sig_2 & ((sig_14 ^ sig_1) ^ in_4)) | in_5);
    assign sig_7 = ((~(((sig_3 ^ (out_2 | (~(in_3 | sig_1)))) & out_2) & out_3)) ^ sig_14);
    assign sig_5 = (~(sig_4 | (~(sig_14 & (sig_11 ^ (out_3 ^ sig_11))))));
    assign sig_2 = (~((sig_9 ^ (~(~(out_1 | sig_15)))) & sig_9));
    assign sig_5 = ((sig_8 ^ (sig_11 & (((in_0 ^ (sig_2 | (out_1 | in_1))) & sig_9) & in_3))) ^ sig_3);
    assign sig_11 = (~(in_5 | ((sig_8 ^ (~(~(sig_12 & (~(sig_4 | ((~(out_0 & sig_6)) | sig_9))))))) & sig_4)));
    assign sig_7 = (~((((~(~((sig_9 | (~((~(in_0 | sig_15)) | in_2))) | sig_15))) ^ in_4) | sig_12) & sig_3));

endmodule
