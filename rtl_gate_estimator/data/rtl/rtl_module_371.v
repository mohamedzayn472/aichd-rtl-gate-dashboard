module rtl_module_371 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;
    wire [6:0] sig_12;
    wire [1:0] sig_13;
    wire [5:0] sig_14;
    wire [0:0] sig_15;
    wire [5:0] sig_16;
    wire [1:0] sig_17;
    wire [4:0] sig_18;
    wire [6:0] sig_19;
    wire [3:0] sig_20;

    // Logic assignments
    assign out_0 = (~(~((~(sig_19 & (~((~(~out_1)) & sig_5)))) & sig_2)));
    assign out_1 = (in_0 | (sig_19 | ((sig_14 | sig_20) | out_1)));
    assign out_2 = (out_1 & (~((~((~(sig_19 | sig_2)) | sig_6)) & out_1)));
    assign sig_13 = (~(~(((~(sig_13 & out_2)) ^ sig_10) & sig_3)));
    assign sig_15 = (~(out_1 & (~(in_1 & (~(~((~(~(in_0 & sig_9))) | sig_13)))))));

endmodule
