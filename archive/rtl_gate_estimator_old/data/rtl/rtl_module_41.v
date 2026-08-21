module rtl_module_41 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2,
    output wire [3:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [1:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [3:0] sig_12;
    wire [7:0] sig_13;
    wire [4:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;

    // Logic assignments
    assign out_1 = sig_6 | out_2;
    assign sig_16 = ~(in_1 | sig_3);
    assign sig_1 = in_2 ^ out_2;
    assign sig_8 = sig_9 | sig_13;
    assign out_1 = sig_6 & sig_5;
    assign in_0 = sig_9 | sig_11;
    assign out_3 = ~(sig_14 & sig_4);
    assign sig_11 = sig_0 & sig_1;

endmodule
