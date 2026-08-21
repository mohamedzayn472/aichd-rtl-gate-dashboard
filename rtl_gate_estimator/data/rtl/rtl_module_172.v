module rtl_module_172 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    input wire [5:0] in_4,
    input wire [3:0] in_5,
    input wire [1:0] in_6,
    input wire [5:0] in_7,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [3:0] out_4,
    output wire [2:0] out_5,
    output wire [6:0] out_6,
    output wire [4:0] out_7
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;
    wire [3:0] sig_13;
    wire [0:0] sig_14;
    wire [1:0] sig_15;
    wire [6:0] sig_16;
    wire [5:0] sig_17;
    wire [4:0] sig_18;
    wire [4:0] sig_19;
    wire [7:0] sig_20;
    wire [6:0] sig_21;
    wire [1:0] sig_22;
    wire [5:0] sig_23;
    wire [0:0] sig_24;
    wire [4:0] sig_25;
    wire [4:0] sig_26;
    wire [1:0] sig_27;
    wire [5:0] sig_28;

    // Logic assignments
    assign out_0 = (sig_13 ^ ((~(~(sig_14 | ((sig_18 & (sig_13 | in_1)) ^ sig_15)))) ^ sig_5));
    assign out_1 = (sig_20 & (~(sig_0 & out_5)));
    assign out_2 = (~(~(~((~sig_23) | sig_9))));
    assign out_3 = (sig_10 | (sig_15 ^ (sig_10 ^ (~((sig_22 & ((out_0 | (~(sig_1 & sig_20))) | sig_7)) | in_1)))));
    assign out_4 = (~((~((~(sig_8 | (~sig_21))) | in_6)) & sig_0));
    assign out_5 = ((~(~(sig_2 | (~(sig_13 & (sig_15 | sig_13)))))) ^ sig_19);
    assign out_6 = (~(in_7 | (sig_10 & (~(sig_4 ^ ((sig_1 | sig_23) & sig_22))))));
    assign out_7 = (sig_10 ^ ((~out_3) & in_3));
    assign sig_21 = ((sig_15 ^ ((sig_27 ^ (~((sig_19 ^ sig_15) & in_7))) ^ out_5)) | out_5);
    assign sig_26 = (~(((~((~((sig_11 ^ in_0) & out_0)) & sig_24)) & in_3) & in_5));
    assign sig_23 = (~((~(~((in_5 ^ sig_2) & out_0))) | sig_6));
    assign out_6 = ((~((~(sig_25 | (sig_25 | (out_5 & out_6)))) & sig_26)) & out_6);
    assign sig_5 = ((sig_4 ^ sig_27) ^ in_5);
    assign sig_13 = (sig_4 & ((~sig_10) | in_3));
    assign sig_15 = (in_4 | (~(sig_2 & (~((~(~(sig_7 & (in_0 & sig_3)))) | out_3)))));
    assign sig_13 = ((sig_0 ^ (~(~(sig_9 & ((~sig_20) & sig_19))))) ^ sig_26);
    assign out_3 = (out_6 & (out_4 | (((~((~(~sig_10)) | sig_22)) | sig_18) ^ in_1)));
    assign out_2 = (~(~(sig_20 | (~(~(out_7 & (~(sig_12 | sig_25))))))));
    assign sig_19 = (~((~(((sig_16 ^ sig_25) | in_5) & sig_8)) & out_2));
    assign out_7 = (~(sig_27 | (out_0 ^ (sig_1 | (((sig_19 ^ sig_17) ^ sig_1) & sig_9)))));
    assign sig_24 = (~((~(~(~out_5))) & sig_25));
    assign sig_7 = (~(sig_27 & (((~((sig_16 | ((~(out_3 | out_4)) | out_4)) & sig_0)) | in_3) | sig_5)));
    assign sig_3 = (~((~(in_3 | (sig_23 & (sig_25 | (~(sig_23 & sig_18)))))) | sig_13));
    assign sig_24 = (sig_0 ^ (~((~(~(in_3 | (~(~(sig_27 | (~(sig_21 | sig_15)))))))) | sig_13)));

endmodule
