module rtl_module_200 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    output wire [1:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [3:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [4:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [7:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [2:0] sig_17;
    wire [0:0] sig_18;
    wire [1:0] sig_19;
    wire [1:0] sig_20;
    wire [3:0] sig_21;
    wire [7:0] sig_22;
    wire [4:0] sig_23;
    wire [4:0] sig_24;
    wire [0:0] sig_25;
    wire [7:0] sig_26;
    wire [1:0] sig_27;
    wire [2:0] sig_28;

    // Logic assignments
    assign sig_22 = ~(in_1 | sig_0);
    assign sig_25 = ~sig_27;
    assign sig_9 = ~in_0;
    assign sig_0 = ~(sig_2 & sig_15);
    assign sig_16 = ~(sig_28 | sig_10);
    assign in_1 = sig_15 ^ sig_10;
    assign sig_26 = in_0 | sig_0;
    assign sig_25 = ~(out_4 & out_0);

endmodule
