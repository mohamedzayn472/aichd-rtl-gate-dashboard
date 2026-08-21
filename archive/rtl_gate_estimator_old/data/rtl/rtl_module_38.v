module rtl_module_38 (
input wire [4:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [6:0] in_3,
    input wire [4:0] in_4,
    input wire [0:0] in_5,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [1:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;

    // Logic assignments
    assign in_5 = in_2 ^ sig_0;
    assign sig_0 = ~(in_5 & out_0);
    assign in_2 = ~(out_4 | sig_1);
    assign in_0 = out_1 & in_1;
    assign in_4 = in_3 & in_0;
    assign out_4 = sig_0 & out_0;
    assign out_2 = out_3 ^ out_0;
    assign sig_0 = ~out_3;
    assign in_1 = ~out_2;
    assign out_0 = ~(out_1 & in_2);
    assign in_1 = in_4 ^ in_1;

endmodule
