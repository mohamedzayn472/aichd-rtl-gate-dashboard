module rtl_module_395 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    input wire [1:0] in_5,
    output wire [7:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [3:0] sig_7;
    wire [6:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;
    wire [2:0] sig_14;
    wire [3:0] sig_15;
    wire [7:0] sig_16;
    wire [7:0] sig_17;
    wire [0:0] sig_18;
    wire [4:0] sig_19;
    wire [3:0] sig_20;
    wire [1:0] sig_21;
    wire [3:0] sig_22;
    wire [4:0] sig_23;
    wire [5:0] sig_24;
    wire [5:0] sig_25;
    wire [1:0] sig_26;
    wire [6:0] sig_27;

    // Logic assignments
    assign out_0 = (~(out_0 & (~((~(sig_22 & sig_1)) & sig_23))));
    assign sig_3 = (~(in_0 & (in_5 & sig_20)));
    assign sig_17 = (~((~(sig_0 | (~(sig_12 & (sig_9 & (~((sig_3 & sig_26) | sig_24))))))) & in_5));
    assign sig_20 = ((~(((sig_21 | sig_15) | in_3) | sig_23)) & sig_14);
    assign sig_19 = ((~((~(~(sig_20 & sig_27))) | sig_6)) | sig_22);
    assign sig_5 = (sig_20 & (~(sig_19 & (~(sig_17 | ((~(sig_24 | sig_3)) ^ sig_17))))));
    assign sig_12 = (~(((~(in_1 | (~(~(((~(sig_17 & (sig_13 & sig_1))) | sig_7) & sig_8))))) & sig_22) | in_2));

endmodule
