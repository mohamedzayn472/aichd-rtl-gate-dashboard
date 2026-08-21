module rtl_module_356 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [0:0] in_2,
    input wire [1:0] in_3,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [6:0] out_2,
    output wire [4:0] out_3,
    output wire [7:0] out_4,
    output wire [1:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;

    // Logic assignments
    assign sig_3 = out_4 | out_2;
    assign sig_2 = out_1 & out_0;
    assign out_0 = ~(out_2 | out_3);
    assign sig_3 = out_3 | in_1;
    assign in_1 = ~in_1;
    assign out_0 = sig_2 ^ sig_2;
    assign sig_2 = ~(in_1 & in_1);
    assign out_1 = ~(sig_3 & out_5);
    assign sig_3 = ~sig_1;
    assign out_3 = ~(out_3 & out_0);

endmodule
