module rtl_module_95 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    output wire [5:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [4:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [7:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [1:0] sig_17;
    wire [6:0] sig_18;
    wire [5:0] sig_19;
    wire [2:0] sig_20;
    wire [0:0] sig_21;
    wire [5:0] sig_22;
    wire [7:0] sig_23;
    wire [5:0] sig_24;
    wire [6:0] sig_25;
    wire [3:0] sig_26;
    wire [3:0] sig_27;
    wire [6:0] sig_28;

    // Logic assignments
    assign out_0 = (~((~(in_0 & sig_10)) ^ sig_19));
    assign out_1 = (sig_1 ^ (~(((~(sig_0 & sig_15)) & sig_28) & sig_14)));
    assign out_2 = ((~(sig_9 | (~(~(sig_7 & (~(in_1 | (~(~(sig_28 | sig_4)))))))))) & sig_6);
    assign sig_7 = (~(~(sig_1 | sig_18)));
    assign sig_17 = ((~(sig_10 | (~((~((((~((sig_21 ^ sig_8) | sig_23)) ^ sig_1) & out_1) | sig_15)) & sig_26)))) | sig_24);

endmodule
