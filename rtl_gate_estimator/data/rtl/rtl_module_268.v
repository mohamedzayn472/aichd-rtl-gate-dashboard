module rtl_module_268 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    output wire [5:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4,
    output wire [1:0] out_5,
    output wire [5:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;
    wire [5:0] sig_10;
    wire [3:0] sig_11;
    wire [5:0] sig_12;
    wire [6:0] sig_13;
    wire [7:0] sig_14;
    wire [2:0] sig_15;
    wire [6:0] sig_16;
    wire [2:0] sig_17;
    wire [5:0] sig_18;
    wire [5:0] sig_19;
    wire [2:0] sig_20;
    wire [5:0] sig_21;
    wire [7:0] sig_22;

    // Logic assignments
    assign out_0 = (~(out_5 | (~(sig_11 | sig_8))));
    assign out_1 = (out_4 & (~((~((~(sig_8 & (~out_6))) & sig_12)) & sig_5)));
    assign out_2 = ((sig_10 & (~(sig_0 | in_0))) | sig_9);
    assign out_3 = ((in_3 & sig_11) ^ sig_22);
    assign out_4 = (~((~((~(in_2 & (~(sig_2 | in_1)))) | out_0)) | in_0));
    assign out_5 = (~(~(sig_5 & (~(sig_16 & in_2)))));
    assign out_6 = (~(sig_22 | (~(sig_8 & (~(sig_3 & (sig_0 & (sig_21 ^ sig_8))))))));
    assign sig_16 = (~((out_2 | (~(out_3 | (~(~(out_1 & (~(sig_22 & sig_8)))))))) & out_2));
    assign sig_19 = (~((~(sig_1 | (~(out_2 & (~(sig_18 | (sig_20 ^ sig_7))))))) | sig_12));
    assign sig_4 = (((~(~in_2)) | sig_19) ^ out_3);
    assign sig_10 = ((~sig_6) ^ sig_12);
    assign out_3 = ((~(sig_8 & (~(sig_3 | (~((~(sig_19 | (~(out_1 & sig_20)))) | sig_2)))))) & in_3);
    assign sig_8 = (~(out_1 | (sig_8 & (out_3 ^ (((sig_0 & (sig_7 | (sig_9 ^ sig_15))) & sig_15) | sig_20)))));

endmodule
