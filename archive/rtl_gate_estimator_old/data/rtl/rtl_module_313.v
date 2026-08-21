module rtl_module_313 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2,
    output wire [0:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [3:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;
    wire [3:0] sig_14;
    wire [7:0] sig_15;
    wire [1:0] sig_16;
    wire [4:0] sig_17;
    wire [6:0] sig_18;
    wire [0:0] sig_19;
    wire [4:0] sig_20;
    wire [7:0] sig_21;
    wire [6:0] sig_22;
    wire [1:0] sig_23;
    wire [4:0] sig_24;
    wire [3:0] sig_25;
    wire [7:0] sig_26;
    wire [4:0] sig_27;
    wire [4:0] sig_28;
    wire [3:0] sig_29;

    // Logic assignments
    assign sig_22 = ~(sig_3 | out_2);
    assign sig_20 = ~sig_24;
    assign sig_24 = sig_27 ^ sig_6;
    assign sig_22 = ~(sig_12 | sig_23);
    assign sig_2 = ~(sig_21 & sig_17);
    assign sig_3 = ~(out_1 | sig_21);
    assign out_4 = ~(sig_0 & sig_1);
    assign sig_26 = sig_28 | sig_8;

endmodule
