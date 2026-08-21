module rtl_module_210 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [7:0] sig_1;
    wire [1:0] sig_2;

    // Logic assignments
    assign out_0 = out_2 ^ sig_2;
    assign out_0 = ~(out_0 & sig_0);
    assign sig_2 = ~(sig_1 | sig_1);
    assign out_1 = out_2 & sig_2;
    assign sig_2 = out_2 ^ out_1;
    assign sig_2 = sig_2 & in_1;

endmodule
