module rtl_module_7 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [1:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    output wire [3:0] out_0,
    output wire [3:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;

    // Logic assignments
    assign out_0 = ~(sig_1 | sig_2);
    assign in_3 = ~in_2;
    assign out_0 = ~(in_0 | out_1);
    assign out_1 = sig_1 & in_3;
    assign out_1 = out_0 | sig_3;
    assign in_0 = ~sig_3;
    assign out_2 = in_1 | sig_2;
    assign out_1 = sig_2 | sig_5;

endmodule
