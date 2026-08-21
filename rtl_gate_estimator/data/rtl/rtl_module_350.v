module rtl_module_350 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [3:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    input wire [7:0] in_5,
    input wire [6:0] in_6,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4,
    output wire [7:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [3:0] sig_11;
    wire [4:0] sig_12;
    wire [7:0] sig_13;
    wire [0:0] sig_14;
    wire [3:0] sig_15;
    wire [4:0] sig_16;
    wire [0:0] sig_17;
    wire [6:0] sig_18;
    wire [2:0] sig_19;
    wire [6:0] sig_20;
    wire [2:0] sig_21;
    wire [5:0] sig_22;
    wire [3:0] sig_23;
    wire [6:0] sig_24;
    wire [4:0] sig_25;
    wire [4:0] sig_26;
    wire [1:0] sig_27;
    wire [4:0] sig_28;

    // Logic assignments
    assign out_0 = (~(~(~(in_3 | (sig_26 ^ (sig_26 ^ (~(in_0 & (~((~(sig_0 & sig_10)) | sig_7))))))))));
    assign out_1 = (sig_26 | ((~out_2) & sig_17));
    assign out_2 = (~(sig_1 ^ sig_15));
    assign out_3 = (~(sig_23 | (in_3 | (~(sig_23 & (sig_22 & (~(out_0 | ((in_1 ^ (sig_1 ^ sig_13)) | sig_5)))))))));
    assign out_4 = ((((sig_25 | (sig_14 & out_5)) | out_4) | in_2) & out_3);
    assign out_5 = (sig_21 ^ (~((~(sig_1 | (~(~((out_3 | (~(sig_17 | in_1))) ^ sig_8))))) & out_5)));
    assign out_6 = (in_4 & (~(sig_22 & (~(sig_11 | out_1)))));
    assign out_3 = ((~((~(sig_0 | (~(~((~(out_5 & sig_15)) | sig_7))))) | sig_10)) & sig_19);
    assign sig_12 = ((~(sig_22 ^ (~(~((~((~(~(sig_27 | sig_6))) | sig_11)) & in_4))))) & in_6);
    assign out_0 = (~(sig_11 & (sig_11 ^ (~(((~(~((out_3 ^ sig_25) ^ sig_1))) & out_2) & sig_2)))));
    assign sig_7 = (sig_12 ^ (~((((sig_27 | sig_8) | sig_24) | in_3) | sig_21)));
    assign sig_3 = (~((~(out_3 & (~((((~((~(sig_15 & in_5)) | sig_24)) & sig_16) ^ out_2) | in_0)))) | out_4));
    assign sig_23 = (~(sig_25 | ((~(in_0 & (sig_8 | (~(sig_1 & out_6))))) & sig_6)));
    assign sig_14 = (~(out_3 & (~(out_5 | (~(out_4 ^ ((~(sig_10 | out_2)) | sig_18)))))));
    assign sig_7 = (~((sig_3 | (sig_11 | (in_5 | ((~(out_3 | (~(in_3 & sig_5)))) & sig_16)))) | sig_15));
    assign sig_3 = (sig_25 & (sig_3 ^ (sig_27 & (sig_22 | (~(~in_4))))));
    assign sig_15 = (in_5 | (sig_6 ^ (sig_1 ^ sig_9)));
    assign out_2 = (in_4 & (~((sig_21 & (~((sig_3 ^ sig_23) | out_5))) | sig_23)));
    assign sig_7 = (in_2 | (sig_9 ^ ((~((in_4 | sig_11) | in_1)) & sig_0)));
    assign sig_24 = ((sig_1 ^ (~(sig_9 & (in_1 | in_0)))) ^ sig_9);
    assign sig_24 = (~((sig_19 ^ sig_14) & sig_22));
    assign sig_9 = (~(sig_4 | (~(sig_8 & (~(out_2 | sig_23))))));
    assign sig_10 = (~(((~((~(~(~(sig_6 & (~(out_0 & sig_28)))))) | sig_2)) | in_4) | sig_0));
    assign sig_20 = (~(((~(in_0 | ((sig_9 & (sig_15 ^ sig_16)) | out_3))) & sig_25) & sig_6));
    assign sig_6 = (out_1 & (~((~(in_4 & (sig_4 & (in_6 ^ in_4)))) & sig_17)));
    assign sig_0 = (~(sig_11 | (((~(sig_19 | (out_0 | sig_17))) & out_2) & sig_25)));
    assign sig_12 = (~(sig_6 | out_2));
    assign sig_19 = ((((~(sig_12 ^ (~(in_1 & sig_27)))) ^ sig_24) ^ sig_21) | sig_14);
    assign out_4 = (~(sig_27 | (~((sig_27 | ((sig_18 | sig_9) | sig_7)) ^ in_6))));

endmodule
