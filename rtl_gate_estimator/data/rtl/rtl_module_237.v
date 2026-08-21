module rtl_module_237 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    input wire [0:0] in_2,
    input wire [0:0] in_3,
    input wire [5:0] in_4,
    input wire [7:0] in_5,
    input wire [5:0] in_6,
    input wire [3:0] in_7,
    output wire [7:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [5:0] sig_11;
    wire [2:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [1:0] sig_16;
    wire [5:0] sig_17;
    wire [1:0] sig_18;
    wire [2:0] sig_19;
    wire [1:0] sig_20;
    wire [6:0] sig_21;
    wire [7:0] sig_22;
    wire [6:0] sig_23;
    wire [0:0] sig_24;
    wire [6:0] sig_25;
    wire [0:0] sig_26;
    wire [1:0] sig_27;
    wire [0:0] sig_28;

    // Logic assignments
    assign out_0 = (out_3 ^ (~(out_3 & (~((~(~(sig_5 & (~(sig_0 | ((~(sig_0 | sig_11)) | sig_18)))))) & sig_13)))));
    assign out_1 = ((~((in_1 ^ (sig_16 & (~(sig_16 | (sig_4 | (~(sig_27 & sig_17))))))) | sig_8)) ^ sig_25);
    assign out_2 = (sig_3 | (~(sig_13 & sig_17)));
    assign out_3 = (in_3 | ((sig_23 ^ (~(sig_10 | (in_6 | (sig_21 & (~in_1)))))) & in_1));
    assign sig_14 = ((out_1 ^ (out_1 & sig_3)) ^ sig_8);
    assign sig_5 = (((~(~((~((sig_23 & sig_11) & sig_11)) & sig_14))) | sig_11) | sig_0);
    assign sig_12 = (out_3 ^ (~(((~((~(sig_20 | (sig_20 & sig_24))) | sig_13)) & sig_12) | sig_12)));
    assign sig_24 = ((~(in_5 | (in_5 | (~(~((sig_16 | in_4) | sig_8)))))) & sig_6);
    assign sig_20 = (~(~(((~(sig_8 | (sig_2 ^ sig_24))) & sig_18) | sig_13)));
    assign sig_10 = (~(~(in_5 | (sig_23 ^ (~((~(~(in_3 | sig_16))) | sig_17))))));
    assign sig_19 = (~(sig_18 | (in_3 & out_0)));
    assign sig_12 = (~(sig_22 | ((~((~((~((~(~(out_3 & sig_7))) | sig_27)) | sig_22)) & sig_8)) ^ sig_6)));
    assign sig_18 = (sig_14 & ((~(sig_0 ^ in_0)) | sig_2));
    assign sig_27 = ((~(((~(sig_16 | sig_22)) | sig_3) & sig_8)) | sig_8);
    assign sig_19 = (~(in_3 | (~((~(sig_11 & ((~((~sig_15) & out_2)) | sig_7))) & sig_2))));

endmodule
