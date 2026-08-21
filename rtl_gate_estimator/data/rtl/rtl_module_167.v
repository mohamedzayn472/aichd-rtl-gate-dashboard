module rtl_module_167 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [5:0] in_3,
    input wire [0:0] in_4,
    output wire [7:0] out_0,
    output wire [4:0] out_1,
    output wire [2:0] out_2,
    output wire [4:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [4:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [3:0] sig_17;
    wire [0:0] sig_18;
    wire [1:0] sig_19;
    wire [6:0] sig_20;
    wire [4:0] sig_21;

    // Logic assignments
    assign out_0 = (~((~(out_1 ^ (~((~((~sig_15) | in_0)) | sig_19)))) & sig_0));
    assign out_1 = (~((~(sig_14 | (~(in_0 & (~out_0))))) | sig_3));
    assign out_2 = (~((~(out_4 & (~((~((~out_3) | in_2)) | sig_18)))) & sig_13));
    assign out_3 = ((~sig_3) ^ sig_8);
    assign out_4 = (sig_19 ^ (sig_16 | (sig_6 ^ sig_7)));
    assign sig_0 = ((~(sig_18 | (~((~(((~(sig_19 & in_4)) ^ sig_1) & in_3)) & sig_4)))) ^ sig_9);
    assign out_2 = ((~(sig_2 | sig_12)) | sig_21);
    assign sig_19 = (~(out_4 & (in_1 | ((~(sig_12 | (sig_9 | (sig_12 | (sig_4 | (in_0 | sig_2)))))) ^ in_4))));
    assign sig_8 = ((~((~((~(~(~((~(sig_4 & sig_14)) & sig_4)))) | sig_2)) | sig_4)) | sig_8);
    assign sig_18 = (~(sig_13 | (~((~((out_0 & (~(out_2 & ((~((in_2 & sig_19) | sig_14)) & sig_21)))) & sig_16)) | out_3))));
    assign sig_11 = (in_4 | (~((~(sig_3 | (sig_13 ^ (~((~(out_4 & (~(sig_7 & sig_4)))) & sig_4))))) | sig_7)));
    assign sig_16 = (~(sig_3 & (sig_19 | (~((((sig_6 & (sig_11 | sig_16)) ^ out_3) & sig_11) & out_3)))));
    assign sig_15 = (in_4 ^ (~((~((~(sig_0 & out_1)) | sig_3)) | out_3)));
    assign out_4 = (~((~(~(sig_18 & sig_7))) | sig_3));

endmodule
