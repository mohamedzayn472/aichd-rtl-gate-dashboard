module rtl_module_293 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    output wire [1:0] out_0,
    output wire [4:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [4:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [1:0] sig_11;
    wire [4:0] sig_12;
    wire [2:0] sig_13;
    wire [6:0] sig_14;
    wire [5:0] sig_15;
    wire [2:0] sig_16;
    wire [0:0] sig_17;
    wire [1:0] sig_18;
    wire [2:0] sig_19;

    // Logic assignments
    assign out_0 = (~(in_1 ^ sig_0));
    assign out_1 = (~((in_2 ^ (~(((~(~(sig_12 & sig_12))) ^ sig_8) | sig_15))) | sig_0));
    assign out_2 = (~(sig_0 & ((in_3 | (~(sig_18 | (~(~(~(sig_5 | (in_3 ^ sig_15)))))))) & sig_6)));
    assign sig_17 = ((sig_18 & (((sig_13 & (~(sig_8 & (sig_0 ^ sig_2)))) | sig_3) & sig_13)) & sig_19);
    assign sig_8 = (out_2 | (~(~((~(sig_3 | out_0)) & sig_0))));
    assign sig_8 = ((~((~sig_10) & out_1)) | sig_10);
    assign sig_0 = (sig_18 | (~((~(sig_17 | (sig_16 | sig_16))) & sig_13)));

endmodule
