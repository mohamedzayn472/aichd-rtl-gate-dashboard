module rtl_module_340 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    input wire [1:0] in_3,
    output wire [4:0] out_0,
    output wire [7:0] out_1,
    output wire [5:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;

    // Logic assignments
    assign sig_2 = sig_2 ^ out_3;
    assign out_2 = in_3 ^ sig_1;
    assign out_0 = out_1 | out_3;
    assign out_3 = ~(sig_2 | in_2);
    assign out_1 = ~(out_0 | sig_1);
    assign in_3 = ~(in_2 | sig_0);
    assign out_3 = sig_2 | sig_3;
    assign in_2 = ~(sig_0 & in_1);
    assign sig_3 = in_1 ^ in_2;

endmodule
