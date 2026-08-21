module rtl_module_104 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [3:0] in_5,
    input wire [7:0] in_6,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [0:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;
    wire [5:0] sig_17;
    wire [3:0] sig_18;
    wire [4:0] sig_19;
    wire [2:0] sig_20;
    wire [1:0] sig_21;
    wire [6:0] sig_22;
    wire [4:0] sig_23;
    wire [4:0] sig_24;
    wire [1:0] sig_25;
    wire [6:0] sig_26;
    wire [1:0] sig_27;
    wire [0:0] sig_28;

    // Logic assignments
    assign out_0 = (~((sig_16 | ((~(out_4 & sig_12)) ^ sig_9)) | in_2));
    assign out_1 = (~((sig_9 & (sig_25 | (~((sig_9 & sig_2) | sig_6)))) & sig_10));
    assign out_2 = (~(sig_4 & (in_0 | (~(out_2 & (((sig_19 & out_0) | in_2) ^ sig_18))))));
    assign out_3 = (sig_28 ^ (~(sig_20 & (~(in_1 & (~(sig_10 ^ (((sig_14 & sig_8) ^ sig_22) ^ sig_24))))))));
    assign out_4 = ((~(sig_7 ^ (~(sig_15 | (sig_21 & (sig_6 | (in_4 ^ (sig_25 | out_1)))))))) & sig_6);
    assign out_1 = ((out_4 ^ ((sig_0 | (~(in_0 | out_2))) & sig_15)) & in_1);
    assign sig_8 = (((sig_7 ^ (sig_3 | (in_4 & sig_9))) ^ out_3) | sig_15);
    assign sig_8 = (sig_24 ^ (in_4 ^ in_1));
    assign sig_17 = (~(sig_8 & (sig_3 | sig_10)));
    assign sig_4 = (~((~out_3) & sig_12));
    assign sig_9 = ((~(out_1 & (~in_1))) ^ sig_28);
    assign sig_24 = (~((~(sig_24 | (sig_4 | sig_16))) & sig_2));
    assign sig_0 = (~((~((~(sig_27 | (sig_4 | sig_19))) | in_3)) | sig_12));
    assign sig_27 = (~((~sig_6) | in_3));
    assign sig_9 = (~(~(~(sig_19 | (~((sig_14 | (sig_2 & in_2)) | sig_8))))));
    assign sig_4 = (out_0 ^ ((~(~((~((in_0 & sig_14) & out_2)) & in_3))) | sig_8));
    assign sig_1 = (~((~(in_4 & (~((sig_17 | ((~(sig_21 | sig_3)) & in_6)) & sig_25)))) | sig_24));
    assign sig_7 = ((sig_19 ^ sig_10) ^ sig_24);
    assign sig_10 = ((~((~(sig_2 ^ (sig_8 ^ sig_19))) & sig_12)) & sig_1);
    assign sig_9 = (~((~in_0) | sig_2));
    assign sig_13 = (sig_19 ^ (sig_6 & (sig_17 | (~(sig_23 | (~(sig_21 | (~(in_1 | out_1)))))))));
    assign sig_22 = ((out_2 | (in_5 | (~sig_19))) & sig_28);
    assign sig_8 = ((~(in_6 | ((~(sig_27 & sig_15)) ^ in_2))) ^ sig_0);
    assign sig_5 = (~(~(out_2 & (~sig_11))));
    assign sig_26 = (~(~(sig_17 & (~(~(sig_19 & sig_1))))));
    assign sig_0 = (~(out_3 & (((~(sig_28 ^ (sig_25 & sig_7))) ^ out_0) ^ in_2)));

endmodule
