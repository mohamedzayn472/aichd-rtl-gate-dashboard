module rtl_module_140 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    input wire [1:0] in_4,
    input wire [7:0] in_5,
    input wire [1:0] in_6,
    input wire [7:0] in_7,
    output wire [0:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [1:0] sig_5;

    // Logic assignments
    assign sig_3 = out_0 & sig_5;
    assign sig_4 = ~(in_0 | sig_3);
    assign sig_1 = sig_0 | sig_0;
    assign sig_5 = in_7 ^ in_0;
    assign in_1 = ~in_0;
    assign in_4 = sig_3 & sig_2;
    assign in_5 = sig_5 ^ in_7;
    assign sig_4 = ~(in_6 & sig_4);
    assign sig_5 = in_4 & sig_4;
    assign in_5 = ~(sig_4 | sig_2);
    assign in_5 = ~(sig_5 & in_7);

endmodule
