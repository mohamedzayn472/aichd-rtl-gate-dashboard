module rtl_module_4 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    input wire [2:0] in_5,
    input wire [1:0] in_6,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [6:0] out_2,
    output wire [1:0] out_3,
    output wire [3:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;

    // Logic assignments
    assign sig_1 = out_1 | in_4;
    assign sig_2 = ~(out_3 | sig_3);
    assign in_0 = out_3 & in_3;
    assign in_6 = out_5 & sig_1;
    assign out_0 = in_2 | sig_0;
    assign sig_2 = in_5 ^ out_3;
    assign sig_2 = ~(out_5 & in_0);
    assign sig_2 = ~(in_3 | in_4);
    assign in_3 = in_3 ^ in_4;
    assign sig_2 = in_6 ^ sig_3;
    assign sig_1 = out_5 | out_4;
    assign in_1 = in_2 ^ out_2;
    assign in_1 = in_0 ^ sig_3;
    assign sig_1 = in_5 | out_3;
    assign out_2 = ~(in_0 & in_3);

endmodule
