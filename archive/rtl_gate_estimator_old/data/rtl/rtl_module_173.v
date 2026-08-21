module rtl_module_173 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    input wire [7:0] in_3,
    input wire [5:0] in_4,
    input wire [7:0] in_5,
    input wire [4:0] in_6,
    output wire [4:0] out_0,
    output wire [0:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3,
    output wire [4:0] out_4,
    output wire [0:0] out_5,
    output wire [3:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [5:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [2:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [6:0] sig_12;
    wire [4:0] sig_13;
    wire [3:0] sig_14;
    wire [0:0] sig_15;

    // Logic assignments
    assign in_4 = sig_11 ^ in_0;
    assign sig_4 = out_0 ^ sig_9;
    assign out_4 = ~(sig_9 | sig_5);
    assign sig_12 = ~out_5;
    assign sig_4 = sig_13 | in_4;
    assign out_4 = ~(sig_9 & sig_3);
    assign sig_4 = ~(sig_5 & out_4);
    assign sig_13 = ~in_5;
    assign sig_8 = ~(in_5 & sig_8);
    assign in_0 = ~sig_14;
    assign sig_3 = sig_0 & sig_2;
    assign sig_0 = in_4 | sig_1;
    assign out_1 = ~(out_0 & out_2);
    assign sig_13 = in_6 & sig_4;
    assign sig_7 = ~sig_11;
    assign out_6 = ~(in_0 | out_3);
    assign out_4 = ~(out_3 | out_2);
    assign out_5 = ~(sig_0 & out_0);
    assign sig_4 = sig_14 | in_1;
    assign sig_13 = ~in_3;
    assign sig_9 = in_2 ^ sig_1;
    assign out_7 = ~(sig_10 & out_4);
    assign sig_10 = ~(out_4 | in_2);
    assign sig_7 = sig_11 & sig_9;
    assign sig_0 = sig_1 | out_2;
    assign in_5 = ~(sig_15 | out_6);
    assign out_4 = ~(sig_0 | sig_0);
    assign sig_15 = ~(sig_7 | in_5);
    assign sig_12 = sig_1 & sig_10;
    assign in_2 = out_0 ^ in_6;
    assign out_3 = ~(out_6 | in_2);
    assign sig_9 = sig_2 | in_1;
    assign sig_0 = sig_0 | sig_11;

endmodule
