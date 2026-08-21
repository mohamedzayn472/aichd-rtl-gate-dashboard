module rtl_module_137 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    input wire [5:0] in_5,
    input wire [6:0] in_6,
    input wire [6:0] in_7,
    output wire [5:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [3:0] sig_8;
    wire [4:0] sig_9;
    wire [3:0] sig_10;
    wire [5:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [0:0] sig_14;
    wire [4:0] sig_15;
    wire [5:0] sig_16;

    // Logic assignments
    assign out_0 = (in_5 ^ (~(~(~((~(out_1 & ((~sig_2) | sig_1))) | out_3)))));
    assign out_1 = ((~(~(in_1 | (~((~(in_5 & out_3)) & sig_6))))) & sig_2);
    assign out_2 = (~(sig_1 | (in_7 | (~(sig_5 & ((~((~(~(~(in_5 | sig_16)))) | out_1)) ^ out_0))))));
    assign out_3 = (~(sig_4 | (~(~(sig_6 & (out_2 & (~(in_0 | (~(sig_15 | (sig_8 ^ sig_3)))))))))));
    assign sig_2 = (~((~(in_6 | ((((~((~((out_2 ^ in_4) & sig_7)) | sig_8)) ^ sig_7) & in_6) | sig_5))) & in_6));
    assign sig_9 = (~((~(sig_4 & (sig_8 ^ sig_4))) | sig_14));
    assign sig_3 = ((~((sig_6 | (sig_15 | (sig_7 | (sig_6 ^ sig_13)))) | out_1)) & sig_6);
    assign sig_11 = (~(~((~((~out_3) | in_4)) | sig_4)));
    assign sig_10 = (sig_1 & (~(sig_1 & (~((~(sig_16 & (~((~(~sig_0)) & out_0)))) & sig_11)))));
    assign sig_10 = (~((sig_0 ^ (sig_6 | sig_15)) & out_2));
    assign sig_7 = (~(~(~(~((~sig_1) & in_0)))));
    assign sig_4 = (~(~sig_6));

endmodule
