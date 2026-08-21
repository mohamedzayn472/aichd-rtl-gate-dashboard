module rtl_module_33 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    input wire [3:0] in_4,
    input wire [4:0] in_5,
    output wire [4:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;
    wire [3:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;
    wire [1:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [2:0] sig_17;
    wire [5:0] sig_18;
    wire [6:0] sig_19;
    wire [3:0] sig_20;
    wire [6:0] sig_21;
    wire [6:0] sig_22;
    wire [4:0] sig_23;
    wire [1:0] sig_24;
    wire [1:0] sig_25;
    wire [0:0] sig_26;
    wire [0:0] sig_27;
    wire [5:0] sig_28;
    wire [3:0] sig_29;

    // Logic assignments
    assign out_0 = (~((~((~((~((sig_13 & (sig_26 & sig_10)) | out_6)) | sig_29)) & sig_5)) | sig_26));
    assign out_1 = (~(((sig_27 ^ sig_21) & sig_1) | sig_2));
    assign out_2 = ((~((out_6 ^ (~(sig_3 ^ (sig_25 ^ (~((sig_27 ^ sig_14) & sig_4)))))) | sig_22)) ^ sig_3);
    assign out_3 = ((~(sig_4 ^ sig_23)) & sig_25);
    assign out_4 = (~((~(sig_1 & (~(~sig_25)))) | sig_3));
    assign out_5 = (sig_11 | (sig_4 ^ sig_5));
    assign out_6 = (~((sig_0 | (~(out_1 & ((~((~(sig_25 & (sig_20 | in_4))) & sig_15)) & sig_1)))) & sig_3));
    assign sig_29 = (~((~(in_3 | (~(~(~(((~(out_5 & (~(sig_15 | in_0)))) ^ sig_22) | out_0)))))) | sig_12));
    assign sig_3 = ((~((~((~((~(sig_9 ^ sig_5)) & sig_19)) & sig_7)) & sig_19)) & out_5);
    assign sig_19 = (~(~(((~(sig_17 | (~(sig_16 & sig_2)))) ^ sig_25) | sig_18)));
    assign out_6 = (~(out_5 & (~(sig_23 ^ (~(in_2 & (sig_21 | out_4)))))));
    assign sig_9 = (~((~(sig_13 | (~(sig_2 | (~((sig_12 & sig_23) & sig_24)))))) & sig_27));
    assign out_6 = (~((in_2 & sig_26) & sig_21));
    assign sig_29 = (~(sig_22 | (~(sig_23 & (((sig_5 ^ (~((sig_26 & in_1) & out_6))) ^ in_2) ^ sig_13)))));
    assign sig_16 = ((((sig_10 & out_2) | sig_0) | in_1) | sig_1);
    assign out_0 = (~((~(~(sig_19 | (~((~(sig_13 & sig_25)) | out_3))))) | in_5));
    assign sig_0 = (((~(sig_6 | in_1)) & out_5) & sig_9);
    assign out_4 = (((~sig_3) ^ sig_24) & sig_1);

endmodule
