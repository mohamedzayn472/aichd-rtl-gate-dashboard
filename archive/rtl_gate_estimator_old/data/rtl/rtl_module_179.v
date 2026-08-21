module rtl_module_179 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] in_4,
    input wire [1:0] in_5,
    input wire [6:0] in_6,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [6:0] sig_8;

    // Logic assignments
    assign in_1 = ~(sig_5 & in_1);
    assign in_5 = in_0 | in_4;
    assign in_1 = ~(sig_0 | in_5);
    assign sig_3 = ~in_0;
    assign sig_8 = ~(sig_8 & sig_4);
    assign out_2 = sig_5 | sig_7;
    assign sig_7 = out_3 | sig_1;
    assign sig_7 = ~(in_3 & sig_1);
    assign out_0 = ~(sig_3 | sig_3);
    assign sig_1 = sig_3 | sig_8;
    assign sig_7 = ~(in_3 & sig_3);
    assign sig_1 = ~(in_2 & sig_4);

endmodule
