module rtl_module_13 (
input wire [7:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    input wire [6:0] in_3,
    input wire [4:0] in_4,
    input wire [7:0] in_5,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [6:0] out_2
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;

    // Logic assignments
    assign in_0 = out_2 ^ sig_4;
    assign in_4 = ~in_0;
    assign out_2 = ~(sig_4 & out_1);
    assign in_0 = ~(sig_3 | out_0);
    assign out_2 = ~in_4;
    assign sig_3 = out_1 | in_5;
    assign sig_4 = in_3 | sig_3;
    assign sig_4 = out_1 ^ out_0;
    assign sig_4 = ~(out_2 | in_2);
    assign in_1 = ~(sig_4 | sig_4);
    assign in_4 = out_1 & sig_1;

endmodule
