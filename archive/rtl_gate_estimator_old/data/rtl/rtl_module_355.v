module rtl_module_355 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [4:0] in_3,
    input wire [5:0] in_4,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [5:0] out_2,
    output wire [0:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;

    // Logic assignments
    assign out_3 = sig_3 ^ out_2;
    assign out_2 = ~(out_1 | in_0);
    assign in_0 = ~(in_3 & sig_3);
    assign sig_3 = ~(out_0 | out_1);
    assign out_2 = ~(in_0 | in_4);
    assign out_1 = in_1 ^ in_0;
    assign in_0 = in_4 ^ in_3;
    assign sig_0 = sig_1 & sig_1;
    assign sig_0 = ~(in_1 & out_1);
    assign out_4 = sig_0 | in_3;
    assign out_1 = ~(out_1 & in_1);
    assign sig_3 = out_1 ^ in_3;
    assign in_4 = ~sig_2;

endmodule
