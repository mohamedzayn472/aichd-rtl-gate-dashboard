module rtl_module_227 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    input wire [3:0] in_6,
    input wire [0:0] in_7,
    output wire [0:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [6:0] sig_7;
    wire [3:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [0:0] sig_11;
    wire [7:0] sig_12;
    wire [7:0] sig_13;
    wire [3:0] sig_14;
    wire [4:0] sig_15;
    wire [7:0] sig_16;
    wire [2:0] sig_17;
    wire [4:0] sig_18;
    wire [4:0] sig_19;
    wire [1:0] sig_20;
    wire [6:0] sig_21;
    wire [7:0] sig_22;
    wire [6:0] sig_23;
    wire [2:0] sig_24;
    wire [1:0] sig_25;
    wire [7:0] sig_26;
    wire [4:0] sig_27;

    // Logic assignments
    assign out_0 = (~((sig_7 | (~(sig_4 & sig_0))) ^ sig_25));
    assign sig_19 = (~(((~(((in_2 & (~(~(sig_27 | sig_2)))) ^ sig_14) & sig_1)) | sig_20) | sig_5));
    assign sig_27 = ((~(sig_17 & (sig_27 & sig_0))) ^ sig_6);
    assign sig_8 = ((~(sig_13 & (~(~(sig_17 | ((sig_3 ^ (~(~sig_13))) ^ sig_0)))))) & in_7);
    assign sig_5 = (~(in_4 ^ sig_21));
    assign sig_11 = (~(((~(sig_13 | (~((((in_1 ^ sig_21) ^ sig_12) ^ in_1) & sig_20)))) | in_2) | sig_18));
    assign sig_14 = ((sig_0 & (sig_10 | (~((~((in_7 | sig_3) | in_2)) & sig_7)))) ^ sig_15);
    assign sig_26 = (~((~(((~(in_6 & (~((sig_19 | (sig_7 ^ sig_11)) | sig_14)))) & in_6) & in_6)) & in_6));
    assign sig_24 = (sig_10 | (~(sig_12 & (~(sig_7 | (~(sig_24 | (~(sig_2 | in_5)))))))));
    assign out_0 = (in_0 & (~((sig_16 & (in_6 | (~(~(sig_20 & sig_0))))) | sig_13)));

endmodule
