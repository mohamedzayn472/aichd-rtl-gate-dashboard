module rtl_module_264 (
input wire [3:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [6:0] in_4,
    input wire [2:0] in_5,
    input wire [6:0] in_6,
    output wire [6:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [4:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;
    wire [3:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;
    wire [5:0] sig_14;
    wire [5:0] sig_15;
    wire [1:0] sig_16;
    wire [2:0] sig_17;
    wire [4:0] sig_18;
    wire [7:0] sig_19;
    wire [4:0] sig_20;
    wire [1:0] sig_21;
    wire [1:0] sig_22;
    wire [1:0] sig_23;
    wire [7:0] sig_24;

    // Logic assignments
    assign out_0 = (sig_16 & ((~(sig_22 | (~((~sig_2) & sig_15)))) | in_6));
    assign out_1 = (~(out_0 | (((in_0 | in_1) | sig_16) | sig_8)));
    assign out_2 = ((~((out_1 ^ (~(in_2 | (~(sig_3 & (out_0 | sig_22)))))) | in_5)) | sig_21);
    assign out_3 = (((~(sig_21 & ((sig_4 | in_0) ^ in_0))) ^ out_3) ^ out_2);
    assign out_4 = (~(sig_16 | ((~(~(in_5 | (~(((~(~(sig_6 & sig_20))) | sig_13) | sig_13))))) & in_1)));
    assign sig_1 = ((~(((~((~((sig_1 ^ sig_1) & sig_4)) | in_3)) ^ sig_19) & sig_21)) & sig_8);
    assign sig_4 = (~((~(sig_2 & (sig_20 | (sig_6 & (~(((~(sig_2 | sig_10)) | sig_10) | sig_22)))))) | out_3));
    assign sig_19 = (~(~(sig_18 | sig_7)));
    assign out_1 = (~(~((~(~(in_4 & (~(~(sig_10 | (~((in_0 ^ sig_8) | in_0)))))))) & sig_17)));
    assign sig_12 = (~((~(sig_14 & (out_2 & sig_11))) & in_6));
    assign sig_20 = (~(~sig_12));
    assign sig_4 = (~(~((sig_19 | (~(in_1 & ((~(sig_1 & sig_11)) & sig_15)))) | sig_19)));
    assign sig_23 = ((sig_10 & ((sig_22 | (~((sig_13 ^ (out_3 ^ (sig_8 | sig_3))) | out_3))) ^ sig_12)) | sig_12);
    assign sig_12 = (sig_14 ^ (~((~(sig_5 | sig_16)) | in_6)));
    assign out_1 = ((~(out_2 & (~((~sig_4) | sig_22)))) ^ sig_4);
    assign sig_7 = (~(in_1 ^ out_2));
    assign sig_0 = ((~(sig_12 & (~((sig_0 & sig_23) & sig_20)))) ^ sig_1);
    assign out_3 = (sig_15 ^ (~((sig_16 ^ sig_11) | sig_4)));

endmodule
