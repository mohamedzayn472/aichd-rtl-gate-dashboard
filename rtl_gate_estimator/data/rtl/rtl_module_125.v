module rtl_module_125 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    input wire [1:0] in_4,
    input wire [5:0] in_5,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [2:0] out_2,
    output wire [5:0] out_3,
    output wire [5:0] out_4,
    output wire [2:0] out_5,
    output wire [5:0] out_6
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [5:0] sig_11;
    wire [6:0] sig_12;
    wire [1:0] sig_13;
    wire [4:0] sig_14;
    wire [2:0] sig_15;
    wire [5:0] sig_16;
    wire [5:0] sig_17;
    wire [7:0] sig_18;
    wire [7:0] sig_19;
    wire [2:0] sig_20;
    wire [0:0] sig_21;
    wire [5:0] sig_22;
    wire [2:0] sig_23;
    wire [5:0] sig_24;
    wire [2:0] sig_25;
    wire [2:0] sig_26;
    wire [3:0] sig_27;
    wire [6:0] sig_28;
    wire [1:0] sig_29;
    wire [6:0] sig_30;
    wire [1:0] sig_31;

    // Logic assignments
    assign out_0 = (~(sig_29 & (sig_30 & in_0)));
    assign out_1 = (~(sig_19 | (sig_17 | (~(sig_15 | sig_25)))));
    assign out_2 = (~(in_4 | (~((sig_26 ^ (~(sig_6 | (~(~(sig_3 | (out_2 & sig_8))))))) & sig_25))));
    assign out_3 = ((~((sig_28 | out_2) ^ sig_6)) | in_1);
    assign out_4 = (sig_16 | (~((in_4 & sig_10) | sig_1)));
    assign out_5 = (~((~(sig_13 & sig_15)) | sig_7));
    assign out_6 = (~(sig_18 & (~(~(sig_24 | (~((~((sig_25 & out_5) & sig_25)) & in_1)))))));
    assign sig_6 = (~(sig_9 | (~((~((sig_25 ^ (~(sig_25 | in_1))) & in_5)) & sig_28))));
    assign sig_6 = (~(~(((sig_29 | (~(sig_24 & in_2))) ^ sig_22) | sig_20)));
    assign sig_8 = (~(sig_1 | ((~(sig_28 & (~((~(sig_5 & sig_23)) & sig_30)))) & in_3)));
    assign sig_31 = (~((sig_12 | in_2) ^ sig_21));
    assign sig_9 = ((out_5 | (~(~(((~(~(sig_5 | out_3))) & in_2) | sig_8)))) & sig_25);
    assign sig_28 = (~(sig_29 | (((sig_17 | (sig_27 | ((~(sig_17 | (~(sig_30 & in_1)))) | sig_21))) & sig_0) & in_2)));
    assign sig_4 = (sig_26 & (out_4 ^ sig_16));
    assign sig_8 = ((in_5 | sig_30) & sig_6);
    assign out_2 = (~((sig_1 ^ (~(sig_5 & out_4))) & sig_8));
    assign sig_19 = (~((~((~in_0) | sig_17)) | in_0));
    assign sig_17 = (~((out_2 & (sig_18 ^ (((sig_24 | sig_7) ^ sig_24) | sig_7))) & in_4));
    assign sig_8 = (~((sig_14 | ((~(~((sig_8 & (~((out_2 | sig_9) & out_2))) & sig_20))) & sig_21)) & in_1));
    assign sig_23 = (~(~((out_3 | (~(sig_26 | (out_1 | sig_24)))) & out_2)));
    assign out_6 = ((~((~(~(sig_3 & (in_4 & sig_20)))) & in_2)) ^ sig_19);
    assign sig_21 = (~(out_0 & (~(sig_29 & (out_6 ^ (sig_24 ^ sig_26))))));
    assign out_4 = (~(sig_28 ^ (sig_25 & out_6)));
    assign sig_4 = (~(((sig_14 ^ (out_0 ^ sig_26)) ^ sig_30) | sig_13));
    assign sig_21 = (~((~(sig_2 ^ (out_1 ^ (~((~out_4) & out_4))))) | out_6));
    assign sig_23 = (~((~(sig_5 & (out_2 ^ (sig_7 | (~(~(sig_12 & (~(sig_1 & sig_5))))))))) & sig_25));
    assign sig_25 = (~((sig_18 ^ (~((~(~(sig_15 & sig_3))) & in_4))) | sig_19));
    assign sig_12 = ((~(~(~((~((sig_25 ^ (~(sig_21 & (~(sig_20 & sig_6))))) & sig_24)) & sig_14)))) ^ sig_5);
    assign sig_3 = (sig_2 & (sig_29 ^ sig_0));
    assign sig_27 = ((~(out_1 | (~(in_3 & in_0)))) & sig_12);

endmodule
