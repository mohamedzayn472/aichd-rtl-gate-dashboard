module rtl_module_479 (
input wire [5:0] in_0,
    input wire [7:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3,
    output wire [2:0] out_4,
    output wire [6:0] out_5,
    output wire [7:0] out_6,
    output wire [6:0] out_7
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [0:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [1:0] sig_11;
    wire [4:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [3:0] sig_15;
    wire [4:0] sig_16;
    wire [4:0] sig_17;
    wire [2:0] sig_18;
    wire [0:0] sig_19;
    wire [0:0] sig_20;
    wire [4:0] sig_21;
    wire [2:0] sig_22;
    wire [1:0] sig_23;
    wire [6:0] sig_24;
    wire [7:0] sig_25;

    // Logic assignments
    assign sig_19 = sig_4 & in_3;
    assign sig_16 = sig_1 | out_6;
    assign out_6 = out_3 & sig_18;
    assign in_1 = ~(sig_17 | sig_22);
    assign sig_2 = sig_11 ^ sig_10;
    assign out_5 = sig_16 ^ in_3;
    assign sig_1 = ~(sig_12 & sig_8);
    assign sig_7 = out_6 | out_2;
    assign sig_23 = ~sig_22;
    assign sig_9 = ~(sig_7 | out_1);
    assign out_7 = ~(in_3 | sig_13);
    assign sig_9 = sig_9 | out_5;
    assign in_0 = sig_21 & in_2;
    assign out_2 = ~(sig_0 | out_1);

endmodule
