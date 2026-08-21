module rtl_module_117 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [3:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2,
    output wire [7:0] out_3,
    output wire [0:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [0:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [0:0] sig_11;

    // Logic assignments
    assign out_4 = ~(in_2 | sig_2);
    assign out_4 = sig_0 & sig_0;
    assign sig_8 = sig_11 & in_3;
    assign sig_5 = out_0 ^ out_3;
    assign out_2 = sig_1 | out_0;
    assign sig_8 = ~in_3;
    assign sig_1 = in_3 | sig_6;
    assign sig_0 = in_0 ^ sig_7;
    assign sig_5 = ~(in_0 | sig_7);
    assign sig_9 = sig_2 | in_2;
    assign sig_3 = ~(out_3 | out_2);
    assign in_1 = in_2 ^ sig_1;

endmodule
