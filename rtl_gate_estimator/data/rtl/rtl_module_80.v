module rtl_module_80 (
input wire [4:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    input wire [4:0] in_5,
    output wire [7:0] out_0,
    output wire [1:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [0:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [3:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [5:0] sig_15;
    wire [1:0] sig_16;
    wire [5:0] sig_17;
    wire [4:0] sig_18;

    // Logic assignments
    assign out_0 = (~((((~(sig_2 | out_0)) | sig_4) & in_1) & out_1));
    assign out_1 = (~(~(sig_5 | ((~(sig_13 & (~((sig_14 & sig_9) | sig_0)))) & sig_11))));
    assign out_2 = (~((~(out_4 | out_2)) & in_4));
    assign out_3 = ((sig_11 & (~(out_1 ^ sig_10))) & sig_17);
    assign out_4 = (~(((~(((~((~(~out_3)) & out_4)) | sig_0) | sig_18)) ^ sig_14) | sig_2));
    assign out_2 = ((~(sig_13 | sig_6)) | sig_17);
    assign sig_18 = (~((~((~(out_2 | (sig_5 ^ (~(sig_18 ^ (sig_1 | in_0)))))) | sig_0)) | sig_18));
    assign sig_14 = ((~(sig_11 ^ (~((~(((sig_3 ^ sig_18) ^ in_1) | out_0)) | sig_15)))) & sig_3);
    assign out_4 = (~((sig_9 & sig_6) | out_0));
    assign sig_9 = (~(out_1 & (~((~((in_5 & (sig_16 | (~(in_3 | sig_5)))) & sig_2)) & in_4))));
    assign out_2 = ((((~(out_1 | (~((sig_0 & (sig_0 ^ sig_1)) | out_1)))) ^ sig_12) & sig_16) ^ sig_17);
    assign sig_4 = (((in_2 & (~((~((~(~(out_3 & (~sig_17)))) & sig_11)) | sig_0))) & sig_0) & in_4);
    assign sig_10 = (out_4 & (~(in_2 & sig_17)));
    assign sig_16 = ((~(sig_17 & (~(~(sig_7 & out_2))))) ^ out_3);
    assign sig_5 = (out_1 & (in_3 & (~(sig_4 & in_3))));
    assign sig_0 = (~(sig_2 | (~(sig_14 ^ sig_9))));
    assign out_0 = (~(in_0 | (~out_4)));

endmodule
