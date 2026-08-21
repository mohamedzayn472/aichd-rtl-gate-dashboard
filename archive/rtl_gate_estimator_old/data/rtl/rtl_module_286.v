module rtl_module_286 (
input wire [7:0] in_0,
    input wire [2:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    input wire [0:0] in_4,
    input wire [1:0] in_5,
    input wire [3:0] in_6,
    output wire [6:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [3:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;

    // Logic assignments
    assign out_0 = ~sig_1;
    assign sig_3 = ~(sig_6 | sig_5);
    assign in_5 = sig_2 ^ in_1;
    assign in_4 = ~in_4;
    assign sig_3 = sig_4 & sig_6;
    assign in_4 = ~sig_3;
    assign in_5 = ~in_5;
    assign in_3 = in_0 | sig_3;

endmodule
