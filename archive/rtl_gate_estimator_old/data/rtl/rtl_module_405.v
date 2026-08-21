module rtl_module_405 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    output wire [5:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;

    // Logic assignments
    assign sig_4 = ~out_2;
    assign sig_4 = ~sig_4;
    assign sig_3 = ~(sig_4 | sig_2);
    assign sig_6 = in_2 & in_0;
    assign out_0 = sig_5 | in_2;
    assign in_1 = in_3 | out_3;
    assign out_3 = sig_3 & in_0;
    assign sig_5 = out_0 & out_3;

endmodule
