module rtl_module_493 (
input wire [7:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [4:0] in_3,
    input wire [3:0] in_4,
    output wire [2:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [4:0] sig_10;
    wire [0:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [7:0] sig_17;
    wire [7:0] sig_18;
    wire [7:0] sig_19;
    wire [2:0] sig_20;
    wire [6:0] sig_21;
    wire [6:0] sig_22;
    wire [2:0] sig_23;
    wire [4:0] sig_24;
    wire [5:0] sig_25;

    // Logic assignments
    assign out_0 = (~((sig_2 ^ in_2) | sig_23));
    assign sig_15 = (~((sig_7 | sig_18) & sig_10));
    assign sig_7 = (sig_25 | (sig_7 | (~((~(~sig_24)) & sig_15))));
    assign sig_19 = (sig_2 | (~((~(sig_16 | sig_18)) | in_2)));
    assign sig_23 = (sig_1 ^ ((~((~(sig_7 | (~(sig_7 | (~sig_5))))) & out_0)) ^ sig_10));
    assign sig_20 = (~(~(in_4 & (~in_0))));

endmodule
