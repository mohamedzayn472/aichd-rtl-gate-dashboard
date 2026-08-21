module rtl_module_171 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    output wire [2:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [1:0] sig_2;
    wire [3:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [3:0] sig_6;
    wire [0:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [3:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;
    wire [2:0] sig_13;
    wire [4:0] sig_14;
    wire [0:0] sig_15;
    wire [6:0] sig_16;
    wire [2:0] sig_17;
    wire [4:0] sig_18;
    wire [4:0] sig_19;
    wire [0:0] sig_20;
    wire [6:0] sig_21;
    wire [3:0] sig_22;
    wire [0:0] sig_23;
    wire [6:0] sig_24;

    // Logic assignments
    assign sig_23 = sig_14 ^ sig_0;
    assign sig_8 = in_1 | sig_14;
    assign in_4 = sig_12 | sig_23;
    assign sig_20 = ~(sig_15 & sig_18);
    assign in_0 = ~sig_15;
    assign sig_14 = sig_16 ^ sig_22;
    assign sig_23 = out_0 | sig_7;
    assign sig_4 = ~(sig_18 & sig_10);
    assign in_2 = ~in_5;

endmodule
