module rtl_module_321 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    output wire [7:0] out_0,
    output wire [4:0] out_1,
    output wire [3:0] out_2,
    output wire [6:0] out_3,
    output wire [1:0] out_4,
    output wire [2:0] out_5,
    output wire [5:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;
    wire [3:0] sig_14;
    wire [7:0] sig_15;
    wire [3:0] sig_16;
    wire [0:0] sig_17;
    wire [0:0] sig_18;
    wire [6:0] sig_19;
    wire [0:0] sig_20;
    wire [3:0] sig_21;
    wire [2:0] sig_22;
    wire [7:0] sig_23;

    // Logic assignments
    assign out_0 = ((~(~(in_1 | (~(sig_16 ^ out_1))))) | sig_17);
    assign out_1 = (~(sig_15 | sig_19));
    assign out_2 = (~(~(sig_17 ^ sig_3)));
    assign out_3 = ((~(sig_6 & (~(sig_14 & sig_18)))) & sig_18);
    assign out_4 = (~((~(sig_10 | ((out_1 | (sig_18 | (~((sig_23 ^ (sig_3 & sig_14)) & sig_7)))) ^ sig_13))) & sig_11));
    assign out_5 = (sig_5 & (~(sig_1 | ((sig_11 & (sig_5 & sig_13)) | out_0))));
    assign out_6 = ((~((~(sig_11 | (sig_1 | (~(sig_11 | (in_1 | (sig_5 & sig_2))))))) | sig_11)) ^ sig_2);
    assign out_7 = (~((~(sig_11 & ((~(out_6 | (~(out_0 | (~((~((~in_1) & sig_8)) & out_6)))))) & sig_5))) | out_7));
    assign sig_15 = (~((~(out_1 | (~((out_7 & sig_21) & out_2)))) & out_3));
    assign out_7 = (((out_7 ^ (sig_20 ^ (~(sig_8 ^ sig_15)))) | sig_22) & sig_15);
    assign sig_11 = (~(((~(sig_14 & (sig_7 & (~(sig_7 ^ sig_14))))) | sig_0) & out_3));

endmodule
