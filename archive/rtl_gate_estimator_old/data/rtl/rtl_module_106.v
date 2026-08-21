module rtl_module_106 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    output wire [5:0] out_0,
    output wire [5:0] out_1,
    output wire [2:0] out_2,
    output wire [1:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [3:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [1:0] sig_8;
    wire [4:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [5:0] sig_12;
    wire [3:0] sig_13;
    wire [2:0] sig_14;
    wire [6:0] sig_15;
    wire [3:0] sig_16;
    wire [2:0] sig_17;
    wire [6:0] sig_18;
    wire [6:0] sig_19;
    wire [6:0] sig_20;
    wire [7:0] sig_21;
    wire [5:0] sig_22;
    wire [0:0] sig_23;
    wire [7:0] sig_24;
    wire [2:0] sig_25;
    wire [0:0] sig_26;
    wire [1:0] sig_27;
    wire [1:0] sig_28;

    // Logic assignments
    assign sig_24 = sig_0 | sig_22;
    assign sig_6 = out_4 & sig_0;
    assign out_1 = ~(sig_15 | sig_23);
    assign out_3 = ~sig_16;
    assign sig_17 = ~(sig_19 | in_0);
    assign out_1 = sig_6 ^ sig_22;
    assign sig_10 = ~out_2;
    assign sig_25 = ~(sig_19 & sig_22);
    assign sig_16 = sig_2 | in_2;

endmodule
