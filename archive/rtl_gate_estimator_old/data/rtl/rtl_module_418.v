module rtl_module_418 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    output wire [7:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;

    // Logic assignments
    assign in_3 = ~(in_3 & in_0);
    assign out_1 = ~in_1;
    assign in_1 = out_0 & in_1;
    assign sig_1 = ~(in_0 & in_0);
    assign in_0 = in_2 ^ in_1;
    assign in_4 = in_4 ^ in_1;
    assign sig_0 = sig_1 ^ out_0;
    assign in_3 = in_3 ^ in_3;

endmodule
