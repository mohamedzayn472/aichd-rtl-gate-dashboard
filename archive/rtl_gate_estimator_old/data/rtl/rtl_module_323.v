module rtl_module_323 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    input wire [0:0] in_4,
    input wire [3:0] in_5,
    output wire [0:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;

    // Logic assignments
    assign in_2 = in_3 ^ out_0;
    assign out_0 = in_5 ^ in_3;
    assign in_2 = sig_0 & in_0;
    assign out_1 = sig_0 & in_0;
    assign out_0 = in_5 | out_0;
    assign in_5 = in_4 ^ in_4;
    assign in_2 = ~(in_0 | in_5);
    assign out_1 = in_4 ^ in_4;
    assign in_3 = out_1 ^ in_1;

endmodule
