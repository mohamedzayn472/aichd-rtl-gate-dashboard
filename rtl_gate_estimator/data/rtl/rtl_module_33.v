module rtl_module_33 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    output wire [4:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [7:0] sig_3;
    wire [5:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [1:0] sig_13;
    wire [6:0] sig_14;
    wire [3:0] sig_15;
    wire [1:0] sig_16;
    wire [5:0] sig_17;
    wire [7:0] sig_18;
    wire [2:0] sig_19;

    // Logic assignments
    assign out_0 = (~(sig_3 | (in_3 ^ ((~((~((~in_2) & out_0)) | out_0)) & sig_9))));
    assign sig_19 = (~((~(sig_8 | in_1)) | in_1));
    assign sig_18 = (sig_10 ^ (~(sig_19 & (~(sig_3 | sig_0)))));
    assign sig_18 = (((~(sig_14 ^ (~(sig_0 | sig_6)))) | sig_13) & in_2);
    assign sig_13 = (~((((~(~(sig_15 & ((~(~sig_16)) | sig_14)))) | sig_12) | in_2) | sig_9));

endmodule
