module rtl_module_489 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    output wire [3:0] out_0,
    output wire [6:0] out_1,
    output wire [7:0] out_2,
    output wire [5:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [1:0] sig_3;
    wire [5:0] sig_4;

    // Logic assignments
    assign in_1 = ~(sig_4 | out_1);
    assign in_1 = in_1 & in_3;
    assign sig_4 = sig_1 & in_2;
    assign in_1 = sig_1 | sig_2;
    assign out_3 = ~(in_2 & in_3);
    assign in_2 = sig_4 ^ sig_0;
    assign in_0 = ~(out_2 | in_2);
    assign out_2 = out_2 | sig_0;
    assign in_2 = ~sig_2;

endmodule
