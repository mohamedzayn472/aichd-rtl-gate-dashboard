module rtl_module_56 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    input wire [6:0] in_4,
    input wire [4:0] in_5,
    input wire [1:0] in_6,
    output wire [2:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [1:0] out_4,
    output wire [0:0] out_5,
    output wire [3:0] out_6,
    output wire [0:0] out_7
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [6:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [2:0] sig_14;
    wire [2:0] sig_15;
    wire [7:0] sig_16;
    wire [7:0] sig_17;
    wire [7:0] sig_18;
    wire [0:0] sig_19;
    wire [7:0] sig_20;
    wire [3:0] sig_21;
    wire [3:0] sig_22;
    wire [4:0] sig_23;
    wire [6:0] sig_24;
    wire [0:0] sig_25;
    wire [5:0] sig_26;
    wire [0:0] sig_27;
    wire [1:0] sig_28;
    wire [6:0] sig_29;

    // Logic assignments
    assign out_0 = (~((~(sig_20 & (~(in_3 | (~((out_2 ^ (sig_24 & (~sig_18))) & sig_24)))))) & sig_28));
    assign out_1 = (~(~((~(~((~((sig_21 ^ out_7) | sig_3)) & sig_5))) & sig_21)));
    assign out_2 = (~(sig_17 & (~(sig_11 | (out_1 ^ out_5)))));
    assign out_3 = (~(sig_6 | (~((~(sig_19 | ((~((~((out_7 | sig_11) & out_5)) | sig_4)) ^ out_1))) | sig_24))));
    assign out_4 = ((sig_15 ^ out_6) ^ sig_25);
    assign out_5 = ((~sig_0) ^ out_2);
    assign out_6 = (sig_21 | (~(in_3 ^ (out_1 ^ (out_7 ^ (sig_10 & sig_28))))));
    assign out_7 = (((~((~(sig_24 & (sig_21 & (~(sig_3 & (sig_6 & (~(sig_3 & in_6)))))))) & in_6)) & sig_16) & sig_1);
    assign sig_12 = (~(((~(sig_11 ^ sig_25)) | sig_10) & sig_19));
    assign sig_15 = (~(sig_19 & (~(sig_1 | sig_20))));
    assign out_3 = (~(in_3 | (sig_2 ^ (out_5 & (~(sig_18 | ((~(sig_18 | (~(in_4 & in_5)))) & sig_3)))))));
    assign out_3 = (~(~(~(sig_13 | (~(sig_12 | sig_28))))));
    assign sig_0 = ((~(sig_5 & (~(((~(out_2 | (~(~(~(sig_27 | sig_6)))))) | out_7) & out_4)))) ^ in_5);
    assign sig_21 = (~(in_1 | (~((~((sig_25 | (~(sig_27 & sig_11))) | sig_26)) | out_3))));
    assign out_4 = ((out_4 | ((~(sig_9 | (~(~(in_3 & sig_0))))) ^ sig_15)) ^ sig_21);
    assign sig_0 = (sig_17 ^ (sig_29 | (~((~((~(out_5 & out_3)) & out_1)) | sig_12))));
    assign sig_15 = ((~(sig_5 & out_0)) ^ sig_16);
    assign sig_9 = (~(~(sig_26 & (sig_18 & (sig_16 & (~(sig_23 | sig_6)))))));
    assign sig_16 = (~(~((~(~(~((~sig_19) | sig_3)))) | sig_1)));
    assign sig_29 = (~(sig_3 | (~((~(sig_0 & out_7)) & sig_23))));
    assign sig_23 = (~((~sig_0) & sig_0));
    assign sig_18 = (~((sig_0 | sig_16) & sig_16));
    assign out_1 = (sig_12 | (out_0 | sig_19));
    assign sig_13 = (~((~(sig_0 & sig_28)) | in_2));
    assign out_6 = (~(sig_1 & (~((~sig_23) ^ out_1))));
    assign sig_29 = (~(~(sig_3 | (~(sig_10 | (~(out_5 | (sig_14 ^ (sig_7 & (~(out_5 & out_2)))))))))));
    assign out_6 = (~(((~(sig_23 & (~((in_3 & (~(sig_27 | (~(sig_5 & in_5))))) | sig_26)))) ^ in_1) | sig_27));
    assign sig_1 = (((~((~(in_5 & sig_21)) | out_1)) | out_0) | in_1);
    assign sig_11 = ((~(((~(sig_0 ^ in_5)) ^ sig_27) & sig_2)) & in_5);
    assign sig_26 = (sig_25 | ((~(sig_8 & ((((~(in_3 | sig_12)) & sig_13) | sig_13) ^ sig_0))) & out_0));
    assign sig_24 = ((sig_22 & sig_13) ^ in_4);
    assign sig_26 = (sig_27 | (sig_3 & ((~(out_3 & (~((~((sig_28 & sig_8) | sig_1)) & sig_19)))) ^ sig_2)));
    assign out_5 = (sig_17 & (sig_9 & (~(~((out_4 ^ sig_3) & sig_23)))));
    assign sig_13 = (~(sig_13 & (sig_6 ^ (sig_10 & (sig_1 | (~(sig_18 | (~(sig_29 & in_4)))))))));
    assign sig_21 = ((~(in_0 | (~(in_0 ^ ((~((sig_14 ^ sig_6) | out_1)) | out_7))))) ^ out_6);
    assign out_5 = (~((~(~(~(sig_17 & ((~((~(in_4 | sig_27)) | out_5)) & sig_0))))) | sig_15));
    assign sig_0 = (~(sig_5 ^ sig_21));
    assign sig_1 = ((~(sig_10 | (~((sig_5 ^ (((~(sig_24 & (~(sig_12 | sig_7)))) & in_2) | out_1)) | out_3)))) ^ sig_24);
    assign sig_12 = (~(out_7 | (~((~((~(sig_26 | (~(sig_29 & (~((in_4 | out_0) & in_4)))))) | sig_10)) & out_6))));
    assign sig_16 = (~(in_2 & (~((~(~(out_6 | (~((~(in_3 | sig_13)) | sig_19))))) & sig_24))));
    assign sig_14 = ((~sig_27) ^ sig_21);
    assign sig_25 = ((sig_20 & (~(sig_7 & in_1))) ^ sig_8);
    assign sig_21 = ((~(out_3 | (~(in_1 | (in_1 & sig_23))))) & sig_9);
    assign out_0 = (in_6 ^ (out_1 & (sig_8 ^ sig_26)));
    assign out_7 = ((in_2 & sig_17) & out_7);
    assign sig_8 = (~(out_2 & sig_12));

endmodule
