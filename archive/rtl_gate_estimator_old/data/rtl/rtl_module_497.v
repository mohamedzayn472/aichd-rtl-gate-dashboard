module rtl_module_497 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    output wire [3:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3,
    output wire [6:0] out_4,
    output wire [5:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;
    wire [5:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [3:0] sig_8;
    wire [4:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [2:0] sig_14;
    wire [5:0] sig_15;
    wire [6:0] sig_16;
    wire [7:0] sig_17;
    wire [4:0] sig_18;

    // Logic assignments
    assign sig_10 = sig_2 | sig_8;
    assign sig_18 = out_0 & sig_2;
    assign sig_1 = sig_0 | out_5;
    assign sig_6 = sig_1 ^ sig_18;
    assign sig_1 = sig_16 & out_5;
    assign sig_18 = sig_2 & in_0;
    assign in_0 = ~sig_13;
    assign sig_5 = out_2 & sig_10;
    assign sig_16 = ~(sig_4 | in_1);
    assign sig_9 = out_6 & sig_2;

endmodule
