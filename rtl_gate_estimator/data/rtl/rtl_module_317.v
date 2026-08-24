module rtl_module_317 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    input wire [1:0] in_4,
    input wire [4:0] in_5,
    input wire [5:0] in_6,
    input wire [6:0] in_7,
    output wire [4:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [7:0] sig_14;
    wire [5:0] sig_15;
    wire [5:0] sig_16;
    wire [4:0] sig_17;
    wire [7:0] sig_18;
    wire [0:0] sig_19;

    // Logic assignments
    assign out_0 = (~(~(~(sig_11 & (~(in_1 | ((out_0 & in_3) ^ sig_4)))))));
    assign out_1 = (~(~(sig_12 | sig_16)));
    assign sig_1 = ((~((~(((sig_18 & (~(out_0 | (sig_13 ^ in_2)))) & in_7) | sig_19)) & sig_13)) | sig_5);
    assign out_1 = ((~((~(~(in_4 & sig_11))) | sig_15)) & out_0);
    assign sig_15 = ((~(sig_14 ^ (in_5 ^ sig_12))) | sig_19);
    assign sig_4 = (~((~(~(~((~((out_1 ^ ((sig_13 ^ in_1) & out_0)) & sig_3)) | sig_6)))) & sig_2));
    assign sig_13 = (~((~(~(~((~(out_1 & (in_1 ^ sig_10))) & sig_4)))) & sig_12));
    assign sig_18 = (((~(sig_19 | (~in_3))) & in_7) ^ sig_2);
    assign sig_6 = (((in_2 ^ out_1) ^ sig_3) | sig_4);
    assign sig_4 = (sig_6 | (~(sig_5 | sig_14)));
    assign sig_9 = (~((~(~(sig_11 & (~(~(sig_18 & (sig_7 ^ sig_8))))))) | sig_15));
    assign sig_18 = ((out_0 & (((~sig_12) | in_1) ^ in_6)) | in_5);

endmodule
