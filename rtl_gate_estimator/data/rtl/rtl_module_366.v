module rtl_module_366 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [3:0] in_3,
    input wire [0:0] in_4,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [1:0] out_4,
    output wire [7:0] out_5,
    output wire [3:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [6:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [7:0] sig_14;
    wire [2:0] sig_15;

    // Logic assignments
    assign out_0 = (~(~((~(~(sig_0 & ((~((~(out_0 & out_7)) | out_5)) | sig_14)))) | sig_8)));
    assign out_1 = (~(~((~(~((~sig_14) & in_2))) ^ in_0)));
    assign out_2 = ((~((~(~((~((out_5 | out_2) ^ out_2)) & sig_2))) & sig_11)) | in_0);
    assign out_3 = ((~(in_4 | (in_3 & (~out_4)))) & out_4);
    assign out_4 = (~((in_2 | (~(((~((~sig_11) ^ in_3)) | sig_7) & sig_6))) | sig_6));
    assign out_5 = (~(sig_5 | (in_0 & out_7)));
    assign out_6 = (~(~((out_5 & sig_2) | out_1)));
    assign out_7 = (~(out_1 | (in_3 & (~((~(in_0 | (~((~(in_2 & sig_1)) ^ sig_9)))) | sig_2)))));
    assign sig_14 = (~(sig_15 | (out_5 | sig_14)));
    assign sig_2 = ((in_0 & (~(out_0 | (sig_0 ^ (~(sig_0 & (sig_12 | (~(out_5 | in_2))))))))) & sig_8);
    assign out_0 = ((in_2 ^ (~((~((~sig_7) & in_1)) | sig_15))) ^ sig_3);
    assign out_1 = ((sig_2 ^ (~(((~(in_1 & (~(in_0 | out_6)))) & sig_5) & out_7))) & out_1);
    assign sig_10 = (~(sig_3 | (~(out_7 & ((~(~sig_14)) | out_3)))));
    assign sig_15 = (~((~(~((sig_11 ^ sig_3) & sig_5))) & sig_5));
    assign sig_0 = (sig_3 ^ ((out_3 | (sig_8 ^ (~(out_2 ^ ((~sig_13) & out_7))))) | sig_10));
    assign out_7 = (in_0 | (~(~(sig_6 & ((sig_12 ^ sig_12) & in_3)))));
    assign out_2 = (~((out_6 ^ (out_2 ^ (~(sig_12 & sig_0)))) | out_7));
    assign sig_8 = (((sig_6 ^ ((~(((~(sig_3 & out_3)) | sig_7) | sig_15)) ^ sig_12)) & in_2) ^ in_3);
    assign out_5 = (~(sig_8 | (~((~(~((sig_14 ^ out_7) & sig_9))) | in_4))));
    assign out_5 = ((sig_8 ^ (((~(~out_0)) & sig_12) | sig_15)) & out_7);
    assign sig_13 = (~(sig_8 & (~((~(sig_14 | sig_2)) | out_4))));

endmodule
