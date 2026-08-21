module rtl_module_65 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [5:0] in_2,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2,
    output wire [6:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [3:0] sig_8;
    wire [1:0] sig_9;
    wire [4:0] sig_10;
    wire [3:0] sig_11;
    wire [6:0] sig_12;
    wire [6:0] sig_13;
    wire [3:0] sig_14;
    wire [2:0] sig_15;

    // Logic assignments
    assign in_0 = ~sig_2;
    assign sig_12 = ~sig_1;
    assign sig_13 = ~(sig_14 | out_4);
    assign sig_12 = sig_6 ^ sig_5;
    assign sig_15 = ~(in_1 & sig_9);
    assign out_3 = sig_2 & in_1;
    assign sig_5 = sig_12 | out_1;
    assign sig_11 = out_4 & sig_7;
    assign sig_8 = sig_8 ^ sig_14;

endmodule
