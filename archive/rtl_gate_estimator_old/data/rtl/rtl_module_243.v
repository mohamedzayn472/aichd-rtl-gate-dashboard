module rtl_module_243 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    output wire [7:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;

    // Logic assignments
    assign out_0 = ~(sig_0 | out_0);
    assign sig_1 = in_3 & in_1;
    assign in_2 = in_0 ^ sig_0;
    assign out_0 = ~(sig_4 & in_0);
    assign sig_0 = ~(out_0 & sig_3);

endmodule
