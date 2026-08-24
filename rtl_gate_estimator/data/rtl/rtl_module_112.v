module rtl_module_112 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4,
    output wire [6:0] out_5,
    output wire [0:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;
    wire [0:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [0:0] sig_11;
    wire [6:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;
    wire [3:0] sig_15;

    // Logic assignments
    assign out_0 = (sig_12 ^ (((~((~(sig_9 | (~sig_6))) & sig_9)) ^ sig_5) & out_7));
    assign out_1 = (((sig_15 | (~((~(sig_13 & (~(out_6 | (sig_10 ^ out_5))))) & sig_8))) | sig_5) ^ sig_7);
    assign out_2 = (sig_9 & (~((~((~(sig_6 & (~(~(sig_3 | out_6))))) ^ sig_13)) | out_7)));
    assign out_3 = ((sig_14 & (sig_4 & out_0)) ^ sig_15);
    assign out_4 = (~(sig_8 & ((~(~((~(out_1 | (sig_4 & sig_0))) & out_3))) | sig_6)));
    assign out_5 = (sig_5 | (~(sig_12 & (~(sig_8 | (out_0 ^ out_1))))));
    assign out_6 = (sig_11 ^ (sig_13 & (~(in_0 | (~(((sig_12 | sig_5) | sig_4) | sig_7))))));
    assign out_7 = (sig_9 | (~(out_4 | (~(sig_10 & (~(out_0 & (~out_2))))))));
    assign sig_8 = (sig_1 ^ (sig_15 ^ (((~(sig_0 & sig_9)) ^ sig_2) | out_4)));
    assign out_0 = (~(~(sig_13 & (sig_12 ^ (out_0 & (~((sig_15 | (~(out_4 | sig_9))) & sig_5)))))));

endmodule
