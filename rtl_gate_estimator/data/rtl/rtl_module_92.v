module rtl_module_92 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [3:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [7:0] in_5,
    input wire [6:0] in_6,
    output wire [4:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [6:0] sig_8;
    wire [0:0] sig_9;
    wire [7:0] sig_10;
    wire [6:0] sig_11;
    wire [5:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [3:0] sig_15;
    wire [0:0] sig_16;
    wire [6:0] sig_17;
    wire [3:0] sig_18;
    wire [7:0] sig_19;

    // Logic assignments
    assign out_0 = (in_1 ^ (sig_11 ^ (sig_9 | (~(sig_12 | ((sig_8 & (~(in_6 & in_5))) & in_2))))));
    assign sig_8 = (sig_8 ^ (~(sig_17 | (sig_1 ^ (sig_6 | (sig_15 & sig_3))))));
    assign sig_10 = (((~(~(sig_6 | (~(~(in_2 & (~(sig_16 & out_0)))))))) ^ sig_5) | in_0);
    assign sig_3 = (sig_13 | (~(in_1 & sig_6)));
    assign sig_15 = (~(sig_6 | (~((~sig_5) & in_0))));
    assign sig_8 = (sig_3 ^ (~(((~((~(in_6 | (sig_2 | in_4))) & sig_15)) ^ sig_12) & sig_7)));
    assign sig_4 = (~((~((~in_0) | sig_3)) & in_4));
    assign sig_0 = (~((sig_7 | ((~(in_3 | sig_10)) | in_3)) | in_2));

endmodule
