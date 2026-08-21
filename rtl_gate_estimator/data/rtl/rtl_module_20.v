module rtl_module_20 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [4:0] in_3,
    input wire [3:0] in_4,
    input wire [5:0] in_5,
    input wire [1:0] in_6,
    input wire [0:0] in_7,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;
    wire [0:0] sig_11;
    wire [5:0] sig_12;
    wire [3:0] sig_13;
    wire [0:0] sig_14;
    wire [2:0] sig_15;
    wire [1:0] sig_16;
    wire [4:0] sig_17;
    wire [6:0] sig_18;
    wire [5:0] sig_19;
    wire [6:0] sig_20;
    wire [6:0] sig_21;
    wire [3:0] sig_22;
    wire [0:0] sig_23;
    wire [1:0] sig_24;
    wire [1:0] sig_25;
    wire [4:0] sig_26;
    wire [5:0] sig_27;
    wire [5:0] sig_28;
    wire [4:0] sig_29;
    wire [3:0] sig_30;

    // Logic assignments
    assign out_0 = (~(~(sig_24 & (sig_13 & (in_4 ^ (sig_18 | sig_24))))));
    assign out_1 = (~((sig_29 ^ (~(sig_21 | (~(~(~(sig_7 & sig_22))))))) & sig_22));
    assign out_2 = (~(~(sig_6 | sig_6)));
    assign sig_26 = (~((~((sig_17 & (~(sig_8 | sig_7))) & sig_13)) & sig_3));
    assign sig_22 = (~((sig_7 ^ (sig_23 | sig_4)) & sig_8));
    assign sig_12 = (sig_6 | (~(((sig_28 | (((sig_26 & (~(sig_23 | out_0))) & sig_22) & sig_12)) ^ sig_23) & sig_24)));
    assign sig_8 = (~((~sig_22) & sig_26));
    assign sig_22 = (~(((~((~(sig_25 | sig_21)) & in_0)) | sig_5) | in_6));
    assign sig_16 = (~(((sig_22 | sig_9) ^ sig_13) & sig_23));
    assign sig_26 = (((~(sig_7 ^ (~(in_6 | (~(sig_28 & sig_0)))))) ^ sig_16) ^ sig_1);
    assign sig_0 = (~(~(sig_25 | out_1)));
    assign sig_20 = (~((sig_15 ^ (~((~(((~(sig_2 & in_3)) & sig_8) & out_1)) & sig_13))) ^ sig_8));

endmodule
