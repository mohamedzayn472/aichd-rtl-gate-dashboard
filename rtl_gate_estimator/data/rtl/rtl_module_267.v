module rtl_module_267 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    input wire [0:0] in_4,
    input wire [7:0] in_5,
    input wire [4:0] in_6,
    output wire [5:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2,
    output wire [4:0] out_3,
    output wire [3:0] out_4,
    output wire [2:0] out_5,
    output wire [7:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [6:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [6:0] sig_10;
    wire [2:0] sig_11;
    wire [4:0] sig_12;
    wire [0:0] sig_13;
    wire [5:0] sig_14;
    wire [1:0] sig_15;
    wire [6:0] sig_16;
    wire [3:0] sig_17;
    wire [2:0] sig_18;
    wire [3:0] sig_19;
    wire [1:0] sig_20;
    wire [3:0] sig_21;
    wire [7:0] sig_22;
    wire [0:0] sig_23;
    wire [5:0] sig_24;
    wire [7:0] sig_25;
    wire [4:0] sig_26;

    // Logic assignments
    assign out_0 = (~(((~(~(sig_14 | out_4))) | sig_13) | out_0));
    assign out_1 = (sig_10 & (~((sig_24 ^ sig_26) | sig_0)));
    assign out_2 = (~((sig_4 ^ (~(in_6 & (sig_3 | out_5)))) & out_7));
    assign out_3 = (~((~(sig_0 | ((~(in_6 | sig_0)) ^ sig_26))) & in_3));
    assign out_4 = (sig_10 & (((~(out_3 | (sig_14 ^ sig_8))) | sig_25) | out_3));
    assign out_5 = ((sig_18 | (~((((~sig_7) ^ in_5) | sig_17) | sig_2))) & sig_4);
    assign out_6 = (~(sig_21 & (~(sig_24 & ((~(~((~((~in_5) | out_0)) & out_5))) ^ out_0)))));
    assign out_7 = (((~(in_0 | (~(sig_9 | sig_23)))) & out_1) & sig_26);
    assign sig_6 = (in_5 & (~(out_6 | (sig_12 & sig_25))));
    assign sig_19 = (in_5 | (in_1 & ((sig_13 ^ ((~(~(out_0 & sig_22))) ^ sig_11)) ^ sig_7)));
    assign sig_26 = (~(sig_17 | (~((~(sig_5 & (in_5 | (in_6 | (sig_16 ^ in_0))))) | sig_6))));
    assign sig_4 = (out_0 & (~(~((out_1 & (~sig_18)) | sig_19))));
    assign sig_8 = (~(((~(sig_9 & (~(sig_7 & (~(sig_18 | (~((in_4 ^ sig_26) & out_0)))))))) & in_3) | sig_21));
    assign sig_19 = (~(in_0 | (((~(sig_5 & sig_19)) | sig_18) & out_3)));
    assign sig_17 = (~(sig_26 | (((~(~((~(sig_3 | sig_5)) | out_5))) & sig_21) ^ sig_17)));
    assign sig_15 = (~(sig_3 | (in_5 & (~(sig_16 | (~(((~(sig_9 & (~(sig_15 & sig_6)))) ^ out_7) & sig_12)))))));

endmodule
