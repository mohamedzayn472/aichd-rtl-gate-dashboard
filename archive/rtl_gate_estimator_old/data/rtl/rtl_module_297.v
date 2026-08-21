module rtl_module_297 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    input wire [6:0] in_5,
    input wire [6:0] in_6,
    input wire [0:0] in_7,
    output wire [7:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;

    // Logic assignments
    assign in_2 = ~sig_3;
    assign in_1 = in_0 & sig_0;
    assign in_4 = sig_2 | sig_3;
    assign sig_4 = in_2 & sig_3;
    assign in_1 = ~(sig_3 & sig_0);
    assign in_2 = sig_2 | in_3;
    assign in_7 = ~(sig_1 & sig_4);
    assign in_0 = in_2 ^ in_6;
    assign in_0 = sig_0 | in_5;
    assign in_1 = ~(in_7 & in_4);

endmodule
