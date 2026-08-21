module rtl_module_226 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [6:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [3:0] sig_6;

    // Logic assignments
    assign sig_0 = sig_4 ^ sig_1;
    assign in_0 = ~(in_2 | out_3);
    assign sig_4 = ~out_1;
    assign sig_4 = in_0 ^ sig_2;
    assign in_3 = ~(sig_6 | sig_2);
    assign sig_0 = ~(sig_3 & sig_5);
    assign in_4 = ~(out_2 | in_1);
    assign sig_5 = ~(in_1 | sig_4);
    assign in_1 = ~(sig_4 | sig_2);
    assign sig_1 = sig_1 | sig_6;
    assign sig_3 = sig_5 | in_3;

endmodule
