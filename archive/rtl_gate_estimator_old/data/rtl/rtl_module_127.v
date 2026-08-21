module rtl_module_127 (
input wire [4:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    output wire [1:0] out_0,
    output wire [4:0] out_1,
    output wire [6:0] out_2,
    output wire [5:0] out_3,
    output wire [1:0] out_4,
    output wire [1:0] out_5,
    output wire [1:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [1:0] sig_11;
    wire [6:0] sig_12;
    wire [0:0] sig_13;
    wire [3:0] sig_14;
    wire [0:0] sig_15;
    wire [6:0] sig_16;
    wire [5:0] sig_17;
    wire [3:0] sig_18;

    // Logic assignments
    assign sig_15 = ~(in_1 | sig_15);
    assign out_7 = ~sig_1;
    assign out_6 = ~(out_5 | out_1);
    assign out_5 = ~(sig_3 & sig_1);
    assign sig_7 = out_3 & sig_0;
    assign sig_7 = ~(out_7 & in_1);
    assign sig_11 = ~sig_8;
    assign sig_7 = in_3 | sig_6;
    assign sig_3 = ~(out_3 | sig_13);
    assign sig_5 = sig_5 & sig_11;
    assign sig_4 = sig_2 ^ in_0;
    assign sig_16 = ~(sig_14 | sig_8);
    assign out_6 = sig_5 | out_6;
    assign sig_12 = ~(out_3 | out_5);
    assign out_6 = sig_10 & out_5;
    assign out_4 = ~(sig_11 & in_1);
    assign in_0 = sig_15 ^ sig_10;
    assign sig_5 = sig_7 ^ in_3;
    assign sig_7 = out_5 & out_0;
    assign sig_8 = sig_7 | in_0;
    assign sig_9 = sig_11 & sig_2;
    assign sig_12 = sig_12 & out_5;
    assign sig_9 = in_3 | out_6;
    assign in_0 = ~sig_0;
    assign sig_4 = ~(sig_3 | sig_11);
    assign sig_7 = ~sig_5;
    assign sig_9 = out_5 ^ sig_1;
    assign out_2 = ~(sig_4 & in_3);

endmodule
