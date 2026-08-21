module rtl_module_359 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [3:0] in_2,
    input wire [1:0] in_3,
    output wire [5:0] out_0,
    output wire [4:0] out_1,
    output wire [6:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4,
    output wire [7:0] out_5,
    output wire [6:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [7:0] sig_11;
    wire [2:0] sig_12;
    wire [4:0] sig_13;
    wire [5:0] sig_14;
    wire [5:0] sig_15;
    wire [7:0] sig_16;
    wire [6:0] sig_17;
    wire [7:0] sig_18;
    wire [5:0] sig_19;
    wire [1:0] sig_20;
    wire [1:0] sig_21;
    wire [4:0] sig_22;
    wire [3:0] sig_23;
    wire [3:0] sig_24;
    wire [3:0] sig_25;
    wire [6:0] sig_26;
    wire [3:0] sig_27;
    wire [6:0] sig_28;

    // Logic assignments
    assign out_0 = (sig_0 ^ (~(sig_27 & (out_3 ^ out_3))));
    assign out_1 = (sig_5 ^ ((~(((~(out_6 | (~((~sig_1) & sig_12)))) ^ sig_25) & sig_15)) ^ sig_28));
    assign out_2 = ((((sig_4 ^ out_5) | sig_7) ^ sig_25) & sig_27);
    assign out_3 = (sig_25 & (sig_21 ^ (~(((~(sig_17 & (~sig_13))) & sig_10) | sig_23))));
    assign out_4 = (~(out_0 & (~(out_4 & ((~(out_6 | sig_13)) | sig_6)))));
    assign out_5 = (sig_11 ^ (out_2 ^ (~(sig_22 & in_3))));
    assign out_6 = (~(in_1 | (sig_22 | out_3)));
    assign out_7 = (~(~(out_2 | (sig_6 | ((~(out_1 ^ (out_4 & sig_24))) | sig_24)))));
    assign sig_26 = (sig_19 & (sig_25 & (~(sig_21 | out_3))));
    assign sig_19 = (~(~sig_12));
    assign out_5 = (~(out_1 & (~(sig_6 | ((~(~(sig_3 & (((sig_6 ^ sig_9) & sig_1) | sig_25)))) & sig_25)))));
    assign sig_16 = (~(~((~(out_2 | sig_26)) & sig_4)));
    assign out_3 = (out_2 & ((sig_19 & (~((~((out_3 & (~(sig_17 | out_1))) ^ sig_9)) | sig_15))) ^ out_7));
    assign out_0 = (sig_20 | (~(((out_7 & sig_26) ^ sig_9) | out_7)));

endmodule
