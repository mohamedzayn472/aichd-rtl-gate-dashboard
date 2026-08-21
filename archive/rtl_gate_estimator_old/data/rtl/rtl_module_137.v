module rtl_module_137 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [4:0] in_3,
    input wire [6:0] in_4,
    output wire [6:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [1:0] sig_3;
    wire [6:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;

    // Logic assignments
    assign sig_2 = in_0 & in_4;
    assign sig_4 = sig_7 & sig_0;
    assign sig_7 = ~(in_2 & sig_2);
    assign out_1 = ~in_2;
    assign out_1 = out_1 ^ out_1;
    assign in_2 = sig_0 & in_3;
    assign out_0 = ~sig_1;
    assign sig_5 = ~in_2;
    assign sig_5 = out_2 ^ sig_1;
    assign out_2 = ~(in_3 | sig_3);

endmodule
