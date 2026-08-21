module rtl_module_295 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    input wire [1:0] in_4,
    input wire [6:0] in_5,
    output wire [0:0] out_0,
    output wire [1:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [3:0] sig_11;
    wire [7:0] sig_12;
    wire [5:0] sig_13;
    wire [3:0] sig_14;
    wire [1:0] sig_15;
    wire [7:0] sig_16;
    wire [5:0] sig_17;

    // Logic assignments
    assign out_0 = (sig_14 | (~(sig_2 | in_5)));
    assign out_1 = ((sig_12 ^ sig_0) | sig_16);
    assign out_2 = ((~((sig_15 | ((sig_9 & (~(in_1 | in_5))) ^ sig_2)) & sig_9)) & sig_14);
    assign out_3 = (~(sig_16 & (~(in_4 | (((in_5 | (in_1 ^ (sig_11 & sig_14))) | sig_3) ^ sig_14)))));
    assign sig_2 = (~(sig_17 | (out_1 | (~(((sig_8 ^ sig_9) ^ in_5) | sig_13)))));
    assign out_1 = ((sig_2 & ((sig_17 ^ (out_3 & (sig_2 ^ (~(sig_14 | sig_8))))) ^ in_0)) | sig_11);
    assign out_0 = (~(sig_2 & ((~((~(~((~sig_3) & sig_3))) | sig_15)) | sig_0)));
    assign sig_0 = (~((out_1 & (in_1 | in_0)) & in_0));
    assign sig_2 = (sig_5 & (~(sig_3 | in_0)));
    assign sig_14 = (~(sig_3 | ((~((sig_3 ^ sig_10) | sig_3)) & in_1)));
    assign out_2 = (sig_8 ^ ((in_3 & (~(sig_14 & (sig_1 | sig_11)))) ^ in_2));

endmodule
