module rtl_module_134 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [6:0] sig_7;
    wire [3:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [2:0] sig_11;
    wire [2:0] sig_12;
    wire [1:0] sig_13;
    wire [2:0] sig_14;
    wire [7:0] sig_15;
    wire [0:0] sig_16;
    wire [6:0] sig_17;
    wire [5:0] sig_18;
    wire [3:0] sig_19;
    wire [4:0] sig_20;
    wire [1:0] sig_21;
    wire [0:0] sig_22;
    wire [4:0] sig_23;
    wire [0:0] sig_24;

    // Logic assignments
    assign out_0 = ((sig_23 & (~((~((sig_8 | sig_15) | sig_10)) & sig_5))) & out_3);
    assign out_1 = (~((~((~((~(out_1 | (~(out_3 & sig_14)))) | sig_1)) & sig_6)) & sig_5));
    assign out_2 = (~((~((~((~(sig_4 | sig_4)) & in_0)) ^ out_4)) ^ sig_18));
    assign out_3 = (sig_21 & (~(sig_8 | sig_4)));
    assign out_4 = (sig_11 | (~((~((~sig_17) & sig_24)) | sig_2)));
    assign sig_22 = (~((~((~(out_0 & (~((sig_11 & (~(~(sig_8 & sig_1)))) & in_0)))) | sig_20)) & sig_8));
    assign sig_7 = (~(sig_19 | ((~(sig_8 & (((~(~(sig_15 & sig_19))) & sig_0) | sig_1))) | sig_16)));

endmodule
