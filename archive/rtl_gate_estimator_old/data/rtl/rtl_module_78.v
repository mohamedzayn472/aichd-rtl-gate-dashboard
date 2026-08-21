module rtl_module_78 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    output wire [7:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3,
    output wire [7:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [0:0] sig_11;
    wire [1:0] sig_12;

    // Logic assignments
    assign sig_10 = ~sig_1;
    assign sig_7 = out_2 ^ out_1;
    assign sig_12 = in_3 | sig_8;
    assign in_3 = ~(sig_6 | out_0);
    assign in_2 = ~(sig_5 | out_0);
    assign sig_8 = ~out_1;
    assign sig_3 = ~out_2;
    assign out_0 = sig_1 | sig_11;
    assign in_2 = ~sig_6;
    assign out_5 = out_1 | sig_9;
    assign out_1 = ~sig_6;
    assign out_5 = ~(sig_3 & sig_1);

endmodule
