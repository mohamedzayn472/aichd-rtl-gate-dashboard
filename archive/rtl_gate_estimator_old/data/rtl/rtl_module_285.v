module rtl_module_285 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [4:0] in_3,
    input wire [5:0] in_4,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;

    // Logic assignments
    assign in_4 = ~out_4;
    assign in_1 = ~(sig_3 | sig_0);
    assign out_4 = ~in_3;
    assign in_2 = sig_2 & out_3;
    assign in_0 = in_0 ^ in_0;
    assign in_0 = out_1 | sig_0;
    assign sig_1 = ~(out_3 | out_1);
    assign in_1 = ~out_0;
    assign sig_0 = ~(out_1 & in_3);
    assign sig_0 = sig_1 & in_4;
    assign sig_3 = in_4 & out_3;
    assign in_3 = ~(out_4 & sig_2);
    assign out_1 = ~(out_4 & in_4);
    assign sig_2 = ~out_0;
    assign sig_3 = out_3 & sig_2;

endmodule
