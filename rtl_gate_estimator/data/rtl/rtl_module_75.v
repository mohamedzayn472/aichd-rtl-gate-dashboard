module rtl_module_75 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [3:0] in_3,
    output wire [3:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [2:0] sig_12;
    wire [1:0] sig_13;
    wire [4:0] sig_14;
    wire [3:0] sig_15;
    wire [3:0] sig_16;
    wire [5:0] sig_17;
    wire [2:0] sig_18;

    // Logic assignments
    assign out_0 = ((~(~(~(sig_4 | sig_14)))) | sig_6);
    assign out_1 = (sig_13 & (sig_10 ^ (sig_4 & (~(~((~in_0) & in_2))))));
    assign out_2 = (~((~(sig_16 & (~(in_1 | sig_4)))) & sig_15));
    assign out_3 = (~(sig_13 ^ (((sig_7 | in_3) | in_1) & in_2)));
    assign out_4 = ((~(sig_17 | (~(sig_9 | sig_2)))) & in_0);
    assign out_0 = (out_2 ^ ((~(sig_13 | (((~(sig_14 & sig_15)) | sig_13) | sig_3))) ^ out_1));
    assign sig_12 = (~(sig_4 & (~(sig_15 & (in_2 & sig_1)))));
    assign sig_3 = ((~sig_3) | sig_3);
    assign sig_5 = (sig_15 | (sig_9 ^ (sig_3 & in_0)));
    assign sig_14 = (sig_8 | (sig_0 & (sig_9 & sig_18)));
    assign sig_12 = (~(out_2 & (sig_2 ^ sig_17)));
    assign sig_10 = ((~(~((~(sig_8 & out_3)) & sig_2))) & sig_18);
    assign out_3 = (~(sig_17 | (~(sig_11 | (sig_8 | (sig_5 ^ (sig_8 ^ sig_4)))))));
    assign sig_7 = (~(((~(~(sig_10 | ((~(~(sig_7 & sig_7))) & sig_11)))) & in_2) | sig_7));
    assign sig_11 = (~(sig_2 | (sig_15 | (sig_14 | out_4))));
    assign sig_12 = ((in_2 | ((~(in_2 | sig_1)) & sig_13)) & sig_4);

endmodule
