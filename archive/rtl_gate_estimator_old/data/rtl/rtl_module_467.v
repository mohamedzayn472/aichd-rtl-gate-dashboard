module rtl_module_467 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [7:0] in_3,
    output wire [3:0] out_0,
    output wire [5:0] out_1,
    output wire [6:0] out_2,
    output wire [7:0] out_3,
    output wire [4:0] out_4,
    output wire [3:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [4:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [6:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;
    wire [4:0] sig_21;
    wire [7:0] sig_22;
    wire [1:0] sig_23;
    wire [5:0] sig_24;
    wire [5:0] sig_25;
    wire [3:0] sig_26;

    // Logic assignments
    assign sig_16 = in_2 ^ sig_4;
    assign in_1 = sig_19 ^ sig_11;
    assign out_0 = ~sig_6;
    assign in_0 = ~(out_4 & sig_13);
    assign out_2 = ~(sig_21 | sig_16);
    assign sig_12 = sig_17 | in_1;
    assign sig_24 = sig_18 | sig_13;
    assign in_2 = ~(sig_26 & out_2);
    assign sig_19 = sig_10 & out_3;
    assign sig_8 = out_3 | sig_19;
    assign out_6 = ~sig_8;
    assign sig_3 = sig_11 | sig_22;

endmodule
