module rtl_module_179 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [6:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [2:0] sig_16;
    wire [7:0] sig_17;

    // Logic assignments
    assign out_0 = (sig_4 | (~(~(~(sig_1 & ((~((in_0 ^ (~(sig_16 | sig_5))) & sig_0)) | sig_4))))));
    assign out_1 = (~(sig_15 | (in_1 | (~(in_2 & (~in_1))))));
    assign out_2 = (((~((~(in_3 | ((~((~sig_14) & sig_0)) ^ sig_0))) | sig_5)) | sig_17) | in_1);
    assign sig_11 = (~(out_2 | (sig_17 | out_1)));
    assign sig_7 = (~(sig_5 | (~((~(sig_4 & (~(sig_11 & ((sig_0 ^ (sig_13 | sig_10)) ^ sig_3))))) & out_1))));
    assign sig_11 = (~((sig_10 ^ (~(~(sig_17 | (~(sig_5 & ((sig_10 | out_1) & in_3))))))) & sig_12));
    assign sig_4 = (((out_2 | (sig_4 | (~(((~sig_17) | sig_0) & in_3)))) & in_1) ^ sig_8);
    assign sig_11 = (in_2 & (sig_13 | sig_8));

endmodule
