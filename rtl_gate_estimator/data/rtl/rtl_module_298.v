module rtl_module_298 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    output wire [0:0] out_0,
    output wire [7:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3,
    output wire [0:0] out_4,
    output wire [0:0] out_5,
    output wire [1:0] out_6,
    output wire [7:0] out_7
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;
    wire [2:0] sig_13;
    wire [3:0] sig_14;
    wire [2:0] sig_15;
    wire [2:0] sig_16;

    // Logic assignments
    assign out_0 = (sig_15 | (sig_3 & (~(sig_4 & in_3))));
    assign out_1 = (~(sig_3 | (~((out_1 & in_4) | in_0))));
    assign out_2 = ((~(sig_14 & ((sig_9 & (((~(out_3 & sig_7)) | sig_6) & out_0)) ^ sig_5))) & sig_8);
    assign out_3 = (out_1 ^ ((~(sig_16 & (~((sig_11 | (~in_4)) | out_3)))) & in_4));
    assign out_4 = (~(sig_2 | ((sig_1 ^ out_0) & sig_7)));
    assign out_5 = (~(((~(sig_13 & (~((~(sig_13 & (in_1 ^ sig_9))) & in_0)))) ^ sig_12) & sig_13));
    assign out_6 = (~(out_6 & (sig_7 & ((sig_8 ^ (~(((~in_3) & sig_16) & sig_16))) ^ sig_14))));
    assign out_7 = ((~(sig_16 & ((sig_14 | (~(out_3 & (sig_15 & in_4)))) & sig_5))) ^ sig_10);
    assign out_6 = (~((~((~(out_2 & ((sig_2 | (~(sig_15 | (out_4 ^ sig_0)))) ^ out_6))) | sig_1)) & sig_11));
    assign sig_0 = (sig_14 & (out_1 ^ (~(out_2 | (sig_15 | sig_0)))));
    assign out_3 = (sig_12 & (out_0 & ((sig_1 | out_4) ^ in_0)));
    assign sig_11 = (~((~((~(sig_4 | (in_2 | (sig_3 | sig_12)))) | out_6)) | out_6));
    assign out_3 = (~(~(sig_0 ^ (~sig_2))));
    assign sig_2 = (~(((((~(sig_1 & (~out_7))) ^ sig_0) & in_4) ^ sig_13) | in_4));
    assign sig_15 = (~((~((~(sig_7 & (~(((sig_15 | sig_5) & out_0) ^ out_2)))) | sig_3)) | sig_9));

endmodule
