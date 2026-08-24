module rtl_module_44 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    input wire [6:0] in_4,
    output wire [3:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [7:0] sig_7;
    wire [2:0] sig_8;
    wire [0:0] sig_9;
    wire [0:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;
    wire [2:0] sig_13;
    wire [5:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;
    wire [7:0] sig_17;
    wire [7:0] sig_18;
    wire [6:0] sig_19;
    wire [6:0] sig_20;
    wire [1:0] sig_21;
    wire [3:0] sig_22;
    wire [0:0] sig_23;
    wire [6:0] sig_24;
    wire [7:0] sig_25;

    // Logic assignments
    assign out_0 = (~(sig_24 | ((~(sig_18 & sig_0)) ^ sig_16)));
    assign out_1 = (~((sig_1 | (sig_14 | (~(sig_19 & in_2)))) | sig_17));
    assign out_2 = (~(~(((sig_23 | (out_0 & (out_3 | (sig_10 & out_0)))) | in_1) | in_3)));
    assign out_3 = ((~(sig_25 & (out_0 | (~(in_2 | (~(sig_9 | (~(sig_24 & out_3))))))))) & in_2);
    assign sig_20 = (sig_5 & ((~(sig_14 | in_3)) | sig_1));
    assign sig_2 = (((~(~((~(sig_8 & (((sig_16 | sig_22) & sig_20) | out_3))) & sig_6))) & sig_2) & sig_21);
    assign sig_11 = ((~(sig_6 | (~((in_1 & (sig_19 | sig_1)) & sig_0)))) | sig_13);
    assign sig_25 = (~(~(in_0 | ((sig_0 | (out_0 | (~(in_2 | (sig_6 ^ (~(sig_23 & sig_21))))))) | sig_14))));
    assign sig_6 = (~(sig_24 & (out_3 & sig_18)));
    assign sig_21 = (sig_5 ^ ((sig_4 | sig_2) & sig_25));

endmodule
