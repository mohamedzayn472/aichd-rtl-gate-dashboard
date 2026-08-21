module rtl_module_358 (
input wire [2:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    input wire [2:0] in_5,
    input wire [7:0] in_6,
    input wire [6:0] in_7,
    output wire [6:0] out_0,
    output wire [3:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;

    // Logic assignments
    assign in_5 = in_2 | sig_0;
    assign in_4 = in_6 ^ in_1;
    assign in_0 = out_3 | sig_0;
    assign in_3 = ~in_0;
    assign out_0 = ~(in_7 & in_2);
    assign in_0 = ~(out_1 | in_7);
    assign sig_0 = out_2 | in_2;
    assign out_3 = ~in_7;
    assign in_7 = ~out_2;
    assign in_1 = out_3 & sig_0;
    assign in_2 = in_5 ^ in_2;
    assign out_2 = ~(in_7 | out_1);

endmodule
