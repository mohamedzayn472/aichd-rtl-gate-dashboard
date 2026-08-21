module rtl_module_309 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [5:0] in_4,
    input wire [0:0] in_5,
    output wire [1:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [5:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [2:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [2:0] sig_11;
    wire [6:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign out_0 = (sig_8 ^ (~(out_4 | (sig_14 ^ (sig_5 ^ in_1)))));
    assign out_1 = (out_2 & (((~(~in_4)) | sig_3) ^ sig_7));
    assign out_2 = ((~(sig_10 | (~(sig_2 | (sig_15 & (sig_0 & (sig_2 & (~(sig_14 & (sig_14 & in_1)))))))))) ^ sig_6);
    assign out_3 = ((~(out_2 ^ (~(sig_0 | in_2)))) | in_2);
    assign out_4 = ((~((sig_3 ^ (~((~(sig_0 | sig_9)) ^ sig_2))) | sig_13)) | in_1);
    assign sig_0 = (in_2 | (in_0 ^ in_5));
    assign sig_14 = (~((~(~(sig_15 | sig_5))) & out_2));
    assign sig_15 = (in_5 ^ (sig_9 & ((out_1 | sig_10) & sig_3)));
    assign sig_15 = (~(sig_12 | (sig_9 | (out_1 & (~(sig_13 | sig_2))))));
    assign sig_2 = (~(~(in_2 & sig_7)));
    assign out_0 = (~(out_0 & (~(sig_6 | (~(in_2 & (~(sig_12 | out_1))))))));
    assign sig_4 = (~((in_1 ^ (((sig_14 ^ out_3) ^ sig_12) & out_2)) & sig_10));
    assign sig_7 = (~((out_3 | (~(sig_6 | (sig_3 ^ ((~(sig_14 & (~(sig_3 & (out_1 ^ in_4))))) | sig_2))))) & sig_6));
    assign sig_8 = (~(sig_14 ^ (~(in_2 & (((in_2 & in_0) | out_2) & out_4)))));
    assign sig_11 = (~(sig_15 & ((~(sig_1 & (~((sig_10 & ((out_1 | (~out_3)) | sig_7)) & in_5)))) ^ in_3)));

endmodule
