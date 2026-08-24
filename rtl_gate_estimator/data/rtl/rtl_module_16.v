module rtl_module_16 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [4:0] in_3,
    input wire [7:0] in_4,
    input wire [1:0] in_5,
    input wire [0:0] in_6,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [7:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [2:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [3:0] sig_11;
    wire [7:0] sig_12;
    wire [1:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [3:0] sig_16;
    wire [2:0] sig_17;
    wire [1:0] sig_18;
    wire [0:0] sig_19;

    // Logic assignments
    assign out_0 = (~((~(sig_6 | (out_2 | (in_5 ^ (~((~((sig_5 ^ sig_3) | out_2)) & sig_12)))))) & in_3));
    assign out_1 = (~((~((~(sig_9 | (~(in_0 ^ in_6)))) | sig_18)) & sig_18));
    assign out_2 = (sig_16 | (sig_14 ^ (~(((sig_10 & (~out_1)) ^ sig_0) & in_6))));
    assign out_3 = (~(sig_14 & (~((~in_2) & in_2))));
    assign out_4 = (~((~((~(out_4 & (sig_12 | (sig_13 ^ sig_3)))) & sig_12)) | in_1));
    assign out_1 = (~(~(in_1 & sig_12)));
    assign sig_8 = (~((~(((~(((~((~sig_3) & sig_17)) & sig_8) | sig_0)) | out_1) & sig_2)) & sig_6));
    assign out_4 = (~(~(sig_14 | (~(out_2 | (sig_13 & (~(out_3 | (sig_13 | sig_6)))))))));
    assign out_1 = (~((~(sig_15 | (~((~(sig_6 | (sig_12 ^ (~(sig_7 & (~(sig_10 | sig_8))))))) | out_4)))) | sig_10));
    assign sig_18 = (~((~(~(sig_10 ^ ((out_1 ^ (sig_11 & in_5)) | out_3)))) & sig_10));
    assign sig_19 = (~(sig_5 & ((((~(in_6 | (~(sig_14 & (sig_7 | in_3))))) & sig_1) | sig_3) | out_3)));
    assign sig_9 = (in_2 ^ (~(sig_4 | ((in_2 & sig_7) & sig_4))));
    assign sig_12 = (~((~(out_2 | (((sig_1 & (out_4 ^ (~(in_6 & sig_14)))) & out_2) ^ sig_0))) | sig_4));
    assign sig_10 = (sig_12 ^ (~(sig_10 & (~((((~((~((~out_0) | sig_13)) & in_6)) | sig_1) | sig_8) | sig_17)))));
    assign sig_18 = ((~(sig_16 | sig_8)) ^ sig_0);

endmodule
