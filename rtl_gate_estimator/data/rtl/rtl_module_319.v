module rtl_module_319 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [4:0] sig_9;
    wire [4:0] sig_10;
    wire [4:0] sig_11;
    wire [3:0] sig_12;
    wire [4:0] sig_13;
    wire [5:0] sig_14;
    wire [7:0] sig_15;
    wire [7:0] sig_16;
    wire [6:0] sig_17;
    wire [6:0] sig_18;
    wire [1:0] sig_19;
    wire [3:0] sig_20;
    wire [6:0] sig_21;
    wire [5:0] sig_22;
    wire [5:0] sig_23;
    wire [0:0] sig_24;
    wire [0:0] sig_25;

    // Logic assignments
    assign out_0 = ((~(in_0 & ((~(sig_21 | (~(~(sig_7 | (~sig_10)))))) ^ sig_10))) ^ sig_16);
    assign out_1 = (~((~(~((~(out_3 & (sig_12 ^ sig_24))) & out_0))) & sig_6));
    assign out_2 = ((~(sig_14 | (~(((~((~(((in_0 & sig_8) & sig_25) & out_2)) & sig_12)) | in_1) | out_0)))) | sig_22);
    assign out_3 = (sig_10 & (~(~(sig_16 | ((~(in_0 & sig_20)) & sig_18)))));
    assign sig_15 = (in_0 & (sig_14 ^ ((~(~sig_10)) ^ sig_13)));
    assign sig_23 = (sig_25 ^ (~(~(sig_1 & (~(sig_13 | out_3))))));

endmodule
