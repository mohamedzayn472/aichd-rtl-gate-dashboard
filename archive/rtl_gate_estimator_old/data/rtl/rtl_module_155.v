module rtl_module_155 (
input wire [6:0] in_0,
    input wire [4:0] in_1,
    input wire [7:0] in_2,
    input wire [6:0] in_3,
    input wire [4:0] in_4,
    input wire [2:0] in_5,
    input wire [6:0] in_6,
    input wire [7:0] in_7,
    output wire [3:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;

    // Logic assignments
    assign sig_0 = sig_3 & sig_0;
    assign sig_0 = ~(in_0 | in_3);
    assign sig_2 = sig_0 ^ in_5;
    assign sig_6 = ~in_0;
    assign in_0 = ~sig_6;
    assign sig_3 = out_0 & in_6;
    assign in_1 = ~in_2;
    assign sig_2 = in_2 ^ sig_6;
    assign sig_0 = sig_0 | sig_0;
    assign in_4 = ~in_7;

endmodule
