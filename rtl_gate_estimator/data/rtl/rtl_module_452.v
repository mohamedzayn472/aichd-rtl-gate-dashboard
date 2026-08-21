module rtl_module_452 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    input wire [5:0] in_4,
    input wire [2:0] in_5,
    input wire [5:0] in_6,
    output wire [3:0] out_0,
    output wire [2:0] out_1,
    output wire [2:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [2:0] sig_15;

    // Logic assignments
    assign out_0 = (out_1 ^ (~(~(sig_5 | (~(~(~((~(out_1 | sig_13)) | sig_4))))))));
    assign out_1 = (sig_12 & (~(sig_15 & ((~(~(sig_9 & (sig_6 & ((sig_0 ^ in_4) ^ sig_11))))) | sig_15))));
    assign out_2 = (~(sig_13 & in_0));
    assign out_3 = (~(sig_13 & ((~((~(sig_7 | sig_7)) & sig_7)) & sig_1)));
    assign sig_8 = (~((~((~((in_6 | (sig_7 & out_3)) & sig_11)) | sig_4)) | sig_4));
    assign sig_9 = (~(sig_14 | (~(in_5 | (~(in_4 | (sig_11 | (out_0 & ((sig_1 ^ sig_6) | out_1)))))))));
    assign sig_9 = (~(sig_10 | (sig_14 & (~(sig_11 | in_0)))));
    assign sig_9 = ((~(sig_8 | (~(sig_11 & in_2)))) | in_1);
    assign sig_4 = (sig_7 ^ ((sig_1 & out_1) ^ sig_0));
    assign sig_9 = (~((sig_4 | (sig_11 & (sig_6 ^ in_0))) & sig_3));
    assign sig_11 = ((out_1 ^ (~(out_1 & (sig_1 | (sig_11 ^ sig_9))))) | sig_11);
    assign sig_13 = (sig_3 & ((~(in_2 ^ ((~(in_4 | out_0)) ^ out_0))) & sig_13));
    assign sig_11 = (~(in_3 | (sig_4 & out_1)));
    assign sig_15 = (~(~(sig_4 & (~(sig_13 & in_4)))));
    assign out_0 = (~(~(~(out_1 | (~(~(((~(in_2 & in_2)) & sig_6) & in_5)))))));

endmodule
