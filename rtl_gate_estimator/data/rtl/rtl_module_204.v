module rtl_module_204 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    input wire [3:0] in_5,
    input wire [5:0] in_6,
    input wire [6:0] in_7,
    output wire [1:0] out_0,
    output wire [5:0] out_1,
    output wire [2:0] out_2,
    output wire [6:0] out_3,
    output wire [6:0] out_4,
    output wire [5:0] out_5,
    output wire [5:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [7:0] sig_12;
    wire [5:0] sig_13;
    wire [3:0] sig_14;
    wire [3:0] sig_15;
    wire [6:0] sig_16;
    wire [5:0] sig_17;
    wire [2:0] sig_18;
    wire [4:0] sig_19;
    wire [7:0] sig_20;
    wire [4:0] sig_21;
    wire [6:0] sig_22;
    wire [6:0] sig_23;
    wire [5:0] sig_24;
    wire [3:0] sig_25;
    wire [5:0] sig_26;
    wire [3:0] sig_27;
    wire [6:0] sig_28;
    wire [2:0] sig_29;
    wire [5:0] sig_30;

    // Logic assignments
    assign out_0 = ((~((~(~sig_29)) | sig_1)) | sig_13);
    assign out_1 = (~(out_1 | (~(~(sig_18 | out_5)))));
    assign out_2 = ((sig_13 ^ (out_3 | sig_10)) ^ sig_19);
    assign out_3 = (sig_26 & (~(out_0 & (~(~(sig_29 | (~(sig_10 & sig_1))))))));
    assign out_4 = (~(sig_6 & sig_14));
    assign out_5 = (((~(~((~((out_5 | sig_21) | sig_7)) & sig_5))) & sig_16) & out_5);
    assign out_6 = (sig_17 & (in_7 & ((~(sig_9 & (~((~(~(~(in_1 & out_6)))) & sig_0)))) ^ in_7)));
    assign out_7 = ((~(~(((~(sig_1 | sig_9)) ^ out_1) | out_5))) ^ sig_17);
    assign sig_12 = ((~((~(sig_8 | (~(sig_17 & (~(out_1 & sig_11)))))) | out_3)) & out_3);
    assign sig_26 = (~(~(((~((~((~(sig_20 & sig_18)) & in_1)) & sig_27)) ^ sig_13) | in_7)));
    assign sig_24 = ((sig_28 ^ in_1) | out_6);
    assign out_7 = (~(sig_22 | (~(((sig_4 & sig_6) & sig_9) & out_3))));
    assign sig_13 = (in_0 ^ (~((sig_8 & (((~(in_3 & (~(out_5 & sig_8)))) & sig_19) ^ sig_5)) & in_5)));
    assign out_6 = (~(sig_26 | (~((~(sig_18 | (~(sig_27 | ((sig_2 & (out_2 & sig_11)) & in_2))))) & in_7))));
    assign sig_4 = (~(in_3 & (((sig_8 ^ ((sig_8 & sig_4) | sig_13)) | in_3) & sig_4)));
    assign out_5 = (sig_0 & (~(~((out_5 & ((~((~in_3) & in_5)) | sig_22)) & sig_23))));
    assign sig_6 = (~((((sig_25 | ((~out_3) ^ in_0)) & out_2) ^ in_5) | sig_26));
    assign sig_19 = ((~(~(sig_22 | (sig_5 & sig_30)))) | sig_15);
    assign sig_18 = (~(sig_10 | (~(((sig_28 | (~((in_7 & (out_1 & sig_23)) & sig_16))) & sig_2) & sig_1))));
    assign sig_4 = (((sig_8 ^ ((((~sig_30) & out_3) ^ out_3) | in_4)) & sig_13) | sig_12);
    assign out_0 = (((sig_25 & ((~(sig_26 | ((out_7 ^ sig_23) ^ out_6))) | out_0)) & sig_14) ^ sig_30);
    assign out_5 = (sig_1 | (((out_3 ^ ((~(out_5 & out_1)) & sig_19)) & sig_5) & sig_24));
    assign sig_11 = (~(sig_16 | (~(((~(sig_16 | sig_17)) & out_2) | sig_15))));
    assign sig_30 = (~(out_2 | (sig_10 & in_5)));
    assign sig_7 = (sig_9 | ((~(~((~(in_0 | (~(in_6 | (out_5 ^ in_2))))) & sig_18))) & sig_30));

endmodule
