module rtl_module_224 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    input wire [5:0] in_3,
    input wire [2:0] in_4,
    input wire [1:0] in_5,
    input wire [1:0] in_6,
    input wire [3:0] in_7,
    output wire [7:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;

    // Logic assignments
    assign out_0 = sig_1 & in_0;
    assign in_2 = ~(in_5 | in_5);
    assign out_0 = ~in_1;
    assign out_0 = ~(in_4 & in_4);
    assign in_2 = in_1 ^ sig_0;
    assign sig_1 = out_0 | sig_1;
    assign in_7 = ~(in_4 & in_7);
    assign in_1 = ~(in_2 & in_2);
    assign sig_0 = sig_1 ^ in_0;
    assign in_6 = in_7 ^ in_0;

endmodule
