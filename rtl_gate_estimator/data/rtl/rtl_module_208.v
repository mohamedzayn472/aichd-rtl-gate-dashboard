module rtl_module_208 (
input wire [6:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;
    wire [3:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [0:0] sig_10;
    wire [2:0] sig_11;
    wire [2:0] sig_12;
    wire [0:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [0:0] sig_16;
    wire [1:0] sig_17;
    wire [3:0] sig_18;
    wire [3:0] sig_19;
    wire [3:0] sig_20;
    wire [5:0] sig_21;
    wire [3:0] sig_22;
    wire [7:0] sig_23;
    wire [7:0] sig_24;
    wire [1:0] sig_25;

    // Logic assignments
    assign out_0 = (~((sig_8 & sig_18) | sig_21));
    assign out_1 = (sig_19 ^ (~(~(sig_15 | (~((~(sig_25 | ((~((~sig_1) | sig_20)) ^ sig_16))) | sig_6))))));
    assign out_2 = ((~((sig_21 | sig_2) | out_0)) | sig_1);
    assign sig_12 = (~(~((sig_4 ^ (in_0 | sig_25)) | sig_19)));
    assign sig_19 = ((sig_8 & (~((~(~(~(~sig_24)))) | sig_18))) & sig_23);
    assign sig_0 = (~((out_1 | (~(((~((~((sig_23 ^ (~sig_0)) | sig_0)) | sig_12)) & sig_4) & sig_25))) & sig_10));

endmodule
