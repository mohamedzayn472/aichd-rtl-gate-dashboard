module rtl_module_87 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [6:0] in_2,
    output wire [2:0] out_0,
    output wire [1:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3,
    output wire [3:0] out_4,
    output wire [2:0] out_5,
    output wire [7:0] out_6,
    output wire [0:0] out_7
);

    // Internal signals
    wire [0:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [7:0] sig_13;
    wire [7:0] sig_14;
    wire [7:0] sig_15;
    wire [1:0] sig_16;

    // Logic assignments
    assign out_0 = (~(out_4 | (~(sig_5 | sig_15))));
    assign out_1 = (~(out_0 | (~(out_2 & out_4))));
    assign out_2 = (sig_12 & (out_6 ^ ((~((~(sig_5 | (sig_7 & out_5))) | sig_13)) | sig_15)));
    assign out_3 = (~(sig_9 & (~(sig_0 & (~(~((out_0 | in_2) | sig_15)))))));
    assign out_4 = (((~(~(((sig_6 | sig_12) | sig_12) & sig_5))) & out_6) ^ sig_7);
    assign out_5 = (~(sig_0 | (~(sig_15 | (~(sig_15 & out_1))))));
    assign out_6 = (sig_14 & ((~(((out_7 | sig_10) ^ out_1) | sig_3)) & sig_13));
    assign out_7 = ((~in_1) & out_6);
    assign out_4 = (in_2 & (~(sig_1 | (~(out_4 | (~(sig_16 | (sig_16 ^ (out_1 & (~(out_5 & in_2)))))))))));
    assign sig_0 = (~(sig_8 & (~(sig_11 & (~(sig_2 | (~(sig_6 & (sig_9 ^ (~(in_2 | (~(out_6 & in_0)))))))))))));
    assign out_6 = (~((~(~(sig_11 & sig_8))) & sig_14));

endmodule
