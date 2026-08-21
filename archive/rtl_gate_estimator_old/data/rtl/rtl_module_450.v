module rtl_module_450 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [5:0] in_3,
    input wire [4:0] in_4,
    output wire [2:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;

    // Logic assignments
    assign in_0 = ~in_0;
    assign sig_3 = ~sig_3;
    assign sig_5 = in_2 & sig_0;
    assign in_2 = sig_0 | in_1;
    assign in_1 = out_0 | sig_5;
    assign out_0 = ~(sig_3 | out_1);
    assign sig_3 = in_2 & out_0;
    assign sig_1 = sig_2 | sig_4;

endmodule
