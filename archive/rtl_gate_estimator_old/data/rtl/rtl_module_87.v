module rtl_module_87 (
input wire [4:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    output wire [3:0] out_0,
    output wire [1:0] out_1,
    output wire [6:0] out_2,
    output wire [7:0] out_3,
    output wire [3:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [0:0] sig_10;
    wire [6:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;
    wire [7:0] sig_14;

    // Logic assignments
    assign sig_10 = sig_13 & sig_9;
    assign out_4 = ~sig_0;
    assign sig_12 = ~sig_4;
    assign sig_14 = in_0 & out_4;
    assign sig_10 = ~(sig_3 | sig_1);
    assign sig_6 = sig_4 ^ out_2;
    assign in_0 = sig_12 & out_3;
    assign sig_2 = out_4 ^ sig_11;
    assign out_5 = ~(out_0 & in_0);
    assign sig_11 = ~sig_1;
    assign sig_9 = ~(sig_2 | sig_8);
    assign sig_11 = ~(out_4 | out_2);
    assign out_2 = in_2 & sig_9;

endmodule
