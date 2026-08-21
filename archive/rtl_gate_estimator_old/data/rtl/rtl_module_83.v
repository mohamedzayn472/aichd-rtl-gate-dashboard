module rtl_module_83 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [3:0] out_2,
    output wire [6:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [1:0] sig_11;
    wire [4:0] sig_12;
    wire [7:0] sig_13;
    wire [0:0] sig_14;
    wire [7:0] sig_15;
    wire [2:0] sig_16;

    // Logic assignments
    assign out_2 = sig_10 & sig_6;
    assign out_3 = sig_8 | sig_10;
    assign in_0 = ~(sig_14 & out_3);
    assign sig_13 = ~sig_11;
    assign out_4 = ~sig_0;
    assign sig_5 = ~(in_0 & sig_10);
    assign sig_13 = ~(sig_1 | sig_16);

endmodule
