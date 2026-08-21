module rtl_module_93 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [6:0] in_2,
    output wire [2:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [5:0] out_3,
    output wire [0:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;
    wire [2:0] sig_13;
    wire [0:0] sig_14;

    // Logic assignments
    assign out_0 = ((in_0 & ((~out_2) & out_4)) ^ out_1);
    assign out_1 = ((sig_0 & (sig_13 & sig_11)) & out_3);
    assign out_2 = ((~((~(~(in_1 | sig_9))) | sig_2)) ^ in_0);
    assign out_3 = (((sig_7 ^ ((~(in_2 | (sig_2 & out_3))) ^ sig_2)) | out_0) ^ in_1);
    assign out_4 = (~(~(((out_2 & ((out_2 & (sig_8 ^ (sig_2 | out_5))) ^ out_0)) & sig_7) | sig_6)));
    assign out_5 = (~(out_3 & (~(~(in_0 | ((out_4 | (~(~(in_1 & sig_14)))) | out_3))))));
    assign sig_2 = (out_3 & (~sig_6));
    assign sig_9 = (~(sig_7 | (sig_4 & (out_1 | (~((~((sig_13 & ((sig_1 ^ sig_8) & sig_3)) & sig_6)) | sig_14))))));
    assign out_4 = (~(((sig_8 ^ sig_4) ^ sig_7) & sig_8));
    assign sig_1 = (~(~out_0));
    assign out_3 = (~((sig_9 & out_0) | sig_14));

endmodule
