module rtl_module_145 (
input wire [6:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    output wire [1:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [6:0] sig_12;
    wire [4:0] sig_13;
    wire [1:0] sig_14;

    // Logic assignments
    assign out_0 = (~(((sig_7 & (~((sig_13 & sig_5) | sig_4))) & sig_5) & sig_6));
    assign sig_7 = (~(sig_2 | ((~(in_0 & (~(~(sig_4 | (~(~(in_2 | (~sig_12))))))))) ^ sig_2)));
    assign sig_14 = (sig_11 | (~((((~(in_1 | (sig_1 | out_0))) & in_1) & sig_11) ^ sig_6)));
    assign sig_7 = (~(sig_6 | (~(sig_4 | (sig_5 ^ (sig_11 ^ (in_1 ^ (~(sig_12 | ((~(sig_2 | sig_6)) & sig_0))))))))));
    assign sig_12 = ((((sig_12 | (~((~(sig_2 | out_0)) | sig_8))) ^ sig_4) ^ sig_3) & sig_13);

endmodule
