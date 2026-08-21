module rtl_module_201 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [1:0] in_2,
    input wire [5:0] in_3,
    input wire [7:0] in_4,
    input wire [7:0] in_5,
    input wire [2:0] in_6,
    input wire [5:0] in_7,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [5:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;

    // Logic assignments
    assign in_4 = out_3 ^ out_1;
    assign out_1 = in_2 ^ sig_0;
    assign sig_2 = sig_3 | out_2;
    assign in_5 = ~in_1;
    assign in_4 = sig_2 ^ in_5;
    assign in_4 = ~(in_6 & out_0);
    assign out_1 = in_3 & in_1;
    assign in_3 = ~(in_0 & sig_0);
    assign in_5 = ~(in_7 & sig_2);
    assign in_3 = ~sig_2;
    assign sig_3 = ~(out_0 | out_0);
    assign sig_3 = out_1 | in_3;
    assign out_2 = in_4 | in_6;
    assign in_0 = ~(in_3 | out_3);

endmodule
