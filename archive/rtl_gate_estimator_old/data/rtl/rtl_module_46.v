module rtl_module_46 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    input wire [0:0] in_2,
    output wire [5:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2,
    output wire [1:0] out_3,
    output wire [5:0] out_4,
    output wire [2:0] out_5,
    output wire [6:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;

    // Logic assignments
    assign out_5 = sig_2 | in_1;
    assign out_2 = sig_3 & sig_3;
    assign out_0 = ~out_1;
    assign sig_4 = sig_0 ^ in_1;
    assign out_7 = ~sig_1;
    assign out_3 = in_0 & out_5;
    assign out_1 = out_7 & sig_3;
    assign in_0 = sig_3 & sig_2;
    assign out_1 = ~(in_2 | out_7);
    assign out_1 = out_4 & out_7;
    assign out_0 = ~in_2;
    assign out_4 = ~(sig_2 | out_3);
    assign out_3 = ~sig_2;

endmodule
