module rtl_module_373 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    output wire [7:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [7:0] out_3,
    output wire [4:0] out_4,
    output wire [0:0] out_5,
    output wire [2:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [6:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;
    wire [3:0] sig_12;
    wire [0:0] sig_13;
    wire [4:0] sig_14;

    // Logic assignments
    assign out_5 = sig_9 & sig_8;
    assign out_1 = sig_4 & sig_0;
    assign out_1 = ~(in_3 | sig_6);
    assign sig_4 = sig_11 | sig_2;
    assign sig_14 = sig_7 & sig_12;
    assign sig_8 = ~(sig_1 | sig_8);
    assign sig_10 = in_0 ^ out_6;
    assign sig_7 = sig_5 ^ sig_7;
    assign sig_13 = ~(sig_7 & sig_13);
    assign sig_10 = ~(in_0 & sig_1);
    assign sig_12 = ~sig_12;
    assign in_0 = in_0 | sig_3;
    assign sig_2 = ~(sig_10 & out_1);
    assign out_0 = ~(sig_2 & sig_7);
    assign sig_2 = ~(out_2 | out_6);
    assign out_4 = sig_6 & sig_13;

endmodule
