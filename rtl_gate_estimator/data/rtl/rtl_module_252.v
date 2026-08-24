module rtl_module_252 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    output wire [3:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;
    wire [4:0] sig_13;
    wire [2:0] sig_14;
    wire [2:0] sig_15;
    wire [4:0] sig_16;
    wire [5:0] sig_17;
    wire [6:0] sig_18;
    wire [4:0] sig_19;
    wire [1:0] sig_20;

    // Logic assignments
    assign out_0 = ((sig_20 & (in_1 | (sig_12 ^ sig_3))) ^ sig_14);
    assign sig_7 = (~((sig_11 ^ (((~((~(in_2 | (sig_4 | (~(sig_5 | sig_18))))) | sig_11)) ^ sig_18) & sig_20)) | sig_8));
    assign sig_7 = (~((~(in_0 | (~(sig_0 | sig_4)))) & sig_9));
    assign sig_13 = ((~((~(sig_13 | sig_17)) | sig_18)) & sig_6);
    assign sig_0 = (~(sig_17 & (sig_12 ^ (sig_13 & (sig_0 ^ in_1)))));

endmodule
