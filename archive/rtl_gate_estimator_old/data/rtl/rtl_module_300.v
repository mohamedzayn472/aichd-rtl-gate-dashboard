module rtl_module_300 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    input wire [6:0] in_2,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2,
    output wire [1:0] out_3,
    output wire [1:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [1:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;

    // Logic assignments
    assign out_4 = in_0 ^ sig_8;
    assign sig_0 = in_1 & sig_2;
    assign sig_2 = sig_8 & sig_6;
    assign out_1 = out_3 | sig_5;
    assign out_5 = out_3 & sig_2;
    assign in_0 = sig_0 | out_2;
    assign in_1 = ~sig_6;
    assign out_3 = ~(sig_13 & sig_10);
    assign sig_4 = sig_12 & sig_1;
    assign out_2 = out_3 & out_0;
    assign sig_9 = ~(in_1 & in_1);
    assign sig_2 = in_1 | out_2;
    assign sig_0 = sig_16 | sig_11;
    assign sig_15 = ~(sig_16 & sig_16);
    assign in_2 = in_2 & out_5;

endmodule
