module rtl_module_53 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    output wire [3:0] out_0,
    output wire [2:0] out_1,
    output wire [6:0] out_2,
    output wire [5:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [5:0] sig_9;
    wire [2:0] sig_10;
    wire [6:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;
    wire [0:0] sig_14;
    wire [0:0] sig_15;
    wire [3:0] sig_16;
    wire [1:0] sig_17;
    wire [7:0] sig_18;
    wire [3:0] sig_19;
    wire [4:0] sig_20;

    // Logic assignments
    assign out_0 = (~(~(sig_10 & sig_16)));
    assign out_1 = ((sig_15 | sig_0) ^ sig_13);
    assign out_2 = (~((~(sig_6 & (out_2 | (~(sig_3 | sig_3))))) | sig_9));
    assign out_3 = ((~((sig_8 | (sig_11 ^ (~((~((sig_10 | (~sig_2)) | in_0)) | sig_5)))) & sig_17)) | in_0);
    assign out_4 = (sig_18 ^ (~(sig_8 | (~(~(((~((~(~(sig_20 | sig_10))) | in_2)) | in_1) | sig_4))))));
    assign sig_19 = (~(sig_7 | ((((~(sig_1 & (~(sig_9 & (~sig_6))))) ^ sig_14) & sig_2) & sig_13)));
    assign sig_4 = ((~(sig_13 | sig_10)) ^ sig_0);
    assign sig_4 = (sig_10 ^ (~(sig_5 | (out_2 ^ (~(out_4 ^ out_4))))));

endmodule
