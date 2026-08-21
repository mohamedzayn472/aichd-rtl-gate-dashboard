module rtl_module_187 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [5:0] in_3,
    input wire [2:0] in_4,
    input wire [2:0] in_5,
    output wire [1:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;

    // Logic assignments
    assign in_3 = in_5 ^ in_2;
    assign sig_7 = sig_1 | in_3;
    assign in_0 = ~in_5;
    assign out_0 = out_0 & sig_1;
    assign sig_5 = ~(sig_6 | sig_7);
    assign in_1 = ~(sig_7 & sig_2);
    assign sig_4 = sig_4 & in_5;

endmodule
