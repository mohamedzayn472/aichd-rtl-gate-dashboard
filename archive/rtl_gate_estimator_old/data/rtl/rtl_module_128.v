module rtl_module_128 (
input wire [2:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    input wire [5:0] in_4,
    output wire [3:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [4:0] out_3,
    output wire [0:0] out_4,
    output wire [2:0] out_5,
    output wire [6:0] out_6,
    output wire [6:0] out_7
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [7:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [6:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign out_0 = ~out_7;
    assign sig_7 = ~(in_4 | in_3);
    assign in_0 = in_4 & in_4;
    assign out_0 = in_0 ^ out_5;
    assign in_1 = out_5 | sig_5;
    assign out_3 = ~out_7;
    assign sig_8 = sig_10 & sig_4;
    assign sig_10 = in_2 ^ sig_8;
    assign out_3 = in_4 | out_7;
    assign sig_0 = ~(sig_2 & sig_3);
    assign sig_3 = out_6 & sig_2;
    assign sig_8 = ~(sig_1 | sig_10);
    assign in_3 = ~(out_6 | out_7);
    assign out_3 = ~(sig_0 & sig_1);
    assign out_4 = ~(out_4 & in_4);
    assign in_3 = in_4 | sig_7;
    assign sig_3 = sig_1 & in_4;
    assign in_0 = ~out_3;
    assign in_2 = in_1 | sig_7;

endmodule
