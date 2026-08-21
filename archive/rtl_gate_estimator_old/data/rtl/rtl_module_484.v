module rtl_module_484 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    input wire [7:0] in_5,
    input wire [6:0] in_6,
    input wire [5:0] in_7,
    output wire [0:0] out_0,
    output wire [4:0] out_1,
    output wire [6:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;

    // Logic assignments
    assign out_3 = ~(sig_4 | out_5);
    assign in_3 = sig_9 & sig_5;
    assign in_0 = ~(out_5 & in_3);
    assign out_1 = in_7 & sig_5;
    assign out_0 = out_2 & in_2;
    assign sig_0 = ~(out_0 & in_0);
    assign in_2 = ~(out_2 & sig_6);
    assign in_1 = in_6 & in_4;
    assign out_4 = ~sig_4;
    assign in_5 = ~(sig_8 | in_0);
    assign out_3 = out_3 ^ out_4;
    assign sig_6 = ~(sig_6 & sig_7);
    assign in_1 = ~in_2;
    assign out_3 = out_0 ^ sig_6;
    assign out_4 = sig_4 | sig_8;
    assign in_3 = in_3 | out_0;
    assign sig_5 = out_2 ^ out_2;
    assign out_1 = ~(sig_4 | sig_1);
    assign in_0 = ~sig_7;
    assign in_6 = ~out_2;
    assign out_1 = sig_3 ^ sig_4;
    assign out_0 = ~(out_3 | in_3);
    assign in_5 = ~(in_4 & in_1);
    assign in_3 = in_6 ^ sig_3;
    assign in_7 = ~out_5;
    assign out_5 = ~(out_3 & sig_6);
    assign out_5 = sig_8 ^ out_3;
    assign in_5 = ~(sig_3 & in_1);
    assign sig_7 = sig_3 & in_3;
    assign sig_6 = ~out_5;
    assign out_5 = sig_8 ^ sig_5;
    assign sig_7 = ~(in_6 | sig_3);
    assign in_3 = ~(sig_9 & in_4);
    assign in_3 = ~(sig_7 | out_5);
    assign sig_0 = ~sig_8;
    assign sig_1 = ~sig_7;
    assign out_1 = ~in_7;
    assign out_1 = out_1 ^ out_3;
    assign sig_2 = ~(out_2 | sig_9);
    assign in_6 = sig_9 ^ in_7;

endmodule
