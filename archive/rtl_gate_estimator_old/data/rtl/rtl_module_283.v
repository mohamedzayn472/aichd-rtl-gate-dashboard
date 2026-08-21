module rtl_module_283 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [5:0] in_4,
    input wire [2:0] in_5,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3,
    output wire [5:0] out_4,
    output wire [2:0] out_5,
    output wire [6:0] out_6
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;

    // Logic assignments
    assign sig_6 = ~(out_2 & out_6);
    assign sig_0 = sig_9 | sig_7;
    assign in_2 = ~(sig_10 | sig_4);
    assign in_3 = ~(out_1 | sig_11);
    assign in_5 = ~sig_6;
    assign in_3 = ~sig_1;
    assign sig_11 = ~sig_3;
    assign in_0 = in_2 & sig_0;
    assign out_2 = sig_10 | out_6;
    assign sig_0 = sig_1 | out_3;
    assign in_4 = ~(in_3 & out_2);
    assign sig_10 = ~(out_4 & sig_1);
    assign in_5 = sig_8 ^ out_4;
    assign out_4 = ~(in_2 & sig_10);
    assign sig_4 = ~out_3;
    assign out_3 = ~(in_0 | sig_6);
    assign sig_9 = ~sig_6;
    assign out_1 = in_1 & sig_7;
    assign out_4 = ~(sig_5 | sig_12);
    assign in_0 = out_1 | sig_11;
    assign in_3 = ~(out_1 & sig_2);
    assign out_5 = in_2 | out_0;
    assign sig_8 = out_0 | sig_8;
    assign in_3 = ~sig_8;
    assign out_3 = ~(in_3 & sig_5);
    assign sig_7 = ~(sig_12 & sig_11);
    assign sig_1 = ~(sig_11 | out_3);
    assign sig_5 = out_2 ^ sig_9;
    assign out_4 = out_2 | in_0;

endmodule
