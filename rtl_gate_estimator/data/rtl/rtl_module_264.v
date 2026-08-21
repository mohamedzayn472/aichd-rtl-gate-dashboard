module rtl_module_264 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    output wire [4:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [2:0] sig_14;
    wire [4:0] sig_15;

    // Logic assignments
    assign out_0 = ((in_0 | sig_6) ^ sig_0);
    assign out_1 = (~(((sig_1 | ((~(sig_11 | ((~(sig_14 & sig_10)) | sig_3))) ^ sig_3)) ^ sig_15) | sig_2));
    assign sig_12 = ((in_0 ^ (sig_12 | (~(in_0 & (out_1 & sig_13))))) & sig_5);
    assign sig_3 = (~(((~(((sig_9 & (~((~(sig_4 | sig_5)) ^ in_1))) & sig_5) & sig_13)) ^ sig_10) | sig_5));
    assign sig_15 = (~((~((sig_4 ^ sig_12) | sig_2)) & sig_1));

endmodule
