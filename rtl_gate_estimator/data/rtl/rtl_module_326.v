module rtl_module_326 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [7:0] in_3,
    output wire [4:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;

    // Logic assignments
    assign out_0 = ((~(sig_1 | (sig_2 ^ (in_2 & (~(sig_8 & (out_1 ^ sig_10))))))) ^ in_2);
    assign out_1 = ((~((~((sig_3 | ((out_0 & (in_3 | in_3)) ^ sig_5)) & in_2)) | sig_8)) ^ sig_7);
    assign sig_10 = (sig_7 | ((sig_8 & (~((sig_2 ^ sig_2) | in_1))) & in_0));
    assign out_0 = (~(sig_6 | (~(~(sig_10 & (sig_4 ^ in_2))))));
    assign sig_2 = (~(sig_8 & ((~(sig_9 | (~((~(sig_4 & (~(sig_11 | sig_7)))) | sig_8)))) | sig_7)));
    assign sig_7 = (sig_9 ^ ((~((sig_8 | sig_7) | sig_8)) & in_3));
    assign sig_6 = (~((~(~((sig_9 | (~(sig_4 & sig_1))) & sig_3))) & sig_2));

endmodule
