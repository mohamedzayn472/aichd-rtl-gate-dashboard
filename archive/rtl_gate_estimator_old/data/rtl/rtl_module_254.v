module rtl_module_254 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    input wire [4:0] in_4,
    output wire [2:0] out_0,
    output wire [3:0] out_1,
    output wire [3:0] out_2,
    output wire [7:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;

    // Logic assignments
    assign in_1 = out_2 | out_2;
    assign sig_2 = ~(in_0 & sig_1);
    assign out_1 = in_3 | in_2;
    assign out_0 = ~(in_0 & out_3);
    assign out_0 = ~(in_3 & in_2);
    assign in_1 = in_0 | in_1;
    assign in_2 = in_3 & in_2;
    assign in_0 = in_1 & out_3;
    assign sig_1 = ~(sig_2 & sig_1);

endmodule
