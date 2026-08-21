module rtl_module_473 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    output wire [2:0] out_0,
    output wire [3:0] out_1,
    output wire [2:0] out_2,
    output wire [6:0] out_3,
    output wire [4:0] out_4,
    output wire [2:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [5:0] sig_5;

    // Logic assignments
    assign out_4 = ~(out_0 & out_2);
    assign in_1 = ~(sig_3 | sig_3);
    assign in_0 = ~(sig_1 & in_0);
    assign in_1 = ~(out_1 & sig_4);
    assign out_3 = ~(out_5 | out_5);
    assign sig_3 = ~(out_5 & sig_2);
    assign out_3 = out_0 ^ sig_5;
    assign in_1 = ~out_2;
    assign in_0 = out_5 ^ out_3;

endmodule
