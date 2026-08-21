module rtl_module_131 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    input wire [5:0] in_4,
    input wire [2:0] in_5,
    output wire [2:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [7:0] sig_11;
    wire [2:0] sig_12;

    // Logic assignments
    assign out_0 = (((~((in_0 | (~(sig_5 & sig_11))) & sig_3)) & sig_8) ^ sig_6);
    assign sig_8 = (sig_5 | (~((sig_3 & (in_2 | (~(sig_11 & (sig_5 ^ sig_6))))) & in_1)));
    assign sig_0 = (~((in_4 | (sig_1 ^ (sig_8 ^ (~((~(sig_11 | (~(sig_10 | in_5)))) & sig_9))))) & in_0));
    assign sig_11 = (in_5 ^ (~((in_2 & sig_10) | in_1)));
    assign sig_0 = (~(in_5 | (~((~(sig_0 & ((in_5 | in_5) ^ sig_0))) | sig_11))));
    assign sig_0 = (~(~(in_2 | ((sig_3 & ((((~sig_7) | in_4) ^ sig_12) | sig_1)) | sig_4))));
    assign sig_12 = (sig_6 ^ (~(~((~(sig_7 & sig_5)) | sig_9))));
    assign sig_7 = (sig_1 | (sig_3 ^ (~(sig_2 | (((sig_11 ^ (sig_7 | (sig_4 ^ in_2))) ^ sig_7) ^ sig_10)))));

endmodule
