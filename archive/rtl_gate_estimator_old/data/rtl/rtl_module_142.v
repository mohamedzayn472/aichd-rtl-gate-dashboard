module rtl_module_142 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2,
    output wire [1:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [1:0] sig_3;

    // Logic assignments
    assign sig_1 = in_1 | sig_2;
    assign sig_1 = in_1 & sig_2;
    assign in_1 = ~(in_3 | out_1);
    assign sig_1 = ~sig_0;
    assign sig_2 = ~(out_3 | in_2);
    assign in_4 = in_0 | in_2;
    assign out_0 = ~(out_1 | out_0);
    assign in_1 = sig_0 & sig_0;
    assign out_0 = ~out_0;
    assign in_0 = ~(in_2 & sig_3);
    assign in_4 = ~(in_1 | in_3);

endmodule
