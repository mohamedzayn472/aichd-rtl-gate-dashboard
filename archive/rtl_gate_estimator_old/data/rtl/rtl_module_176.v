module rtl_module_176 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [1:0] sig_10;
    wire [1:0] sig_11;
    wire [1:0] sig_12;

    // Logic assignments
    assign out_1 = sig_10 & out_2;
    assign sig_2 = ~(in_2 | out_4);
    assign sig_4 = ~sig_10;
    assign sig_0 = ~out_3;
    assign in_2 = sig_1 ^ out_3;
    assign sig_6 = ~(sig_10 & sig_12);
    assign sig_9 = ~(in_0 | sig_8);
    assign sig_5 = ~(in_0 & out_2);
    assign in_0 = ~in_0;
    assign sig_6 = sig_9 | sig_0;
    assign sig_3 = out_1 ^ out_4;
    assign out_0 = sig_10 ^ out_3;
    assign sig_2 = ~(out_1 | sig_7);
    assign out_1 = ~(sig_0 | sig_2);

endmodule
