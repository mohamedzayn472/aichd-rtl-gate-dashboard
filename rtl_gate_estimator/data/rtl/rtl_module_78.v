module rtl_module_78 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    input wire [3:0] in_5,
    input wire [1:0] in_6,
    input wire [4:0] in_7,
    output wire [2:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [5:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [1:0] sig_14;
    wire [2:0] sig_15;
    wire [2:0] sig_16;
    wire [5:0] sig_17;
    wire [2:0] sig_18;
    wire [3:0] sig_19;

    // Logic assignments
    assign out_0 = ((out_4 ^ (~(~in_6))) & sig_17);
    assign out_1 = (~(out_3 & (~(sig_6 | (~in_4)))));
    assign out_2 = (~(sig_15 ^ (~(in_1 | (in_0 ^ (in_2 | in_2))))));
    assign out_3 = (~(((in_7 ^ (~(in_6 & sig_0))) & out_2) | sig_13));
    assign out_4 = ((~(sig_18 | ((sig_16 | (sig_0 ^ (~(sig_11 & (~(in_2 ^ in_6)))))) ^ sig_9))) & sig_15);
    assign sig_9 = (sig_5 ^ (~(((in_6 ^ ((sig_0 | in_5) ^ in_6)) & sig_13) & in_7)));
    assign sig_2 = (sig_17 & ((sig_11 ^ in_5) ^ sig_11));
    assign sig_1 = (~((~(in_6 | (sig_9 ^ in_3))) & in_0));
    assign sig_15 = (~(sig_17 ^ in_6));
    assign sig_18 = ((sig_9 & ((((~(in_6 | in_1)) | sig_0) | out_4) ^ sig_18)) | sig_4);
    assign sig_7 = (~(sig_4 | sig_16));
    assign sig_9 = (in_7 | (~(~((~sig_10) & sig_9))));
    assign sig_8 = (~(sig_7 & (~(((~(~(in_7 & (sig_0 | sig_8)))) & sig_7) & in_2))));
    assign out_3 = (~((~sig_0) | sig_5));
    assign sig_3 = (sig_16 & (~(sig_12 | (in_7 | (~(sig_1 | ((~(in_0 | sig_18)) & sig_5)))))));
    assign out_1 = (~(~((sig_4 | (~(sig_1 | sig_5))) | sig_7)));
    assign sig_8 = ((in_3 ^ (in_3 & (~(~sig_2)))) & sig_10);
    assign sig_3 = (((in_4 ^ (sig_19 | in_0)) ^ sig_14) | sig_6);
    assign out_2 = ((~(~(out_4 ^ ((~(in_1 | (~sig_0))) | out_3)))) ^ sig_1);
    assign out_3 = (~(((~((sig_11 & sig_9) | in_1)) ^ in_6) & sig_10));
    assign sig_7 = (~((~(sig_11 & (~((~((~(sig_18 & (sig_12 | (~(sig_1 | (~in_0)))))) & in_0)) & sig_3)))) | sig_19));
    assign sig_8 = (sig_7 | (~((~(~((~(sig_4 & (~(sig_14 & in_6)))) | sig_12))) | sig_13)));
    assign sig_15 = (~(~((in_6 & in_4) & sig_0)));

endmodule
