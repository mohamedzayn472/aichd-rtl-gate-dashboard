module rtl_module_88 (
input wire [4:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] in_4,
    input wire [5:0] in_5,
    input wire [0:0] in_6,
    output wire [5:0] out_0,
    output wire [0:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3,
    output wire [5:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;

    // Logic assignments
    assign in_2 = ~(in_6 | in_4);
    assign sig_0 = in_3 ^ out_5;
    assign in_6 = ~(sig_0 | out_0);
    assign sig_1 = out_3 ^ sig_1;
    assign in_2 = out_1 & out_1;
    assign out_5 = ~in_3;
    assign sig_2 = ~out_4;
    assign out_1 = ~(in_2 & in_6);
    assign in_2 = ~in_2;
    assign in_5 = ~sig_2;
    assign in_3 = in_5 & sig_1;
    assign in_4 = out_5 & in_4;
    assign in_0 = sig_2 | out_3;
    assign in_4 = ~(out_5 | out_1);
    assign out_4 = ~in_0;
    assign in_6 = in_2 ^ in_0;
    assign out_0 = out_3 | out_0;

endmodule
