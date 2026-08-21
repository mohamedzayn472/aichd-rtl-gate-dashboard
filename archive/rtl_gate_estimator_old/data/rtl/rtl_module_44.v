module rtl_module_44 (
input wire [5:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [5:0] in_3,
    input wire [5:0] in_4,
    input wire [6:0] in_5,
    input wire [4:0] in_6,
    input wire [2:0] in_7,
    output wire [0:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [3:0] sig_7;
    wire [2:0] sig_8;
    wire [1:0] sig_9;
    wire [3:0] sig_10;
    wire [3:0] sig_11;
    wire [4:0] sig_12;
    wire [0:0] sig_13;
    wire [3:0] sig_14;
    wire [6:0] sig_15;
    wire [5:0] sig_16;
    wire [2:0] sig_17;
    wire [2:0] sig_18;
    wire [3:0] sig_19;
    wire [5:0] sig_20;
    wire [5:0] sig_21;
    wire [0:0] sig_22;
    wire [5:0] sig_23;
    wire [2:0] sig_24;

    // Logic assignments
    assign sig_11 = ~sig_3;
    assign in_2 = ~in_5;
    assign sig_6 = sig_6 & in_1;
    assign sig_22 = ~(in_0 & sig_13);
    assign sig_4 = ~(sig_0 & sig_13);
    assign sig_3 = ~(sig_12 | in_3);
    assign sig_1 = sig_1 & in_7;
    assign sig_15 = ~(in_4 & sig_15);
    assign sig_17 = ~(in_6 | sig_13);

endmodule
