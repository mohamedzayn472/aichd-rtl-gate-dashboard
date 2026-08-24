module rtl_module_370 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    output wire [3:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;
    wire [0:0] sig_14;
    wire [0:0] sig_15;
    wire [5:0] sig_16;
    wire [0:0] sig_17;
    wire [1:0] sig_18;

    // Logic assignments
    assign out_0 = (((~((~(in_0 & sig_12)) | sig_1)) ^ in_0) ^ sig_12);
    assign sig_10 = (sig_10 & (~((((sig_6 | ((sig_7 & sig_18) | sig_13)) ^ in_1) ^ sig_6) | sig_10)));
    assign sig_15 = ((in_0 & (~((sig_7 ^ (in_2 & (sig_12 | (~(out_0 & sig_18))))) | sig_5))) ^ in_0);
    assign sig_1 = (~(sig_18 | (((sig_14 ^ sig_9) & sig_2) ^ sig_0)));
    assign sig_12 = (~(sig_8 & (~(sig_2 & ((~(sig_14 | (~(sig_10 & sig_15)))) ^ sig_17)))));
    assign sig_11 = (sig_2 | (~((~(sig_5 & sig_0)) & in_3)));

endmodule
