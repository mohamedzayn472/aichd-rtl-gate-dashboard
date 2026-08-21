module rtl_module_307 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    input wire [4:0] in_3,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [0:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [4:0] sig_12;
    wire [1:0] sig_13;
    wire [5:0] sig_14;
    wire [4:0] sig_15;
    wire [0:0] sig_16;
    wire [0:0] sig_17;
    wire [4:0] sig_18;
    wire [6:0] sig_19;
    wire [5:0] sig_20;
    wire [6:0] sig_21;
    wire [0:0] sig_22;
    wire [4:0] sig_23;
    wire [6:0] sig_24;
    wire [5:0] sig_25;
    wire [4:0] sig_26;
    wire [4:0] sig_27;

    // Logic assignments
    assign out_0 = (~((~((~((~(~sig_19)) & sig_19)) | sig_0)) | sig_14));
    assign out_1 = (~((sig_7 ^ sig_4) | sig_14));
    assign out_2 = ((sig_26 & sig_23) ^ sig_13);
    assign out_3 = ((~(sig_2 | sig_25)) | sig_7);
    assign out_4 = (out_3 | (sig_1 ^ (sig_15 | (out_1 | in_1))));
    assign out_1 = (~((~((~((sig_11 ^ sig_3) | sig_5)) & sig_25)) | sig_27));
    assign sig_13 = (~(sig_19 | ((~((~(~sig_12)) & out_4)) & sig_19)));
    assign sig_10 = (~((((sig_16 ^ out_4) | sig_16) ^ sig_14) & in_3));
    assign out_3 = (sig_23 ^ (sig_21 | (out_2 & out_0)));
    assign sig_7 = (sig_17 ^ (~(sig_11 | (sig_20 | (out_4 ^ in_3)))));
    assign sig_3 = ((out_1 ^ in_1) ^ sig_23);

endmodule
