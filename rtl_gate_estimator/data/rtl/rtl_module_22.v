module rtl_module_22 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [7:0] in_3,
    input wire [7:0] in_4,
    input wire [4:0] in_5,
    input wire [7:0] in_6,
    input wire [3:0] in_7,
    output wire [5:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [1:0] sig_11;

    // Logic assignments
    assign out_0 = ((~(sig_7 ^ sig_3)) ^ in_1);
    assign out_1 = (in_3 | (((~((~((~(sig_0 | in_6)) & in_0)) & in_7)) ^ sig_6) & in_1));
    assign sig_3 = (~(~(((sig_9 ^ (in_1 | out_0)) ^ sig_0) | sig_1)));
    assign sig_0 = (~(((sig_7 & (sig_10 | (~(in_0 | (~(sig_4 ^ (sig_0 & in_5))))))) | in_4) | in_2));
    assign sig_7 = (~(sig_3 | (~(sig_2 & out_0))));
    assign sig_11 = (sig_0 & (sig_3 | (~(in_0 | (sig_6 ^ (~(sig_3 & out_0)))))));
    assign sig_7 = (~(~((sig_11 ^ (~(sig_0 & (~(sig_2 | (~(in_5 | sig_10))))))) & sig_9)));
    assign sig_8 = (~(out_0 ^ (sig_9 ^ sig_3)));
    assign sig_11 = (sig_9 & (~(in_2 & (sig_11 ^ in_7))));
    assign sig_3 = (~((~(~(((~((sig_5 ^ sig_2) & in_3)) | out_1) & in_4))) | in_1));
    assign sig_7 = ((sig_8 & (~(sig_4 & out_0))) & sig_10);

endmodule
