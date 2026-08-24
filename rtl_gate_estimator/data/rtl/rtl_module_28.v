module rtl_module_28 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [6:0] in_5,
    input wire [2:0] in_6,
    input wire [0:0] in_7,
    output wire [2:0] out_0,
    output wire [3:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3,
    output wire [3:0] out_4,
    output wire [0:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [6:0] sig_6;
    wire [1:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [7:0] sig_11;
    wire [7:0] sig_12;
    wire [2:0] sig_13;
    wire [7:0] sig_14;
    wire [5:0] sig_15;
    wire [5:0] sig_16;
    wire [2:0] sig_17;
    wire [4:0] sig_18;
    wire [1:0] sig_19;
    wire [4:0] sig_20;
    wire [0:0] sig_21;
    wire [6:0] sig_22;
    wire [0:0] sig_23;
    wire [2:0] sig_24;
    wire [3:0] sig_25;
    wire [3:0] sig_26;
    wire [3:0] sig_27;
    wire [3:0] sig_28;
    wire [4:0] sig_29;
    wire [6:0] sig_30;
    wire [0:0] sig_31;

    // Logic assignments
    assign out_0 = (~(out_3 | ((~((~(sig_19 | (out_5 | (~(sig_11 & (sig_8 & sig_6)))))) | sig_14)) & sig_5)));
    assign out_1 = (~(~(sig_9 & (((~((~(sig_27 | sig_15)) & sig_30)) & out_3) & in_4))));
    assign out_2 = (in_2 ^ ((~(sig_8 | (~(sig_23 | (~((sig_12 ^ ((sig_7 | sig_25) | sig_30)) | out_6)))))) ^ sig_17));
    assign out_3 = (((~(out_2 | (~(sig_11 | ((~(out_0 | sig_26)) | out_2))))) ^ sig_3) | sig_22);
    assign out_4 = (~((~(((~(sig_13 | out_1)) | sig_14) & sig_11)) | sig_13));
    assign out_5 = ((~(sig_4 & (~((~(sig_29 | sig_29)) & in_4)))) ^ out_3);
    assign out_6 = (~((sig_28 | (sig_4 | sig_13)) & sig_21));
    assign sig_11 = ((~((~(sig_19 | (((~(sig_2 | (in_0 & sig_20))) ^ sig_2) | in_5))) ^ sig_17)) & sig_22);
    assign sig_2 = ((~(((sig_6 & (out_0 ^ (~(in_1 & sig_4)))) ^ sig_14) | in_6)) | sig_29);
    assign sig_4 = ((sig_6 ^ ((~(~((~((~((~(sig_19 & sig_13)) & sig_0)) & sig_23)) | sig_4))) ^ sig_17)) & sig_0);
    assign sig_1 = (~(in_3 & (out_1 | (in_3 & ((~(sig_8 | (~(sig_16 | in_2)))) ^ sig_31)))));
    assign sig_26 = (~((~(out_3 & ((~out_4) ^ sig_1))) & sig_11));
    assign sig_6 = (~((sig_8 ^ (~((~((~((sig_24 | (~in_6)) | in_7)) & in_6)) & sig_30))) & sig_4));
    assign sig_26 = (in_0 | ((~(out_4 & (~sig_5))) & sig_13));
    assign sig_7 = (~((~((~(sig_3 | ((~(((~(in_6 | out_6)) & out_1) & sig_10)) & in_3))) | sig_10)) & out_3));
    assign sig_7 = ((out_2 & sig_0) & sig_13);
    assign sig_28 = ((~(out_1 | (sig_22 & (sig_16 ^ ((in_7 | sig_17) ^ sig_21))))) ^ sig_2);
    assign sig_3 = ((out_6 & (~(~(out_3 & (~(~(sig_14 & (~((~sig_3) | sig_31))))))))) | sig_0);
    assign sig_31 = (~(~in_2));
    assign sig_4 = (~(out_2 | (sig_6 ^ (sig_28 & (~(sig_25 | out_3))))));
    assign out_1 = (~((~(sig_27 | (~((out_2 & (~(~(out_6 | sig_7)))) & sig_16)))) | sig_31));
    assign sig_10 = (~(~(sig_27 | (in_3 & (~(sig_13 ^ sig_7))))));
    assign sig_25 = (((~(~(~(sig_23 & (~((~sig_20) & sig_12)))))) & in_1) | sig_18);
    assign out_3 = (sig_24 & (~(sig_31 & out_0)));
    assign sig_29 = (((sig_27 | (~sig_13)) & sig_30) ^ out_2);
    assign sig_28 = (out_0 & (~(sig_6 | in_0)));
    assign sig_18 = (~(sig_4 & ((~((sig_8 & ((sig_0 | sig_23) & out_6)) | sig_4)) ^ sig_17)));
    assign sig_6 = (~(sig_19 & (~(in_3 | (~(in_0 | (~(sig_0 & (sig_29 & (~(~out_2)))))))))));
    assign sig_30 = ((~(out_4 | (~(sig_18 & (sig_24 | (~(sig_30 | (sig_16 | in_6)))))))) | sig_9);
    assign sig_21 = (~((out_4 | (~sig_30)) | sig_24));
    assign out_3 = (sig_14 ^ (~((~(out_4 | (~(sig_3 & (~(out_1 | (sig_0 | (sig_14 | (sig_31 | out_5))))))))) | out_5)));
    assign out_5 = (~(sig_9 | (~((~(~((~((~(sig_19 & sig_10)) | sig_25)) | sig_16))) | out_2))));
    assign sig_10 = (~(out_3 | (((out_4 & sig_10) | sig_26) ^ sig_20)));
    assign sig_14 = (~(sig_20 | (~((~((~((~((out_4 ^ out_2) | sig_16)) & out_3)) | sig_27)) & sig_8))));
    assign sig_23 = (~((~(sig_29 & (~((~(((~(sig_3 | ((sig_3 ^ sig_20) | in_4))) | in_7) & sig_19)) | sig_8)))) & in_0));
    assign sig_9 = (out_0 | (in_3 ^ sig_30));
    assign sig_19 = (~((~(sig_26 & ((sig_3 & (~(sig_12 | sig_25))) ^ sig_24))) & in_5));
    assign sig_13 = (out_3 ^ (sig_7 ^ (sig_31 ^ (sig_7 ^ ((~((~(sig_27 & sig_22)) & out_1)) | out_2)))));
    assign sig_24 = (sig_26 & (~(sig_2 ^ (~(in_5 & (~((sig_10 ^ ((~(sig_24 & sig_15)) & sig_20)) | sig_4)))))));
    assign sig_4 = (~(out_4 | (~(sig_5 | (sig_19 | out_3)))));
    assign sig_27 = (sig_20 & (~((~(sig_28 | (sig_8 | ((~(~(sig_13 | in_2))) & in_3)))) | sig_8)));
    assign sig_27 = ((~(~((in_0 & sig_26) | sig_31))) & sig_29);
    assign sig_4 = (~(sig_2 & (((~(sig_11 | sig_30)) ^ sig_20) & out_2)));
    assign sig_8 = (~(~(sig_27 & ((~(((in_0 ^ (~(out_6 | out_1))) | sig_27) | in_2)) ^ sig_30))));
    assign sig_19 = (~((~(out_1 | (~(sig_14 | sig_5)))) | sig_1));

endmodule
