module rtl_module_136 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [3:0] in_5,
    output wire [0:0] out_0,
    output wire [4:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3,
    output wire [0:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;

    // Logic assignments
    assign out_1 = out_4 & sig_1;
    assign in_0 = in_5 & in_1;
    assign in_0 = in_5 ^ out_4;
    assign sig_0 = out_0 ^ in_3;
    assign out_4 = sig_0 ^ out_3;
    assign in_2 = out_3 ^ out_2;
    assign in_5 = sig_0 & out_3;
    assign in_1 = ~(out_0 & out_4);
    assign in_0 = out_1 | out_4;
    assign sig_1 = ~out_1;
    assign in_4 = in_2 & in_2;
    assign sig_1 = ~(in_1 | out_2);
    assign out_3 = in_3 & in_3;
    assign out_2 = ~(in_2 | out_4);
    assign in_2 = ~(out_0 | out_0);
    assign out_1 = ~(out_2 | out_0);
    assign sig_1 = out_4 ^ in_2;
    assign in_4 = in_5 ^ out_1;
    assign in_0 = ~out_3;
    assign sig_0 = ~(in_3 | in_3);
    assign out_1 = ~(in_1 & in_2);
    assign out_2 = ~(sig_1 & in_1);
    assign in_2 = out_4 & out_5;
    assign out_0 = out_5 ^ out_4;
    assign sig_1 = in_1 & sig_1;
    assign in_2 = in_4 ^ in_2;
    assign in_4 = out_1 & in_5;
    assign in_1 = in_1 ^ in_2;
    assign out_4 = ~(sig_1 | in_4);
    assign in_4 = ~out_4;

endmodule
