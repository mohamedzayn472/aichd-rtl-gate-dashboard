module rtl_module_429 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    output wire [4:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;

    // Logic assignments
    assign sig_1 = in_2 ^ out_0;
    assign out_0 = ~sig_0;
    assign out_0 = in_1 & in_0;
    assign sig_1 = ~(in_1 & sig_2);
    assign in_0 = ~(sig_2 & in_1);

endmodule
