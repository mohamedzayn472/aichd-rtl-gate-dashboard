module rtl_module_147 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [1:0] sig_12;
    wire [4:0] sig_13;
    wire [5:0] sig_14;
    wire [7:0] sig_15;
    wire [7:0] sig_16;

    // Logic assignments
    assign sig_13 = ~(sig_6 | sig_9);
    assign in_0 = ~sig_9;
    assign sig_8 = sig_14 ^ out_2;
    assign sig_13 = ~(sig_1 & sig_6);
    assign sig_14 = ~(out_1 | in_0);
    assign sig_11 = sig_5 | out_2;

endmodule
