module rtl_module_324 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    input wire [3:0] in_3,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;
    wire [5:0] sig_11;
    wire [1:0] sig_12;
    wire [2:0] sig_13;
    wire [2:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [2:0] sig_17;
    wire [1:0] sig_18;

    // Logic assignments
    assign out_0 = (~((~((~(out_2 & (~(((sig_11 ^ (~(sig_1 & sig_1))) & sig_3) | sig_18)))) | sig_2)) & in_0));
    assign out_1 = (((~((~(sig_13 | (~(sig_14 ^ sig_0)))) & sig_7)) & in_1) ^ sig_14);
    assign out_2 = ((sig_6 & (~(in_0 | (~(sig_8 | (~((~(sig_18 & (sig_4 | (~(out_2 | sig_0))))) | sig_3))))))) & sig_11);
    assign sig_3 = ((~((in_3 & (~(sig_7 ^ in_3))) ^ sig_1)) | in_3);
    assign sig_5 = (~(sig_12 | (~(sig_18 & (sig_16 ^ (sig_2 & (out_1 & ((sig_3 | sig_1) & out_0))))))));
    assign sig_9 = (~((in_1 ^ sig_1) | sig_18));
    assign out_0 = (~(sig_18 & in_1));
    assign out_0 = (~(in_3 & ((sig_16 | (~((sig_17 | ((sig_5 & (sig_11 ^ sig_15)) & out_2)) | out_2))) ^ sig_16)));

endmodule
