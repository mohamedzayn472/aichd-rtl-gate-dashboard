module rtl_module_440 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [7:0] in_2,
    input wire [3:0] in_3,
    output wire [2:0] out_0,
    output wire [2:0] out_1,
    output wire [5:0] out_2,
    output wire [7:0] out_3,
    output wire [0:0] out_4,
    output wire [4:0] out_5,
    output wire [2:0] out_6,
    output wire [4:0] out_7
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [4:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [1:0] sig_12;
    wire [1:0] sig_13;

    // Logic assignments
    assign in_2 = ~(sig_7 & out_7);
    assign sig_9 = ~(out_2 & out_7);
    assign sig_8 = out_2 ^ sig_10;
    assign sig_12 = sig_8 | out_7;
    assign sig_8 = out_1 ^ in_0;
    assign sig_4 = sig_12 ^ out_3;
    assign out_5 = out_3 ^ sig_9;
    assign out_5 = ~sig_3;
    assign sig_1 = out_4 | sig_1;
    assign in_2 = ~(out_4 & sig_1);
    assign sig_13 = out_1 ^ sig_6;
    assign sig_13 = sig_10 ^ out_4;
    assign in_0 = ~in_0;
    assign sig_9 = ~(sig_1 | sig_3);
    assign out_1 = ~(sig_4 | sig_6);
    assign out_0 = ~(out_3 & sig_4);

endmodule
