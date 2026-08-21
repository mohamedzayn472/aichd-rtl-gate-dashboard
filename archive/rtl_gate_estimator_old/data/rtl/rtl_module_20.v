module rtl_module_20 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [6:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [7:0] sig_4;

    // Logic assignments
    assign sig_0 = ~(sig_4 | out_1);
    assign sig_4 = sig_0 ^ out_0;
    assign sig_1 = sig_4 | sig_0;
    assign out_2 = out_1 ^ sig_4;
    assign sig_1 = ~sig_3;
    assign out_0 = ~(sig_3 & in_2);
    assign out_1 = in_2 | sig_1;

endmodule
