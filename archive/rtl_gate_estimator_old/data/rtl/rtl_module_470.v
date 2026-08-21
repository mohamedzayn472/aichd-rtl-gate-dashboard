module rtl_module_470 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [3:0] in_3,
    input wire [6:0] in_4,
    input wire [4:0] in_5,
    output wire [3:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;

    // Logic assignments
    assign in_4 = ~(in_4 | in_4);
    assign in_5 = in_3 & in_0;
    assign in_2 = in_0 | out_0;
    assign in_5 = ~(sig_0 | in_0);
    assign in_5 = ~(in_2 | sig_0);
    assign in_0 = ~(in_1 & in_5);
    assign in_3 = in_0 | in_2;
    assign sig_0 = ~(sig_0 & in_3);

endmodule
