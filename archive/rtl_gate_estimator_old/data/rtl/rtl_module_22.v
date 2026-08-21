module rtl_module_22 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    input wire [0:0] in_3,
    input wire [5:0] in_4,
    output wire [1:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3,
    output wire [5:0] out_4,
    output wire [2:0] out_5,
    output wire [0:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;

    // Logic assignments
    assign sig_0 = ~(in_4 | in_2);
    assign out_6 = ~(in_1 | out_1);
    assign in_1 = sig_1 | in_1;
    assign out_1 = out_4 ^ out_7;
    assign in_1 = sig_1 ^ out_1;
    assign in_1 = out_2 ^ out_0;
    assign out_3 = out_5 & out_4;
    assign out_6 = ~(out_4 | out_2);
    assign out_7 = out_7 | out_3;
    assign out_0 = ~(in_2 & out_5);
    assign out_5 = sig_0 & out_1;
    assign in_3 = in_2 ^ out_2;
    assign out_1 = ~(out_1 | out_6);
    assign out_5 = ~(sig_0 & out_6);
    assign out_6 = in_1 ^ out_3;
    assign out_5 = ~(out_0 & in_1);
    assign out_4 = out_3 & sig_0;
    assign in_4 = out_6 & in_1;
    assign in_2 = sig_2 | out_3;
    assign out_4 = in_1 ^ in_4;
    assign out_6 = ~(out_3 | out_3);
    assign in_2 = ~in_4;
    assign out_3 = ~(out_4 & out_2);
    assign out_0 = ~(sig_2 | in_3);
    assign sig_0 = out_7 & out_4;
    assign in_3 = ~(out_0 & out_0);
    assign out_6 = ~(sig_1 | out_1);
    assign out_7 = ~(sig_1 | in_3);

endmodule
